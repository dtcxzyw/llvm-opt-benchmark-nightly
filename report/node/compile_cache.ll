inline.NumInlined: 2853
inline.NumDeleted: 975
begin_hunk_0_@_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_insert_uniqueIRS4_RKSE_NSG_10_AllocNodeISaINSG_10_Hash_nodeISE_Lb0EEEEEEEES3_INSG_14_Node_iteratorISE_Lb0ELb0EEEbEOT_OT0_RKT1_:bb.a
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb0EEEm.exit

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  store ptr %i.bb, ptr %i.aj, align 8
  store ptr %i.aj, ptr %i.ba, align 8
  %.not11.i.i = icmp eq ptr %i.bb, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.af, align 8
  %i.be = load i32, ptr %i.bc, align 4
  %i.bf = sext i32 %i.be to i64
  %i.bg = urem i64 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bg
  store ptr %i.aj, ptr %i.bh, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = phi ptr [ %.pre, %bb.m ], [ %i.av, %bb.l ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0.i17
  store ptr %i.ba, ptr %i.bj, align 8
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb0EEEm.exit

_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb0EEEm.exit: ; preds = %bb.k, %bb.n
  %i.bk = load i64, ptr %i.a, align 8
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.a, align 8
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.g, %bb.d, %bb.f, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb0EEEm.exit
  %.sroa.028.1 = phi ptr [ %i.aj, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb0EEEm.exit ], [ %.sroa.025.0, %bb.d ], [ %i.u, %bb.f ], [ %i.z, %bb.g ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb0EEEm.exit ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.028.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8
  store ptr %i.p, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.n, align 8
  %i.q = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8
  store ptr %i.s, ptr %.031, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %.031, ptr %i.t, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !213

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #27
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS7_EEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #18 comdat {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS7_EEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  %i.a = load ptr, ptr %6, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

declare void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS7_EEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcS7_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcS7_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not86 = icmp eq i64 %1, 0
  br i1 %.not86, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %21 = ptrtoint ptr %i.c to i64
  %22 = ptrtoint ptr %2 to i64
  %23 = sub i64 %21, %22                          ; 5 uses
  %.not = icmp eq i64 %23, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcS7_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %23)
  store i64 %.sroa.speculated.i, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.e = add nuw i64 %23, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.087 = phi i64 [ %i.g, %.critedge2 ], [ %23, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !215

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %23, %bb.b ], [ %.087, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.n
    i8 120, label %bb.o
    i8 88, label %bb.p
    i8 112, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !216
  %i.n = load ptr, ptr %8, align 8, !noalias !216
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !216
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcS7_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.u = load ptr, ptr %12, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.z = load ptr, ptr %11, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.u

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa128 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !219
  %i.ae = load ptr, ptr %8, align 8, !noalias !219
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !219
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.ah = icmp ugt i64 %.lcssa128, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa128, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa128
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa128
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcS7_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %i.ak = load ptr, ptr %14, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.ap = load ptr, ptr %13, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.u

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.au, ptr %15, align 8, !alias.scope !228
  %i.av = load ptr, ptr %3, align 8, !noalias !228 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !228 ; 8 uses
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.az = icmp slt i64 %i.ax, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ba = add nuw i64 %i.ax, 1                    ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.j
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #26 ; 2 uses
  store ptr %i.bc, ptr %15, align 8, !alias.scope !228
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !228
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.g
  %i.bd = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.au, %bb.g ] ; 3 uses
  switch i64 %i.ax, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load i8, ptr %i.av, align 1
  store i8 %i.be, ptr %i.bd, align 1
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.l, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ax, ptr %i.bf, align 8, !alias.scope !228
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
end_hunk_0
begin_hunk_1_@_ZN4node12ToBaseStringILj4ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_:bb.a
bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !alias.scope !245
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = icmp ugt i64 %i.c, 15
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.c, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.c, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %.thread7.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

.thread7.i.i:                                     ; preds = %bb.d
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #26 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  store i64 %i.c, ptr %i.e, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  switch i64 %i.c, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.e, align 8
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.f, %.thread7.i.i
  %i.k = phi ptr [ %i.j, %.thread7.i.i ], [ %i.e, %bb.f ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.c, i1 false)
  br label %.lr.ph.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.m, align 1
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.h
  %.ph = phi ptr [ %i.k, %bb.h ], [ %i.e, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.c
  store i8 0, ptr %i.o, align 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4node7ToUpperEc.exit
  %.013 = phi i64 [ %i.ae, %_ZN4node7ToUpperEc.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.06.012 = phi ptr [ %i.ad, %_ZN4node7ToUpperEc.exit ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.p = load i8, ptr %.sroa.06.012, align 1
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #24
  %i.r = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #24
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.not.i.i.i, label %bb.i, label %_ZN4node7ToUpperEc.exit

bb.i:                                             ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZN4node7ToUpperEc.exit:                          ; preds = %.lr.ph
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext %i.p) #24, !inline_history !246
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013
  store i8 %i.aa, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 1 ; 2 uses
  %i.ae = add nuw i64 %.013, 1
  %i.af = icmp eq ptr %i.ad, %i.d
  br i1 %i.af, label %._crit_edge, label %.lr.ph, !llvm.loop !247

._crit_edge:                                      ; preds = %_ZN4node7ToUpperEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = sub i64 9223372036854775807, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.f = add i64 %i.c, %i.a                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.j = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not.i.i = icmp ugt i64 %i.f, %i.l
  br i1 %.not.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.a, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c ; 2 uses
  %cond.i.i = icmp eq i64 %i.a, 1
  br i1 %cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %1, align 1
  store i8 %i.n, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.f, ptr %i.b, align 8
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 0, ptr %i.p, align 1
  ret ptr %0
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_St17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = alloca [20 x i8], align 16               ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not79 = icmp eq i64 %1, 0
  br i1 %.not79, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.d = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %20 = ptrtoint ptr %i.d to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_St17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.f = add nuw i64 %22, 1                       ; 3 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.h = phi i64 [ %i.k, %.critedge2 ], [ %i.f, %bb.b ] ; 4 uses
  %.080 = phi i64 [ %i.h, %.critedge2 ], [ %22, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !248

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %22, %bb.b ], [ %.080, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.f, %bb.b ], [ %i.h, %.lr.ph ] ; 4 uses
  %i.l = icmp eq i64 %.lcssa, %1
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.n = load i8, ptr %i.m, align 1
  switch i8 %i.n, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !249
  %i.o = load ptr, ptr %7, align 8, !noalias !249
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !249
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.r = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.r, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.t = sub nuw i64 %1, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  call void @_ZN4node11SPrintFImplIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_St17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.t, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.v = load ptr, ptr %11, align 8               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.aa = load ptr, ptr %10, align 8              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.q

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa111 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !252
  %i.af = load ptr, ptr %7, align 8, !noalias !252
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !252
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ai = icmp ugt i64 %.lcssa111, %1
  br i1 %i.ai, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit37

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa111, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit37: ; preds = %.thread
  %i.aj = sub nuw i64 %1, %.lcssa111
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa111
  call void @_ZN4node11SPrintFImplIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_St17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.aj, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.al = load ptr, ptr %13, align 8              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit37
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.aq = load ptr, ptr %12, align 8              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.q

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i.i, ptr @.str.83, ptr %i.av ; 2 uses
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #24
  store i64 %i.ax, ptr %14, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  %i.bb = select i1 %.not.i.i.i, ptr @.str.83, ptr %i.ba ; 2 uses
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #24
  store i64 %i.bc, ptr %15, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bf, null
  %i.bg = select i1 %.not.i.i.i44, ptr @.str.83, ptr %i.bf ; 2 uses
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #24
  store i64 %i.bh, ptr %16, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.bk, null
  %i.bl = select i1 %.not.i.i.i47, ptr @.str.83, ptr %i.bk ; 2 uses
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #24
  store i64 %i.bm, ptr %18, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %18)
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bp = load ptr, ptr %17, align 8              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
end_hunk_1
begin_hunk_2_@_ZN4node11SPrintFImplIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_St17basic_string_viewIcS6_EOT_DpOT0_:bb.a
; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = sub i64 9223372036854775807, %i.b
  %i.d = icmp ult i64 %i.c, %.sroa.0.0.copyload.i
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.e = add i64 %i.b, %.sroa.0.0.copyload.i      ; 3 uses
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.j = load i64, ptr %i.g, align 8
  %i.k = select i1 %i.h, i64 15, i64 %i.j
  %.not.i.i.i = icmp ugt i64 %i.e, %i.k
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load i8, ptr %.sroa.4.0.copyload.i, align 1
  store i8 %i.m, ptr %i.l, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %.sroa.4.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef %.sroa.4.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.e, ptr %i.a, align 8
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  store i8 0, ptr %i.o, align 1
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.e, ptr %0, align 8
  %i.f = icmp ugt i64 %i.c, 15
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.c, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.c, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %.thread7.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

.thread7.i.i:                                     ; preds = %bb.d
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #26 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  store i64 %i.c, ptr %i.e, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  switch i64 %i.c, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.e, align 8
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.f, %.thread7.i.i
  %i.k = phi ptr [ %i.j, %.thread7.i.i ], [ %i.e, %bb.f ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.c, i1 false)
  br label %.lr.ph.preheader

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  store i8 0, ptr %i.m, align 1
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g, %bb.h
  %.ph = phi ptr [ %i.k, %bb.h ], [ %i.e, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.c
  store i8 0, ptr %i.o, align 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4node7ToUpperEc.exit
  %.013 = phi i64 [ %i.ae, %_ZN4node7ToUpperEc.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.01012 = phi ptr [ %i.ad, %_ZN4node7ToUpperEc.exit ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.p = load i8, ptr %.01012, align 1
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #24
  %i.r = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #24
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.not.i.i.i, label %bb.i, label %_ZN4node7ToUpperEc.exit

bb.i:                                             ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZN4node7ToUpperEc.exit:                          ; preds = %.lr.ph
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext %i.p) #24, !inline_history !246
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013
  store i8 %i.aa, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.01012, i64 1 ; 2 uses
  %i.ae = add nuw i64 %.013, 1
  %.not = icmp eq ptr %i.ad, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !258

._crit_edge:                                      ; preds = %_ZN4node7ToUpperEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not80 = icmp eq i64 %1, 0
  br i1 %.not80, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.e = add nuw i64 %21, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.081 = phi i64 [ %i.g, %.critedge2 ], [ %21, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !259

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.081, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.n
    i8 120, label %bb.o
    i8 88, label %bb.p
    i8 112, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !260
  %i.n = load ptr, ptr %6, align 8, !noalias !260
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !260
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %3) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.u

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa122 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !263
  %i.ae = load ptr, ptr %6, align 8, !noalias !263
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !263
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !263
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ah = icmp ugt i64 %.lcssa122, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa122, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa122
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa122
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %3) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.u

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.au, ptr %13, align 8, !alias.scope !272
  %i.av = load ptr, ptr %3, align 8, !noalias !272 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !272 ; 8 uses
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.az = icmp slt i64 %i.ax, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ba = add nuw i64 %i.ax, 1                    ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.j
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #26 ; 2 uses
  store ptr %i.bc, ptr %13, align 8, !alias.scope !272
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !272
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.g
  %i.bd = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.au, %bb.g ] ; 3 uses
  switch i64 %i.ax, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load i8, ptr %i.av, align 1
  store i8 %i.be, ptr %i.bd, align 1
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.l, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ax, ptr %i.bf, align 8, !alias.scope !272
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
  store i8 0, ptr %i.bg, align 1
  %i.bh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.bi = load ptr, ptr %13, align 8              ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.au
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit
  %i.bk = load i64, ptr %i.au, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.r

bb.n:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @_ZN4node12ToBaseStringILj3ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bn = load ptr, ptr %14, align 8              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.n
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.r

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN4node12ToBaseStringILj4ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.bs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bt = load ptr, ptr %15, align 8              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.o
  %i.bw = load i64, ptr %i.bu, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.r

bb.p:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @_ZN4node12ToBaseStringILj4ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17)
  %i.by = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bz = load ptr, ptr %16, align 8              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.p
  %i.cc = load i64, ptr %i.ca, align 8
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.ce = load ptr, ptr %17, align 8              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.ch = load i64, ptr %i.cf, align 8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.r

bb.q:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args_0) #24
  call void @abort() #25
  unreachable

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.cj = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.ck = icmp ugt i64 %i.cj, %1
  br i1 %i.ck, label %bb.s, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.cj, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57: ; preds = %bb.r
  %i.cl = sub nuw i64 %1, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj
  call void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 %i.cl, ptr %i.cm)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noalias !273
  %i.cp = load ptr, ptr %6, align 8, !noalias !273
  %i.cq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.cp, i64 noundef %i.co), !noalias !273 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cr, ptr %0, align 8, !alias.scope !273
  %i.cs = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 5 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

bb.t:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cw = load i64, ptr %i.cv, align 8            ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.cx)
  %i.cy = add nuw nsw i64 %i.cw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.ct, i64 %i.cy, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57
  store ptr %i.cs, ptr %0, align 8, !alias.scope !273
  %i.cz = load i64, ptr %i.ct, align 8
  store i64 %i.cz, ptr %i.cr, align 8, !alias.scope !273
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.da = phi i64 [ %i.cw, %bb.t ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.da, ptr %i.dc, align 8, !alias.scope !273
  store ptr %i.ct, ptr %i.cq, align 8
  store i64 0, ptr %i.db, align 8
  store i8 0, ptr %i.ct, align 8
  %i.dd = load ptr, ptr %18, align 8              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.dg = load i64, ptr %i.de, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.di = load ptr, ptr %6, align 8               ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.u
  %i.dl = load i64, ptr %i.dj, align 8
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge.i.i.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.b = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %5 = icmp eq i64 %i.e, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %5
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.j

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #25
  unreachable

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %i.h = icmp ugt i64 %1, 15
  br i1 %i.h, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %1, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = add nuw i64 %1, 1                        ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %._crit_edge.i.i.i.i.thread42, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

._crit_edge.i.i.i.i.thread42:                     ; preds = %bb.f
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #26 ; 2 uses
  store ptr %i.l, ptr %0, align 8
  store i64 %1, ptr %i.f, align 8
  br label %bb.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c
  %cond = icmp eq i64 %1, 1
  br i1 %cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %2, align 1
  store i8 %i.m, ptr %i.f, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.thread42, %._crit_edge.i.i.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i.i.i.thread42 ], [ %i.f, %._crit_edge.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %2, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i.thread, %bb.h, %bb.i
  %i.o = phi ptr [ %i.a, %._crit_edge.i.i.i.i.thread ], [ %i.n, %bb.i ], [ %i.f, %bb.h ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %1
  store i8 0, ptr %i.q, align 1
  br label %bb.u

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.r = add nuw i64 %i.e, 1                      ; 7 uses
  %i.s = icmp ult i64 %i.r, %1
  br i1 %i.s, label %bb.l, label %bb.k, !prof !30

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 37
  br i1 %i.v, label %bb.n, label %bb.m, !prof !30

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE20error_and_abort_args_0) #24
  tail call void @abort() #25
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.w, ptr %3, align 8
  %i.x = icmp ugt i64 %i.e, 14
  br i1 %i.x, label %bb.o, label %._crit_edge.i.i.i.i10

bb.o:                                             ; preds = %bb.n
  %i.y = icmp slt i64 %i.r, 0
  br i1 %i.y, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.z = add nuw i64 %i.e, 2                      ; 2 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11, !prof !5

bb.r:                                             ; preds = %bb.q
  call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11: ; preds = %bb.q
  %i.ab = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #26 ; 2 uses
  store ptr %i.ab, ptr %3, align 8
  store i64 %i.r, ptr %i.w, align 8
  br label %._crit_edge.i.i.i.i10

._crit_edge.i.i.i.i10:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11, %bb.n
  %i.ac = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11 ], [ %i.w, %bb.n ] ; 3 uses
  %cond31 = icmp eq ptr %i.b, %2
  br i1 %cond31, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i10
  %i.ad = load i8, ptr %2, align 1
  store i8 %i.ad, ptr %i.ac, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12

bb.t:                                             ; preds = %._crit_edge.i.i.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12: ; preds = %bb.s, %bb.t
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.r, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.r
  store i8 0, ptr %i.af, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ag = add nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.ah = sub nuw i64 %1, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %i.ag
  call void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %i.ah, ptr nonnull %i.ai)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.aj = load ptr, ptr %4, align 8               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12
  %i.am = load i64, ptr %i.ak, align 8
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ao = load ptr, ptr %3, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.w
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.w, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJPKcEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN4node7SPrintFIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = alloca [20 x i8], align 16               ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not76 = icmp eq i64 %1, 0
  br i1 %.not76, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.d = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %19 = ptrtoint ptr %i.d to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.f = add nuw i64 %21, 1                       ; 3 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.h = phi i64 [ %i.k, %.critedge2 ], [ %i.f, %bb.b ] ; 4 uses
  %.077 = phi i64 [ %i.h, %.critedge2 ], [ %21, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !276

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.077, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.f, %bb.b ], [ %i.h, %.lr.ph ] ; 4 uses
  %i.l = icmp eq i64 %.lcssa, %1
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.n = load i8, ptr %i.m, align 1
  switch i8 %i.n, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !277
  %i.o = load ptr, ptr %6, align 8, !noalias !277
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !277
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !277
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.r = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.r, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.t = sub nuw i64 %1, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  call void @_ZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.t, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.v = load ptr, ptr %10, align 8               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.aa = load ptr, ptr %9, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.q

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa108 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !280
  %i.af = load ptr, ptr %6, align 8, !noalias !280
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !280
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !280
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ai = icmp ugt i64 %.lcssa108, %1
  br i1 %i.ai, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa108, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34: ; preds = %.thread
  %i.aj = sub nuw i64 %1, %.lcssa108
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa108
  call void @_ZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.aj, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.al = load ptr, ptr %12, align 8              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.aq = load ptr, ptr %11, align 8              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.q

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i.i, ptr @.str.83, ptr %i.av ; 2 uses
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #24
  store i64 %i.ax, ptr %13, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  %i.bb = select i1 %.not.i.i.i, ptr @.str.83, ptr %i.ba ; 2 uses
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #24
  store i64 %i.bc, ptr %14, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bf, null
  %i.bg = select i1 %.not.i.i.i41, ptr @.str.83, ptr %i.bf ; 2 uses
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #24
  store i64 %i.bh, ptr %15, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bk, null
  %i.bl = select i1 %.not.i.i.i44, ptr @.str.83, ptr %i.bk ; 2 uses
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #24
  store i64 %i.bm, ptr %17, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bp = load ptr, ptr %16, align 8              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.j
  %i.bs = load i64, ptr %i.bq, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.bu = load ptr, ptr %3, align 8
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 20, ptr noundef nonnull @.str.77, ptr noundef %i.bu) #24
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.m, label %bb.l, !prof !30

bb.l:                                             ; preds = %bb.k
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args_1) #24
  call void @abort() #25
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.by = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.bz = icmp ugt i64 %i.by, %1
  br i1 %i.bz, label %bb.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.by, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53: ; preds = %bb.n
  %i.ca = sub nuw i64 %1, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  call void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 %i.ca, ptr %i.cb)
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !283
  %i.ce = load ptr, ptr %6, align 8, !noalias !283
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.cd), !noalias !283 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cg, ptr %0, align 8, !alias.scope !283
  %i.ch = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 5 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add nuw nsw i64 %i.cl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.ci, i64 %i.cn, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53
  store ptr %i.ch, ptr %0, align 8, !alias.scope !283
  %i.co = load i64, ptr %i.ci, align 8
  store i64 %i.co, ptr %i.cg, align 8, !alias.scope !283
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  %i.cp = phi i64 [ %i.cl, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cp, ptr %i.cr, align 8, !alias.scope !283
  store ptr %i.ci, ptr %i.cf, align 8
  store i64 0, ptr %i.cq, align 8
  store i8 0, ptr %i.ci, align 8
  %i.cs = load ptr, ptr %18, align 8              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cv = load i64, ptr %i.ct, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.q
  %i.da = load i64, ptr %i.cy, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRKiEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #18 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN4node7SPrintFIJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRKiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRKiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not80 = icmp eq i64 %1, 0
  br i1 %.not80, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRKiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.e = add nuw i64 %21, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.081 = phi i64 [ %i.g, %.critedge2 ], [ %21, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !286

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.081, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !287
  %i.n = load ptr, ptr %6, align 8, !noalias !287
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !287
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !287
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRKiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !290
  %i.ae = load ptr, ptr %6, align 8, !noalias !290
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !290
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa120, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIRKiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @_ZN4node12ToBaseStringILj3EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN4node12ToBaseStringILj4EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
end_hunk_2
begin_hunk_3_@_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.g = add i32 %.02329.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %.02230.i.i, 10000
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = add i32 %.02329.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.j = udiv i32 %.02230.i.i, 10000
  %i.k = add i32 %.02329.i.i, 4                   ; 2 uses
  %i.l = icmp ult i32 %.02230.i.i, 100000
  br i1 %i.l, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !91

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.i, %bb.f ], [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ 1, %bb.a ], [ %i.k, %bb.g ] ; 2 uses
  %.lobit.i = lshr i32 %i.a, 31                   ; 2 uses
  %i.m = add i32 %.0.i.i, %.lobit.i               ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.o, ptr %0, align 8, !alias.scope !304
  %i.p = icmp ugt i32 %i.m, 15
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.q = add nuw nsw i64 %i.n, 1
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !alias.scope !304
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !304
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %i.m, label %bb.k [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  store i8 45, ptr %i.o, align 8, !alias.scope !304
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.r, %bb.h ], [ %i.o, %bb.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 45, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.t = phi ptr [ %i.o, %bb.i ], [ %i.o, %bb.j ], [ %i.s, %bb.k ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.u, align 8, !alias.scope !304
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  store i8 0, ptr %i.v, align 1
  %i.w = zext nneg i32 %.lobit.i to i64
  %i.x = load ptr, ptr %0, align 8, !alias.scope !304
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w ; 4 uses
  %i.z = icmp ugt i32 %i.b, 99
  br i1 %i.z, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.aa = add i32 %.0.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ad, %.lr.ph.i11.i ], [ %i.b, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ao, %.lr.ph.i11.i ], [ %i.aa, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ab = urem i32 %.020.i.i, 100
  %i.ac = shl nuw nsw i32 %i.ab, 1
  %i.ad = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !304
  %i.ai = zext i32 %.01819.i.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  store i8 %i.ah, ptr %i.aj, align 1
  %i.ak = load i8, ptr %i.af, align 2, !noalias !304
  %i.al = add i32 %.01819.i.i, -1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1
  %i.ao = add i32 %.01819.i.i, -2
  %i.ap = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ap, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !93

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.ad, %.lr.ph.i11.i ] ; 3 uses
  %i.aq = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ar = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !noalias !304
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = load i8, ptr %i.at, align 2, !noalias !304
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ay = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.az = or disjoint i8 %i.ay, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.l, %bb.m
  %storemerge.i.i = phi i8 [ %i.az, %bb.m ], [ %i.ax, %bb.l ]
  store i8 %storemerge.i.i, ptr %i.y, align 1
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2) local_unnamed_addr #18 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN4node7SPrintFIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %1, ptr %2) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  %i.a = load ptr, ptr %3, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2)
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRjS1_S1_S1_S1_EEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #18 comdat {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZN4node7SPrintFIJRjS1_S1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %8) #24
  %i.a = load ptr, ptr %8, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRjS1_S1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRjJS1_S1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRjJS1_S1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not92 = icmp eq i64 %1, 0
  br i1 %.not92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %23 = ptrtoint ptr %i.c to i64
  %24 = ptrtoint ptr %2 to i64
  %25 = sub i64 %23, %24                          ; 5 uses
  %.not = icmp eq i64 %25, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJS1_S1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %25)
  store i64 %.sroa.speculated.i, ptr %11, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.e = add nuw i64 %25, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.093 = phi i64 [ %i.g, %.critedge2 ], [ %25, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !307

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %25, %bb.b ], [ %.093, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !308
  %i.n = load ptr, ptr %10, align 8, !noalias !308
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !308
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRjJS1_S1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %i.u = load ptr, ptr %14, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.z = load ptr, ptr %13, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa132 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !311
  %i.ae = load ptr, ptr %10, align 8, !noalias !311
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !311
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !311
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.ah = icmp ugt i64 %.lcssa132, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit44

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa132, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit44: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa132
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa132
  call void @_ZN4node11SPrintFImplIRjJS1_S1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
  %i.ak = load ptr, ptr %16, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit44
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.ap = load ptr, ptr %15, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.av = load ptr, ptr %17, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @_ZN4node12ToBaseStringILj3EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %18) ; 0 uses
  %i.bb = load ptr, ptr %18, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %19) ; 0 uses
  %i.bh = load ptr, ptr %19, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
end_hunk_3
begin_hunk_4_@_ZN4node11SPrintFImplIRjJS1_S1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_:bb.a
bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.cw = load ptr, ptr %10, align 8              ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node12ToBaseStringILj3EjEEDaRKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.b = load i32, ptr %1, align 4, !noalias !317
  %i.c = zext i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !317
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  store i8 0, ptr %i.d, align 1, !noalias !317
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i = phi ptr [ %i.d, %bb.a ], [ %i.h, %bb.b ]
  %.0.i = phi i64 [ %i.c, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %i.e = trunc i64 %.0.i to i8
  %i.f = and i8 %i.e, 7
  %i.g = or disjoint i8 %i.f, 48
  %i.h = getelementptr inbounds i8, ptr %.06.i, i64 -1 ; 5 uses
  store i8 %i.g, ptr %i.h, align 1, !noalias !317
  %i.i = lshr i64 %.0.i, 3                        ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !320

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !alias.scope !317
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #24, !noalias !317 ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.f
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !alias.scope !317
  store i64 %i.k, ptr %i.j, align 8, !alias.scope !317
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  switch i64 %i.k, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN4node14ToStringHelper11BaseConvertILj3EjvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.h, align 1, !noalias !317
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZN4node14ToStringHelper11BaseConvertILj3EjvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj3EjvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj3EjvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.s, align 8, !alias.scope !317
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !317
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.b = load i32, ptr %1, align 4, !noalias !321
  %i.c = zext i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !321
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  store i8 0, ptr %i.d, align 1, !noalias !321
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07.i = phi ptr [ %i.d, %bb.a ], [ %i.h, %bb.b ]
  %.0.i = phi i64 [ %i.c, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %i.e = and i64 %.0.i, 15
  %i.f = getelementptr inbounds nuw i8, ptr @.str.95, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !noalias !321
  %i.h = getelementptr inbounds i8, ptr %.07.i, i64 -1 ; 5 uses
  store i8 %i.g, ptr %i.h, align 1, !noalias !321
  %i.i = lshr i64 %.0.i, 4                        ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !324

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !alias.scope !321
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #24, !noalias !321 ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.f
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #26 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !alias.scope !321
  store i64 %i.k, ptr %i.j, align 8, !alias.scope !321
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  switch i64 %i.k, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN4node14ToStringHelper11BaseConvertILj4EjvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.h, align 1, !noalias !321
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EjvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EjvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj4EjvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.s, align 8, !alias.scope !321
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !321
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRjJS1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not89 = icmp eq i64 %1, 0
  br i1 %.not89, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %22 = ptrtoint ptr %i.c to i64
  %23 = ptrtoint ptr %2 to i64
  %24 = sub i64 %22, %23                          ; 5 uses
  %.not = icmp eq i64 %24, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJS1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %24)
  store i64 %.sroa.speculated.i, ptr %10, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.e = add nuw i64 %24, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.090 = phi i64 [ %i.g, %.critedge2 ], [ %24, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !325

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %24, %bb.b ], [ %.090, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !326
  %i.n = load ptr, ptr %9, align 8, !noalias !326
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !326
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !326
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRjJS1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.u = load ptr, ptr %13, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.z = load ptr, ptr %12, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa129 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !329
  %i.ae = load ptr, ptr %9, align 8, !noalias !329
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !329
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !329
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.ah = icmp ugt i64 %.lcssa129, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa129, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa129
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa129
  call void @_ZN4node11SPrintFImplIRjJS1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
  %i.ak = load ptr, ptr %15, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.ap = load ptr, ptr %14, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.av = load ptr, ptr %16, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @_ZN4node12ToBaseStringILj3EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bb = load ptr, ptr %17, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %18) ; 0 uses
  %i.bh = load ptr, ptr %18, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
end_hunk_4
begin_hunk_5_@_ZN4node11SPrintFImplIRjJS1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_:bb.a
  store i8 0, ptr %i.ch, align 8
  %i.cr = load ptr, ptr %21, align 8              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cu = load i64, ptr %i.cs, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.cw = load ptr, ptr %9, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.b = icmp ult i32 %i.a, 10
  br i1 %i.b, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !335
  br label %bb.j

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.02230.i.i = phi i32 [ %i.j, %bb.g ], [ %i.a, %bb.a ] ; 5 uses
  %.02329.i.i = phi i32 [ %i.k, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %i.d = icmp ult i32 %.02230.i.i, 100
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = add i32 %.02329.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = icmp ult i32 %.02230.i.i, 1000
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add i32 %.02329.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %.02230.i.i, 10000
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = add i32 %.02329.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.j = udiv i32 %.02230.i.i, 10000
  %i.k = add i32 %.02329.i.i, 4                   ; 2 uses
  %i.l = icmp ult i32 %.02230.i.i, 100000
  br i1 %i.l, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !91

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.i, %bb.f ], [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ %i.k, %bb.g ] ; 3 uses
  %i.m = zext i32 %.0.i.i to i64                  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !335
  %i.o = icmp ugt i32 %.0.i.i, 15
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.p = add nuw nsw i64 %i.m, 1
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !alias.scope !335
  store i64 %i.m, ptr %i.n, align 8, !alias.scope !335
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %.0.i.i, label %bb.k [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %.thread.i
  %i.r = phi ptr [ %i.c, %.thread.i ], [ %i.n, %bb.i ] ; 2 uses
  store i8 0, ptr %i.r, align 1, !alias.scope !335
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.n, %bb.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.t = phi i64 [ 0, %bb.i ], [ 1, %bb.j ], [ %i.m, %bb.k ] ; 2 uses
  %i.u = phi ptr [ %i.n, %bb.i ], [ %i.r, %bb.j ], [ %i.s, %bb.k ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.v, align 8, !alias.scope !335
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.w, align 1
  %i.x = load ptr, ptr %0, align 8, !alias.scope !335 ; 4 uses
  %i.y = icmp ugt i32 %i.a, 99
  br i1 %i.y, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.z = load i64, ptr %i.v, align 8, !alias.scope !335
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add i32 %i.aa, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ae, %.lr.ph.i2.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ap, %.lr.ph.i2.i ], [ %i.ab, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ac = urem i32 %.020.i.i, 100
  %i.ad = shl nuw nsw i32 %i.ac, 1
  %i.ae = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !335
  %i.aj = zext i32 %.01819.i.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aj
  store i8 %i.ai, ptr %i.ak, align 1
  %i.al = load i8, ptr %i.ag, align 2, !noalias !335
  %i.am = add i32 %.01819.i.i, -1
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.an
  store i8 %i.al, ptr %i.ao, align 1
  %i.ap = add i32 %.01819.i.i, -2
  %i.aq = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.aq, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !93

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.ae, %.lr.ph.i2.i ] ; 3 uses
  %i.ar = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.as = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !noalias !335
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = load i8, ptr %i.au, align 2, !noalias !335
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.az = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.ba = or disjoint i8 %i.az, 48
  br label %_ZNSt7__cxx119to_stringEj.exit

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.l, %bb.m
  %storemerge.i.i = phi i8 [ %i.ba, %bb.m ], [ %i.ay, %bb.l ]
  store i8 %storemerge.i.i, ptr %i.x, align 1
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRjJS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not86 = icmp eq i64 %1, 0
  br i1 %.not86, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %21 = ptrtoint ptr %i.c to i64
  %22 = ptrtoint ptr %2 to i64
  %23 = sub i64 %21, %22                          ; 5 uses
  %.not = icmp eq i64 %23, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %23)
  store i64 %.sroa.speculated.i, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.e = add nuw i64 %23, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.087 = phi i64 [ %i.g, %.critedge2 ], [ %23, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !338

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %23, %bb.b ], [ %.087, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !339
  %i.n = load ptr, ptr %8, align 8, !noalias !339
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !339
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !339
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRjJS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.u = load ptr, ptr %12, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.z = load ptr, ptr %11, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa126 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !342
  %i.ae = load ptr, ptr %8, align 8, !noalias !342
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !342
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !342
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.ah = icmp ugt i64 %.lcssa126, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa126, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa126
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa126
  call void @_ZN4node11SPrintFImplIRjJS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %i.ak = load ptr, ptr %14, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.ap = load ptr, ptr %13, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.av = load ptr, ptr %15, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @_ZN4node12ToBaseStringILj3EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bb = load ptr, ptr %16, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bh = load ptr, ptr %17, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %18) ; 0 uses
  %i.bn = load ptr, ptr %18, align 8              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.j
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  %i.bs = load ptr, ptr %19, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args_0) #24
  call void @abort() #25
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit63

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.bx, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit63: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplIRjJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, i64 %i.bz, ptr %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !345
  %i.cd = load ptr, ptr %8, align 8, !noalias !345
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !345 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !345
  %i.cg = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

bb.n:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit63
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8            ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit63
  store ptr %i.cg, ptr %0, align 8, !alias.scope !345
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !345
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !345
  store ptr %i.ch, ptr %i.ce, align 8
  store i64 0, ptr %i.cp, align 8
  store i8 0, ptr %i.ch, align 8
  %i.cr = load ptr, ptr %20, align 8              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cu = load i64, ptr %i.cs, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.cw = load ptr, ptr %8, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRjJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not83 = icmp eq i64 %1, 0
  br i1 %.not83, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.e = add nuw i64 %22, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.084 = phi i64 [ %i.g, %.critedge2 ], [ %22, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !348

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %22, %bb.b ], [ %.084, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !349
  %i.n = load ptr, ptr %7, align 8, !noalias !349
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !349
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !349
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRjJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !352
  %i.ae = load ptr, ptr %7, align 8, !noalias !352
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !352
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !352
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa123, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRjJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN4node12ToBaseStringILj3EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bn = load ptr, ptr %17, align 8              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.j
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.bs = load ptr, ptr %18, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args_0) #24
  call void @abort() #25
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.bx, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.bz, ptr %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !355
  %i.cd = load ptr, ptr %7, align 8, !noalias !355
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !355 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !355
  %i.cg = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

bb.n:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8            ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  store ptr %i.cg, ptr %0, align 8, !alias.scope !355
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !355
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !355
  store ptr %i.ch, ptr %i.ce, align 8
  store i64 0, ptr %i.cp, align 8
  store i8 0, ptr %i.ch, align 8
  %i.cr = load ptr, ptr %19, align 8              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cu = load i64, ptr %i.cs, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.cw = load ptr, ptr %7, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not80 = icmp eq i64 %1, 0
  br i1 %.not80, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.e = add nuw i64 %21, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.081 = phi i64 [ %i.g, %.critedge2 ], [ %21, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !358

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.081, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !359
  %i.n = load ptr, ptr %6, align 8, !noalias !359
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !359
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !359
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !362
  %i.ae = load ptr, ptr %6, align 8, !noalias !362
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !362
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa120, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @_ZN4node12ToBaseStringILj3EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bn = load ptr, ptr %16, align 8              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.j
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.bs = load ptr, ptr %17, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args_0) #24
  call void @abort() #25
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.bx, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 %i.bz, ptr %i.ca)
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !365
  %i.cd = load ptr, ptr %6, align 8, !noalias !365
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !365 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !365
  %i.cg = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

bb.n:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8            ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57
  store ptr %i.cg, ptr %0, align 8, !alias.scope !365
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !365
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !365
  store ptr %i.ch, ptr %i.ce, align 8
  store i64 0, ptr %i.cp, align 8
  store i8 0, ptr %i.ch, align 8
  %i.cr = load ptr, ptr %18, align 8              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cu = load i64, ptr %i.cs, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.cw = load ptr, ptr %6, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRKjRjEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #18 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN4node7SPrintFIJRKjRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRKjRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRKjJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRKjJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not83 = icmp eq i64 %1, 0
  br i1 %.not83, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRKjJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.e = add nuw i64 %22, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.084 = phi i64 [ %i.g, %.critedge2 ], [ %22, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !368

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %22, %bb.b ], [ %.084, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !369
  %i.n = load ptr, ptr %7, align 8, !noalias !369
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !369
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !369
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRKjJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !372
  %i.ae = load ptr, ptr %7, align 8, !noalias !372
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !372
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !372
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa123, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRKjJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN4node12ToBaseStringILj3EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
end_hunk_5
begin_hunk_6_@_ZN4node11SPrintFImplIRKjJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.j
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.bs = load ptr, ptr %18, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRKjJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args_0) #24
  call void @abort() #25
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.bx, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.bz, ptr %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !375
  %i.cd = load ptr, ptr %7, align 8, !noalias !375
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !375 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !375
  %i.cg = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

bb.n:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8            ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  store ptr %i.cg, ptr %0, align 8, !alias.scope !375
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !375
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !375
  store ptr %i.ch, ptr %i.ce, align 8
  store i64 0, ptr %i.cp, align 8
  store i8 0, ptr %i.ch, align 8
  %i.cr = load ptr, ptr %19, align 8              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cu = load i64, ptr %i.cs, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.cw = load ptr, ptr %7, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRjS1_EEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #18 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN4node7SPrintFIJRjS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRjS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRjJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRjRmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #18 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN4node7SPrintFIJRjRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRjRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRjJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRjJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not83 = icmp eq i64 %1, 0
  br i1 %.not83, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.e = add nuw i64 %22, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.084 = phi i64 [ %i.g, %.critedge2 ], [ %22, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !378

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %22, %bb.b ], [ %.084, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !379
  %i.n = load ptr, ptr %7, align 8, !noalias !379
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !379
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !379
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRjJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !382
  %i.ae = load ptr, ptr %7, align 8, !noalias !382
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !382
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !382
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa123, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRjJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN4node12ToBaseStringILj3EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bn = load ptr, ptr %17, align 8              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.j
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.bs = load ptr, ptr %18, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args_0) #24
  call void @abort() #25
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.bx, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.bz, ptr %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !385
  %i.cd = load ptr, ptr %7, align 8, !noalias !385
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !385 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !385
  %i.cg = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

bb.n:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8            ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  store ptr %i.cg, ptr %0, align 8, !alias.scope !385
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !385
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !385
  store ptr %i.ch, ptr %i.ce, align 8
  store i64 0, ptr %i.cp, align 8
  store i8 0, ptr %i.ch, align 8
  %i.cr = load ptr, ptr %19, align 8              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cu = load i64, ptr %i.cs, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.cw = load ptr, ptr %7, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not80 = icmp eq i64 %1, 0
  br i1 %.not80, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.e = add nuw i64 %21, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.081 = phi i64 [ %i.g, %.critedge2 ], [ %21, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !388

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.081, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !389
  %i.n = load ptr, ptr %6, align 8, !noalias !389
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !389
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !389
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !392
  %i.ae = load ptr, ptr %6, align 8, !noalias !392
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !392
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !392
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa120, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
end_hunk_6
begin_hunk_7_@_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  %i.g = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.j = udiv i64 %.02229.i.i, 10000
  %i.k = add i32 %.02328.i.i, 4                   ; 2 uses
  %i.l = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.l, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !409

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.i, %bb.f ], [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ %i.k, %bb.g ] ; 3 uses
  %i.m = zext i32 %.0.i.i to i64                  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !406
  %i.o = icmp ugt i32 %.0.i.i, 15
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.p = add nuw nsw i64 %i.m, 1
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !alias.scope !406
  store i64 %i.m, ptr %i.n, align 8, !alias.scope !406
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  switch i32 %.0.i.i, label %bb.k [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %.thread.i
  %i.r = phi ptr [ %i.c, %.thread.i ], [ %i.n, %bb.i ] ; 2 uses
  store i8 0, ptr %i.r, align 1, !alias.scope !406
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.n, %bb.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.t = phi i64 [ 0, %bb.i ], [ 1, %bb.j ], [ %i.m, %bb.k ] ; 2 uses
  %i.u = phi ptr [ %i.n, %bb.i ], [ %i.r, %bb.j ], [ %i.s, %bb.k ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.v, align 8, !alias.scope !406
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.w, align 1
  %i.x = load ptr, ptr %0, align 8, !alias.scope !406 ; 4 uses
  %i.y = icmp ugt i64 %i.a, 99
  br i1 %i.y, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.z = load i64, ptr %i.v, align 8, !alias.scope !406
  %i.aa = trunc i64 %i.z to i32
  %i.ab = add i32 %i.aa, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ae, %.lr.ph.i2.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ao, %.lr.ph.i2.i ], [ %i.ab, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ac = urem i64 %.020.i.i, 100
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ad ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !406
  %i.ai = zext i32 %.01819.i.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ai
  store i8 %i.ah, ptr %i.aj, align 1
  %i.ak = load i8, ptr %i.af, align 2, !noalias !406
  %i.al = add i32 %.01819.i.i, -1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1
  %i.ao = add i32 %.01819.i.i, -2
  %i.ap = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ap, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !410

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.ae, %.lr.ph.i2.i ] ; 3 uses
  %i.aq = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ar = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.as = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !noalias !406
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = load i8, ptr %i.as, align 2, !noalias !406
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.ax = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ay = or disjoint i8 %i.ax, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.l, %bb.m
  %storemerge.i.i = phi i8 [ %i.ay, %bb.m ], [ %i.aw, %bb.l ]
  store i8 %storemerge.i.i, ptr %i.x, align 1
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v814ScriptCompiler10CachedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20)) unnamed_addr #14

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN4node7SPrintFIJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #18 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS7_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS7_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not83 = icmp eq i64 %1, 0
  br i1 %.not83, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS7_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.e = add nuw i64 %22, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.084 = phi i64 [ %i.g, %.critedge2 ], [ %22, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !411

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %22, %bb.b ], [ %.084, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.n
    i8 120, label %bb.o
    i8 88, label %bb.p
    i8 112, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !412
  %i.n = load ptr, ptr %7, align 8, !noalias !412
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !412
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !412
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS7_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.u

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa125 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !415
  %i.ae = load ptr, ptr %7, align 8, !noalias !415
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !415
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !415
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ah = icmp ugt i64 %.lcssa125, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa125, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa125
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa125
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS7_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.u

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.au, ptr %14, align 8, !alias.scope !424
  %i.av = load ptr, ptr %3, align 8, !noalias !424 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !424 ; 8 uses
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.az = icmp slt i64 %i.ax, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ba = add nuw i64 %i.ax, 1                    ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.j
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #26 ; 2 uses
  store ptr %i.bc, ptr %14, align 8, !alias.scope !424
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !424
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.g
  %i.bd = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.au, %bb.g ] ; 3 uses
  switch i64 %i.ax, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load i8, ptr %i.av, align 1
  store i8 %i.be, ptr %i.bd, align 1
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.l, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ax, ptr %i.bf, align 8, !alias.scope !424
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
end_hunk_7
begin_hunk_8_@_ZNSt10_HashtableIjSt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br label %_ZNSt10_HashtableIjSt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS6_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS6_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIjSt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIjSt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS6_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS6_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIjSt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIjSt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIjSt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8
  store ptr %i.p, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.n, align 8
  %i.q = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8
  store ptr %i.s, ptr %.031, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %.031, ptr %i.t, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !429

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIjSt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIjSt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #27
  br label %_ZNSt10_HashtableIjSt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIjSt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS6_EEELb0EEEEE18_M_deallocate_nodeEPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZSt10destroy_atISt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.o = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4node17CompileCacheEntryEEclEPS1_.exit.i.i.i, label %_ZNKSt14default_deleteIN2v814ScriptCompiler10CachedDataEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v814ScriptCompiler10CachedDataEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  tail call void @_ZN2v814ScriptCompiler10CachedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.o) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 24) #27
  br label %_ZNKSt14default_deleteIN4node17CompileCacheEntryEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4node17CompileCacheEntryEEclEPS1_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v814ScriptCompiler10CachedDataEEclEPS2_.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #27
  br label %_ZSt10destroy_atISt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEEEvPT_.exit

_ZSt10destroy_atISt4pairIKjSt10unique_ptrIN4node17CompileCacheEntryESt14default_deleteIS4_EEEEvPT_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4node17CompileCacheEntryEEclEPS1_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 24) #27
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EEEvP8_IO_FILESt17basic_string_viewIcS6_EDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #18 comdat {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4node7SPrintFIJPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EEES8_St17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  %i.a = load ptr, ptr %6, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EEES8_St17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EEES8_St17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EEES8_St17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = alloca [20 x i8], align 16               ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not82 = icmp eq i64 %1, 0
  br i1 %.not82, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.d = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %21 = ptrtoint ptr %i.d to i64
  %22 = ptrtoint ptr %2 to i64
  %23 = sub i64 %21, %22                          ; 5 uses
  %.not = icmp eq i64 %23, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EEES8_St17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %23)
  store i64 %.sroa.speculated.i, ptr %9, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.f = add nuw i64 %23, 1                       ; 3 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.h = phi i64 [ %i.k, %.critedge2 ], [ %i.f, %bb.b ] ; 4 uses
  %.083 = phi i64 [ %i.h, %.critedge2 ], [ %23, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !430

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %23, %bb.b ], [ %.083, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.f, %bb.b ], [ %i.h, %.lr.ph ] ; 4 uses
  %i.l = icmp eq i64 %.lcssa, %1
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.n = load i8, ptr %i.m, align 1
  switch i8 %i.n, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !431
  %i.o = load ptr, ptr %8, align 8, !noalias !431
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !431
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.r = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.r, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.t = sub nuw i64 %1, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  call void @_ZN4node11SPrintFImplIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EEES8_St17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.t, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.v = load ptr, ptr %12, align 8               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.aa = load ptr, ptr %11, align 8              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.q

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa114 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !434
  %i.af = load ptr, ptr %8, align 8, !noalias !434
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !434
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !434
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.ai = icmp ugt i64 %.lcssa114, %1
  br i1 %i.ai, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit40

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa114, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit40: ; preds = %.thread
  %i.aj = sub nuw i64 %1, %.lcssa114
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa114
  call void @_ZN4node11SPrintFImplIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EEES8_St17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.aj, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %i.al = load ptr, ptr %14, align 8              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit40
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.aq = load ptr, ptr %13, align 8              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.q

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i.i, ptr @.str.83, ptr %i.av ; 2 uses
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #24
  store i64 %i.ax, ptr %15, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  %i.bb = select i1 %.not.i.i.i, ptr @.str.83, ptr %i.ba ; 2 uses
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #24
  store i64 %i.bc, ptr %16, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.bf, null
  %i.bg = select i1 %.not.i.i.i47, ptr @.str.83, ptr %i.bf ; 2 uses
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #24
  store i64 %i.bh, ptr %17, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %17) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.bk, null
  %i.bl = select i1 %.not.i.i.i50, ptr @.str.83, ptr %i.bk ; 2 uses
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #24
  store i64 %i.bm, ptr %19, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %19)
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %18) ; 0 uses
  %i.bp = load ptr, ptr %18, align 8              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.j
  %i.bs = load i64, ptr %i.bq, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.bu = load ptr, ptr %3, align 8
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 20, ptr noundef nonnull @.str.77, ptr noundef %i.bu) #24
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.m, label %bb.l, !prof !30

bb.l:                                             ; preds = %bb.k
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_EEES8_St17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args_1) #24
  call void @abort() #25
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.by = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.bz = icmp ugt i64 %i.by, %1
  br i1 %i.bz, label %bb.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit59

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.by, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit59: ; preds = %bb.n
  %i.ca = sub nuw i64 %1, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, i64 %i.ca, ptr %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !437
  %i.ce = load ptr, ptr %8, align 8, !noalias !437
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.cd), !noalias !437 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cg, ptr %0, align 8, !alias.scope !437
  %i.ch = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 5 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit59
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add nuw nsw i64 %i.cl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.ci, i64 %i.cn, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit59
  store ptr %i.ch, ptr %0, align 8, !alias.scope !437
  %i.co = load i64, ptr %i.ci, align 8
  store i64 %i.co, ptr %i.cg, align 8, !alias.scope !437
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  %i.cp = phi i64 [ %i.cl, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cp, ptr %i.cr, align 8, !alias.scope !437
  store ptr %i.ci, ptr %i.cf, align 8
  store i64 0, ptr %i.cq, align 8
  store i8 0, ptr %i.ci, align 8
  %i.cs = load ptr, ptr %20, align 8              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cv = load i64, ptr %i.ct, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.cx = load ptr, ptr %8, align 8               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.q
  %i.da = load i64, ptr %i.cy, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not83 = icmp eq i64 %1, 0
  br i1 %.not83, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.e = add nuw i64 %22, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.084 = phi i64 [ %i.g, %.critedge2 ], [ %22, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !440

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %22, %bb.b ], [ %.084, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.n
    i8 120, label %bb.o
    i8 88, label %bb.p
    i8 112, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !441
  %i.n = load ptr, ptr %7, align 8, !noalias !441
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !441
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.u

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa125 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !444
  %i.ae = load ptr, ptr %7, align 8, !noalias !444
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !444
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !444
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ah = icmp ugt i64 %.lcssa125, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa125, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa125
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa125
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.u

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.au, ptr %14, align 8, !alias.scope !453
  %i.av = load ptr, ptr %3, align 8, !noalias !453 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !453 ; 8 uses
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.az = icmp slt i64 %i.ax, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ba = add nuw i64 %i.ax, 1                    ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.j
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #26 ; 2 uses
  store ptr %i.bc, ptr %14, align 8, !alias.scope !453
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !453
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.g
  %i.bd = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.au, %bb.g ] ; 3 uses
  switch i64 %i.ax, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load i8, ptr %i.av, align 1
  store i8 %i.be, ptr %i.bd, align 1
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.l, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ax, ptr %i.bf, align 8, !alias.scope !453
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
end_hunk_8
begin_hunk_9_@_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_:bb.a
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.p
  %i.cc = load i64, ptr %i.ca, align 8
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.ce = load ptr, ptr %18, align 8              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.ch = load i64, ptr %i.cf, align 8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.r

bb.q:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args_0) #24
  call void @abort() #25
  unreachable

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.cj = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.ck = icmp ugt i64 %i.cj, %1
  br i1 %i.ck, label %bb.s, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.cj, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60: ; preds = %bb.r
  %i.cl = sub nuw i64 %1, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj
  call void @_ZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.cl, ptr %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noalias !454
  %i.cp = load ptr, ptr %7, align 8, !noalias !454
  %i.cq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.cp, i64 noundef %i.co), !noalias !454 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cr, ptr %0, align 8, !alias.scope !454
  %i.cs = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 5 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

bb.t:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cw = load i64, ptr %i.cv, align 8            ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.cx)
  %i.cy = add nuw nsw i64 %i.cw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.ct, i64 %i.cy, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  store ptr %i.cs, ptr %0, align 8, !alias.scope !454
  %i.cz = load i64, ptr %i.ct, align 8
  store i64 %i.cz, ptr %i.cr, align 8, !alias.scope !454
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.da = phi i64 [ %i.cw, %bb.t ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.da, ptr %i.dc, align 8, !alias.scope !454
  store ptr %i.ct, ptr %i.cq, align 8
  store i64 0, ptr %i.db, align 8
  store i8 0, ptr %i.ct, align 8
  %i.dd = load ptr, ptr %19, align 8              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.dg = load i64, ptr %i.de, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.di = load ptr, ptr %7, align 8               ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.u
  %i.dl = load i64, ptr %i.dj, align 8
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvP8_IO_FILESt17basic_string_viewIcS6_EDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #18 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN4node7SPrintFIJPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_St17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_St17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_St17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvP8_IO_FILESt17basic_string_viewIcS7_EDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #18 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN4node7SPrintFIJRPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_St17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_St17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_St17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_St17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = alloca [20 x i8], align 16               ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not79 = icmp eq i64 %1, 0
  br i1 %.not79, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.d = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %20 = ptrtoint ptr %i.d to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_St17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.f = add nuw i64 %22, 1                       ; 3 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.h = phi i64 [ %i.k, %.critedge2 ], [ %i.f, %bb.b ] ; 4 uses
  %.080 = phi i64 [ %i.h, %.critedge2 ], [ %22, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !457

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %22, %bb.b ], [ %.080, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.f, %bb.b ], [ %i.h, %.lr.ph ] ; 4 uses
  %i.l = icmp eq i64 %.lcssa, %1
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.n = load i8, ptr %i.m, align 1
  switch i8 %i.n, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !458
  %i.o = load ptr, ptr %7, align 8, !noalias !458
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !458
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !458
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.r = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.r, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.t = sub nuw i64 %1, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  call void @_ZN4node11SPrintFImplIRPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_St17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.t, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.v = load ptr, ptr %11, align 8               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.aa = load ptr, ptr %10, align 8              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.q

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa111 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !461
  %i.af = load ptr, ptr %7, align 8, !noalias !461
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !461
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !461
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ai = icmp ugt i64 %.lcssa111, %1
  br i1 %i.ai, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit37

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa111, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit37: ; preds = %.thread
  %i.aj = sub nuw i64 %1, %.lcssa111
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa111
  call void @_ZN4node11SPrintFImplIRPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_St17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.aj, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.al = load ptr, ptr %13, align 8              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit37
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.aq = load ptr, ptr %12, align 8              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.q

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i.i, ptr @.str.83, ptr %i.av ; 2 uses
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #24
  store i64 %i.ax, ptr %14, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  %i.bb = select i1 %.not.i.i.i, ptr @.str.83, ptr %i.ba ; 2 uses
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #24
  store i64 %i.bc, ptr %15, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bf, null
  %i.bg = select i1 %.not.i.i.i44, ptr @.str.83, ptr %i.bf ; 2 uses
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #24
  store i64 %i.bh, ptr %16, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %16) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %i.bk, null
  %i.bl = select i1 %.not.i.i.i47, ptr @.str.83, ptr %i.bk ; 2 uses
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #24
  store i64 %i.bm, ptr %18, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %18)
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bp = load ptr, ptr %17, align 8              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.j
  %i.bs = load i64, ptr %i.bq, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.bu = load ptr, ptr %3, align 8
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 20, ptr noundef nonnull @.str.77, ptr noundef %i.bu) #24
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.m, label %bb.l, !prof !30

bb.l:                                             ; preds = %bb.k
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_St17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args_1) #24
  call void @abort() #25
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.by = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.bz = icmp ugt i64 %i.by, %1
  br i1 %i.bz, label %bb.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit56

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.by, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit56: ; preds = %bb.n
  %i.ca = sub nuw i64 %1, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.ca, ptr %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !464
  %i.ce = load ptr, ptr %7, align 8, !noalias !464
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.cd), !noalias !464 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cg, ptr %0, align 8, !alias.scope !464
  %i.ch = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 5 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit56
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add nuw nsw i64 %i.cl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.ci, i64 %i.cn, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit56
  store ptr %i.ch, ptr %0, align 8, !alias.scope !464
  %i.co = load i64, ptr %i.ci, align 8
  store i64 %i.co, ptr %i.cg, align 8, !alias.scope !464
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  %i.cp = phi i64 [ %i.cl, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cp, ptr %i.cr, align 8, !alias.scope !464
  store ptr %i.ci, ptr %i.cf, align 8
  store i64 0, ptr %i.cq, align 8
  store i8 0, ptr %i.ci, align 8
  %i.cs = load ptr, ptr %19, align 8              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cv = load i64, ptr %i.ct, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.cx = load ptr, ptr %7, align 8               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.q
  %i.da = load i64, ptr %i.cy, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPKcEEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #18 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPKcEEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERPKcEEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not83 = icmp eq i64 %1, 0
  br i1 %.not83, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.e = add nuw i64 %22, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.084 = phi i64 [ %i.g, %.critedge2 ], [ %22, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !467

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %22, %bb.b ], [ %.084, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.n
    i8 120, label %bb.o
    i8 88, label %bb.p
    i8 112, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !468
  %i.n = load ptr, ptr %7, align 8, !noalias !468
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !468
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !468
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.u

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa125 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !471
  %i.ae = load ptr, ptr %7, align 8, !noalias !471
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !471
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.ah = icmp ugt i64 %.lcssa125, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa125, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa125
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa125
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.u

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.au, ptr %14, align 8, !alias.scope !480
  %i.av = load ptr, ptr %3, align 8, !noalias !480 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !480 ; 8 uses
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.az = icmp slt i64 %i.ax, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ba = add nuw i64 %i.ax, 1                    ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.j
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #26 ; 2 uses
  store ptr %i.bc, ptr %14, align 8, !alias.scope !480
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !480
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.g
  %i.bd = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.au, %bb.g ] ; 3 uses
  switch i64 %i.ax, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load i8, ptr %i.av, align 1
  store i8 %i.be, ptr %i.bd, align 1
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.l, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ax, ptr %i.bf, align 8, !alias.scope !480
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
end_hunk_9
begin_hunk_10_@_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_:bb.a
  %i.bi = load ptr, ptr %14, align 8              ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.au
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit
  %i.bk = load i64, ptr %i.au, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.r

bb.n:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN4node12ToBaseStringILj3ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bn = load ptr, ptr %15, align 8              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.n
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.r

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @_ZN4node12ToBaseStringILj4ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.bs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bt = load ptr, ptr %16, align 8              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.o
  %i.bw = load i64, ptr %i.bu, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.r

bb.p:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @_ZN4node12ToBaseStringILj4ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
  %i.by = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bz = load ptr, ptr %17, align 8              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.p
  %i.cc = load i64, ptr %i.ca, align 8
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.ce = load ptr, ptr %18, align 8              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.ch = load i64, ptr %i.cf, align 8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.r

bb.q:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcEEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args_0) #24
  call void @abort() #25
  unreachable

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.cj = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.ck = icmp ugt i64 %i.cj, %1
  br i1 %i.ck, label %bb.s, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.cj, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60: ; preds = %bb.r
  %i.cl = sub nuw i64 %1, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj
  call void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.cl, ptr %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noalias !481
  %i.cp = load ptr, ptr %7, align 8, !noalias !481
  %i.cq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.cp, i64 noundef %i.co), !noalias !481 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cr, ptr %0, align 8, !alias.scope !481
  %i.cs = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 5 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

bb.t:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cw = load i64, ptr %i.cv, align 8            ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.cx)
  %i.cy = add nuw nsw i64 %i.cw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.ct, i64 %i.cy, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60
  store ptr %i.cs, ptr %0, align 8, !alias.scope !481
  %i.cz = load i64, ptr %i.ct, align 8
  store i64 %i.cz, ptr %i.cr, align 8, !alias.scope !481
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.da = phi i64 [ %i.cw, %bb.t ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.da, ptr %i.dc, align 8, !alias.scope !481
  store ptr %i.ct, ptr %i.cq, align 8
  store i64 0, ptr %i.db, align 8
  store i8 0, ptr %i.ct, align 8
  %i.dd = load ptr, ptr %19, align 8              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.dg = load i64, ptr %i.de, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.di = load ptr, ptr %7, align 8               ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.u
  %i.dl = load i64, ptr %i.dj, align 8
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = alloca [20 x i8], align 16               ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not76 = icmp eq i64 %1, 0
  br i1 %.not76, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.d = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %19 = ptrtoint ptr %i.d to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.f = add nuw i64 %21, 1                       ; 3 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.h = phi i64 [ %i.k, %.critedge2 ], [ %i.f, %bb.b ] ; 4 uses
  %.077 = phi i64 [ %i.h, %.critedge2 ], [ %21, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !484

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.077, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.f, %bb.b ], [ %i.h, %.lr.ph ] ; 4 uses
  %i.l = icmp eq i64 %.lcssa, %1
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.n = load i8, ptr %i.m, align 1
  switch i8 %i.n, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !485
  %i.o = load ptr, ptr %6, align 8, !noalias !485
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !485
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !485
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.r = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.r, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.t = sub nuw i64 %1, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  call void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.t, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.v = load ptr, ptr %10, align 8               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.aa = load ptr, ptr %9, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.q

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa108 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !488
  %i.af = load ptr, ptr %6, align 8, !noalias !488
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !488
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ai = icmp ugt i64 %.lcssa108, %1
  br i1 %i.ai, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa108, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34: ; preds = %.thread
  %i.aj = sub nuw i64 %1, %.lcssa108
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa108
  call void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.aj, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.al = load ptr, ptr %12, align 8              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.aq = load ptr, ptr %11, align 8              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.q

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i.i, ptr @.str.83, ptr %i.av ; 2 uses
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #24
  store i64 %i.ax, ptr %13, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  %i.bb = select i1 %.not.i.i.i, ptr @.str.83, ptr %i.ba ; 2 uses
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #24
  store i64 %i.bc, ptr %14, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bf, null
  %i.bg = select i1 %.not.i.i.i41, ptr @.str.83, ptr %i.bf ; 2 uses
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #24
  store i64 %i.bh, ptr %15, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bk, null
  %i.bl = select i1 %.not.i.i.i44, ptr @.str.83, ptr %i.bk ; 2 uses
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #24
  store i64 %i.bm, ptr %17, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bp = load ptr, ptr %16, align 8              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.j
  %i.bs = load i64, ptr %i.bq, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.bu = load ptr, ptr %3, align 8
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 20, ptr noundef nonnull @.str.77, ptr noundef %i.bu) #24
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.m, label %bb.l, !prof !30

bb.l:                                             ; preds = %bb.k
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args_1) #24
  call void @abort() #25
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.by = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.bz = icmp ugt i64 %i.by, %1
  br i1 %i.bz, label %bb.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.by, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53: ; preds = %bb.n
  %i.ca = sub nuw i64 %1, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  call void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 %i.ca, ptr %i.cb)
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !491
  %i.ce = load ptr, ptr %6, align 8, !noalias !491
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.cd), !noalias !491 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cg, ptr %0, align 8, !alias.scope !491
  %i.ch = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 5 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add nuw nsw i64 %i.cl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.ci, i64 %i.cn, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53
  store ptr %i.ch, ptr %0, align 8, !alias.scope !491
  %i.co = load i64, ptr %i.ci, align 8
  store i64 %i.co, ptr %i.cg, align 8, !alias.scope !491
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  %i.cp = phi i64 [ %i.cl, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cp, ptr %i.cr, align 8, !alias.scope !491
  store ptr %i.ci, ptr %i.cf, align 8
  store i64 0, ptr %i.cq, align 8
  store i8 0, ptr %i.ci, align 8
  %i.cs = load ptr, ptr %18, align 8              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cv = load i64, ptr %i.ct, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.q
  %i.da = load i64, ptr %i.cy, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRPKcEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN4node7SPrintFIJRPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #24
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_RjSB_SB_SB_SB_EEEvP8_IO_FILESt17basic_string_viewIcS7_EDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) local_unnamed_addr #18 comdat {
bb.a:
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @_ZN4node7SPrintFIJRPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_RjSB_SB_SB_SB_EEES9_St17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %11) #24
  %i.a = load ptr, ptr %11, align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_RjSB_SB_SB_SB_EEES9_St17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_RjSB_SB_SB_SB_EEES9_St17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_RjSB_SB_SB_SB_EEES9_St17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = alloca [20 x i8], align 16               ; 4 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not97 = icmp eq i64 %1, 0
  br i1 %.not97, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.d = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %26 = ptrtoint ptr %i.d to i64
  %27 = ptrtoint ptr %2 to i64
  %28 = sub i64 %26, %27                          ; 5 uses
  %.not = icmp eq i64 %28, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_RjSB_SB_SB_SB_EEES9_St17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %28)
  store i64 %.sroa.speculated.i, ptr %14, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.f = add nuw i64 %28, 1                       ; 3 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.h = phi i64 [ %i.k, %.critedge2 ], [ %i.f, %bb.b ] ; 4 uses
  %.098 = phi i64 [ %i.h, %.critedge2 ], [ %28, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !494

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %28, %bb.b ], [ %.098, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.f, %bb.b ], [ %i.h, %.lr.ph ] ; 4 uses
  %i.l = icmp eq i64 %.lcssa, %1
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.n = load i8, ptr %i.m, align 1
  switch i8 %i.n, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !495
  %i.o = load ptr, ptr %13, align 8, !noalias !495
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !495
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !495
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.r = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.r, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.t = sub nuw i64 %1, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  call void @_ZN4node11SPrintFImplIRPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_RjSB_SB_SB_SB_EEES9_St17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, i64 %i.t, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17)
  %i.v = load ptr, ptr %17, align 8               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.aa = load ptr, ptr %16, align 8              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.q

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa129 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !498
  %i.af = load ptr, ptr %13, align 8, !noalias !498
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !498
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !498
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.ai = icmp ugt i64 %.lcssa129, %1
  br i1 %i.ai, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa129, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55: ; preds = %.thread
  %i.aj = sub nuw i64 %1, %.lcssa129
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa129
  call void @_ZN4node11SPrintFImplIRPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_RjSB_SB_SB_SB_EEES9_St17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.aj, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
  %i.al = load ptr, ptr %19, align 8              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  %i.aq = load ptr, ptr %18, align 8              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.q

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i.i, ptr @.str.83, ptr %i.av ; 2 uses
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #24
  store i64 %i.ax, ptr %20, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(16) %20) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  %i.bb = select i1 %.not.i.i.i, ptr @.str.83, ptr %i.ba ; 2 uses
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #24
  store i64 %i.bc, ptr %21, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(16) %21) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.bf, null
  %i.bg = select i1 %.not.i.i.i62, ptr @.str.83, ptr %i.bf ; 2 uses
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #24
  store i64 %i.bh, ptr %22, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(16) %22) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.bk, null
  %i.bl = select i1 %.not.i.i.i65, ptr @.str.83, ptr %i.bk ; 2 uses
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #24
  store i64 %i.bm, ptr %24, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %24)
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %23) ; 0 uses
  %i.bp = load ptr, ptr %23, align 8              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.j
  %i.bs = load i64, ptr %i.bq, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.bu = load ptr, ptr %3, align 8
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 20, ptr noundef nonnull @.str.77, ptr noundef %i.bu) #24
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.m, label %bb.l, !prof !30

bb.l:                                             ; preds = %bb.k
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRPKcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_RjSB_SB_SB_SB_EEES9_St17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args_1) #24
  call void @abort() #25
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.by = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.bz = icmp ugt i64 %i.by, %1
  br i1 %i.bz, label %bb.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit74

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.by, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit74: ; preds = %bb.n
  %i.ca = sub nuw i64 %1, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcRjSB_SB_SB_SB_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, i64 %i.ca, ptr %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !501
  %i.ce = load ptr, ptr %13, align 8, !noalias !501
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.cd), !noalias !501 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cg, ptr %0, align 8, !alias.scope !501
  %i.ch = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 5 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit74
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add nuw nsw i64 %i.cl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.ci, i64 %i.cn, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit74
  store ptr %i.ch, ptr %0, align 8, !alias.scope !501
  %i.co = load i64, ptr %i.ci, align 8
  store i64 %i.co, ptr %i.cg, align 8, !alias.scope !501
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  %i.cp = phi i64 [ %i.cl, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cp, ptr %i.cr, align 8, !alias.scope !501
  store ptr %i.ci, ptr %i.cf, align 8
  store i64 0, ptr %i.cq, align 8
  store i8 0, ptr %i.ci, align 8
  %i.cs = load ptr, ptr %25, align 8              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cv = load i64, ptr %i.ct, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.cx = load ptr, ptr %13, align 8              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.q
  %i.da = load i64, ptr %i.cy, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcRjSB_SB_SB_SB_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not98 = icmp eq i64 %1, 0
  br i1 %.not98, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %25 = ptrtoint ptr %i.c to i64
  %26 = ptrtoint ptr %2 to i64
  %27 = sub i64 %25, %26                          ; 5 uses
  %.not = icmp eq i64 %27, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcRjSB_SB_SB_SB_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %27)
  store i64 %.sroa.speculated.i, ptr %13, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.e = add nuw i64 %27, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.099 = phi i64 [ %i.g, %.critedge2 ], [ %27, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !504

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %27, %bb.b ], [ %.099, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.n
    i8 120, label %bb.o
    i8 88, label %bb.p
    i8 112, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !505
  %i.n = load ptr, ptr %12, align 8, !noalias !505
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !505
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24, !noalias !505
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24, !noalias !505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcRjSB_SB_SB_SB_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16)
  %i.u = load ptr, ptr %16, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.z = load ptr, ptr %15, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.u

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa140 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !508
  %i.ae = load ptr, ptr %12, align 8, !noalias !508
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !508
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !508
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.ah = icmp ugt i64 %.lcssa140, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit50

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa140, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit50: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa140
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa140
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcRjSB_SB_SB_SB_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
  %i.ak = load ptr, ptr %18, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit50
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  %i.ap = load ptr, ptr %17, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.u

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.au = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  store ptr %i.au, ptr %19, align 8, !alias.scope !517
  %i.av = load ptr, ptr %3, align 8, !noalias !517 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !517 ; 8 uses
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.az = icmp slt i64 %i.ax, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ba = add nuw i64 %i.ax, 1                    ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.j
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #26 ; 2 uses
  store ptr %i.bc, ptr %19, align 8, !alias.scope !517
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !517
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.g
  %i.bd = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.au, %bb.g ] ; 3 uses
  switch i64 %i.ax, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load i8, ptr %i.av, align 1
  store i8 %i.be, ptr %i.bd, align 1
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.l, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.ax, ptr %i.bf, align 8, !alias.scope !517
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
end_hunk_10
begin_hunk_11_@_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcRjSB_SB_SB_SB_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_:bb.a
  %i.bi = load ptr, ptr %19, align 8              ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.au
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit
  %i.bk = load i64, ptr %i.au, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.r

bb.n:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @_ZN4node12ToBaseStringILj3ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %20) ; 0 uses
  %i.bn = load ptr, ptr %20, align 8              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.n
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.r

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @_ZN4node12ToBaseStringILj4ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.bs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %21) ; 0 uses
  %i.bt = load ptr, ptr %21, align 8              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.o
  %i.bw = load i64, ptr %i.bu, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.r

bb.p:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @_ZN4node12ToBaseStringILj4ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %23)
  %i.by = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %22) ; 0 uses
  %i.bz = load ptr, ptr %22, align 8              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.p
  %i.cc = load i64, ptr %i.ca, align 8
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  %i.ce = load ptr, ptr %23, align 8              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.ch = load i64, ptr %i.cf, align 8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  br label %bb.r

bb.q:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRPKcRjSB_SB_SB_SB_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args_0) #24
  call void @abort() #25
  unreachable

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.cj = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.ck = icmp ugt i64 %i.cj, %1
  br i1 %i.ck, label %bb.s, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit75

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.cj, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit75: ; preds = %bb.r
  %i.cl = sub nuw i64 %1, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj
  call void @_ZN4node11SPrintFImplIRPKcJRjS4_S4_S4_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, i64 %i.cl, ptr %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !518)
  %i.cn = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noalias !518
  %i.cp = load ptr, ptr %12, align 8, !noalias !518
  %i.cq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef 0, i64 noundef 0, ptr noundef %i.cp, i64 noundef %i.co), !noalias !518 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cr, ptr %0, align 8, !alias.scope !518
  %i.cs = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 5 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

bb.t:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit75
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cw = load i64, ptr %i.cv, align 8            ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 16
  call void @llvm.assume(i1 %i.cx)
  %i.cy = add nuw nsw i64 %i.cw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.ct, i64 %i.cy, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit75
  store ptr %i.cs, ptr %0, align 8, !alias.scope !518
  %i.cz = load i64, ptr %i.ct, align 8
  store i64 %i.cz, ptr %i.cr, align 8, !alias.scope !518
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  %i.da = phi i64 [ %i.cw, %bb.t ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.da, ptr %i.dc, align 8, !alias.scope !518
  store ptr %i.ct, ptr %i.cq, align 8
  store i64 0, ptr %i.db, align 8
  store i8 0, ptr %i.ct, align 8
  %i.dd = load ptr, ptr %24, align 8              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.dg = load i64, ptr %i.de, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.di = load ptr, ptr %12, align 8              ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.u
  %i.dl = load i64, ptr %i.dj, align 8
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRPKcJRjS4_S4_S4_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = alloca [20 x i8], align 16               ; 4 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not91 = icmp eq i64 %1, 0
  br i1 %.not91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.d = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %24 = ptrtoint ptr %i.d to i64
  %25 = ptrtoint ptr %2 to i64
  %26 = sub i64 %24, %25                          ; 5 uses
  %.not = icmp eq i64 %26, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRPKcJRjS4_S4_S4_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %26)
  store i64 %.sroa.speculated.i, ptr %12, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.f = add nuw i64 %26, 1                       ; 3 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.h = phi i64 [ %i.k, %.critedge2 ], [ %i.f, %bb.b ] ; 4 uses
  %.092 = phi i64 [ %i.h, %.critedge2 ], [ %26, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !521

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %26, %bb.b ], [ %.092, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.f, %bb.b ], [ %i.h, %.lr.ph ] ; 4 uses
  %i.l = icmp eq i64 %.lcssa, %1
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.n = load i8, ptr %i.m, align 1
  switch i8 %i.n, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.h
    i8 120, label %bb.i
    i8 88, label %bb.j
    i8 112, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !522
  %i.o = load ptr, ptr %11, align 8, !noalias !522
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !522
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24, !noalias !522
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24, !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.r = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.r, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.t = sub nuw i64 %1, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  call void @_ZN4node11SPrintFImplIRPKcJRjS4_S4_S4_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i64 %i.t, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
  %i.v = load ptr, ptr %15, align 8               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  %i.aa = load ptr, ptr %14, align 8              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.q

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !525
  %i.af = load ptr, ptr %11, align 8, !noalias !525
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !525
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !525
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.ai = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ai, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit49

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa123, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit49: ; preds = %.thread
  %i.aj = sub nuw i64 %1, %.lcssa123
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRPKcJRjS4_S4_S4_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, i64 %i.aj, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17)
  %i.al = load ptr, ptr %17, align 8              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit49
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.aq = load ptr, ptr %16, align 8              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.q

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i.i, ptr @.str.83, ptr %i.av ; 2 uses
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #24
  store i64 %i.ax, ptr %18, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(16) %18) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  %i.bb = select i1 %.not.i.i.i, ptr @.str.83, ptr %i.ba ; 2 uses
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #24
  store i64 %i.bc, ptr %19, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(16) %19) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.bf, null
  %i.bg = select i1 %.not.i.i.i56, ptr @.str.83, ptr %i.bf ; 2 uses
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #24
  store i64 %i.bh, ptr %20, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(16) %20) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %i.bk, null
  %i.bl = select i1 %.not.i.i.i59, ptr @.str.83, ptr %i.bk ; 2 uses
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #24
  store i64 %i.bm, ptr %22, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %22)
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %21) ; 0 uses
  %i.bp = load ptr, ptr %21, align 8              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.j
  %i.bs = load i64, ptr %i.bq, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.bu = load ptr, ptr %3, align 8
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 20, ptr noundef nonnull @.str.77, ptr noundef %i.bu) #24
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.m, label %bb.l, !prof !30

bb.l:                                             ; preds = %bb.k
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRPKcJRjS4_S4_S4_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_E20error_and_abort_args_1) #24
  call void @abort() #25
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  %i.by = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.bz = icmp ugt i64 %i.by, %1
  br i1 %i.bz, label %bb.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit68

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.by, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit68: ; preds = %bb.n
  %i.ca = sub nuw i64 %1, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  call void @_ZN4node11SPrintFImplIRjJS1_S1_S1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, i64 %i.ca, ptr %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !528
  %i.ce = load ptr, ptr %11, align 8, !noalias !528
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.cd), !noalias !528 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cg, ptr %0, align 8, !alias.scope !528
  %i.ch = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 5 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit68
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add nuw nsw i64 %i.cl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.ci, i64 %i.cn, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit68
  store ptr %i.ch, ptr %0, align 8, !alias.scope !528
  %i.co = load i64, ptr %i.ci, align 8
  store i64 %i.co, ptr %i.cg, align 8, !alias.scope !528
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  %i.cp = phi i64 [ %i.cl, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cp, ptr %i.cr, align 8, !alias.scope !528
  store ptr %i.ci, ptr %i.cf, align 8
  store i64 0, ptr %i.cq, align 8
  store i8 0, ptr %i.ci, align 8
  %i.cs = load ptr, ptr %23, align 8              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cv = load i64, ptr %i.ct, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.cx = load ptr, ptr %11, align 8              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.q
  %i.da = load i64, ptr %i.cy, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS6_S9_EEEvP8_IO_FILESt17basic_string_viewIcS4_EDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #18 comdat {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4node7SPrintFIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS6_S9_EEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #29
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  %i.a = load ptr, ptr %6, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS6_S9_EEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS6_S9_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #29
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS6_S9_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not86 = icmp eq i64 %1, 0
  br i1 %.not86, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %21 = ptrtoint ptr %i.c to i64
  %22 = ptrtoint ptr %2 to i64
  %23 = sub i64 %21, %22                          ; 5 uses
  %.not = icmp eq i64 %23, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !214
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !214

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS6_S9_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #24
  tail call void @abort() #25
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %23)
  store i64 %.sroa.speculated.i, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.e = add nuw i64 %23, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.087 = phi i64 [ %i.g, %.critedge2 ], [ %23, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !531

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %23, %bb.b ], [ %.087, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.e, %bb.b ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.k = icmp eq i64 %.lcssa, %1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 37, label %bb.d
    i8 100, label %bb.g
    i8 105, label %bb.g
    i8 117, label %bb.g
    i8 115, label %bb.g
    i8 111, label %bb.n
    i8 120, label %bb.o
    i8 88, label %bb.p
    i8 112, label %bb.q
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !532
  %i.n = load ptr, ptr %8, align 8, !noalias !532
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !532
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !532
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.q, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS6_S9_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.u = load ptr, ptr %12, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.z = load ptr, ptr %11, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.u

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa128 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !535
  %i.ae = load ptr, ptr %8, align 8, !noalias !535
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !535
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.ah = icmp ugt i64 %.lcssa128, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.lcssa128, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa128
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa128
  call void @_ZN4node11SPrintFImplIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS6_S9_EEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #29
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %i.ak = load ptr, ptr %14, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.ap = load ptr, ptr %13, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.u

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.au, ptr %15, align 8, !alias.scope !544
  %i.av = load ptr, ptr %3, align 8, !noalias !544 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !544 ; 8 uses
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.az = icmp slt i64 %i.ax, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ba = add nuw i64 %i.ax, 1                    ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.j
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #26 ; 2 uses
  store ptr %i.bc, ptr %15, align 8, !alias.scope !544
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !544
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.g
  %i.bd = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.au, %bb.g ] ; 3 uses
  switch i64 %i.ax, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load i8, ptr %i.av, align 1
  store i8 %i.be, ptr %i.bd, align 1
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit

_ZN4node20ToStringOrStringViewINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.l, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ax, ptr %i.bf, align 8, !alias.scope !544
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
end_hunk_11
