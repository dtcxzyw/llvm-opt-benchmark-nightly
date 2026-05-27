inline.NumInlined: 6690
inline.NumDeleted: 2431
begin_hunk_0_@_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #36 ; 2 uses
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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !408

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #37
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

declare void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef ptr @_ZN2v812api_internal18GlobalizeReferenceEPNS_8internal7IsolateEm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v812BackingStoreD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.b) #34
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #34
  br label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit

_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRiS1_PKcEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #27 comdat {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @_ZN4node7SPrintFIJRiS1_PKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #34
  %i.a = load ptr, ptr %6, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret void
}

declare void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRiS1_PKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRiJS1_PKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRiJS1_PKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %21 = ptrtoint ptr %i.c to i64
  %22 = ptrtoint ptr %2 to i64
  %23 = sub i64 %21, %22                          ; 5 uses
  %.not = icmp eq i64 %23, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRiJS1_PKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %23)
  store i64 %.sroa.speculated.i, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !410

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
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !411
  %i.n = load ptr, ptr %8, align 8, !noalias !411
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !411
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !411
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRiJS1_PKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.u = load ptr, ptr %12, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.z = load ptr, ptr %11, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa126 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !414
  %i.ae = load ptr, ptr %8, align 8, !noalias !414
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !414
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !414
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.ah = icmp ugt i64 %.lcssa126, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa126, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa126
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa126
  call void @_ZN4node11SPrintFImplIRiJS1_PKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %i.ak = load ptr, ptr %14, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.ap = load ptr, ptr %13, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.av = load ptr, ptr %15, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @_ZN4node12ToBaseStringILj3EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bb = load ptr, ptr %16, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  call void @_ZN4node12ToBaseStringILj4EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bh = load ptr, ptr %17, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
end_hunk_0
begin_hunk_1_@_ZN4node12ToBaseStringILj4EiEEDaRKT0_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.b = load i32, ptr %1, align 4, !noalias !424
  %i.c = sext i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !424
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  store i8 0, ptr %i.d, align 1, !noalias !424
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07.i = phi ptr [ %i.d, %bb.a ], [ %i.h, %bb.b ]
  %.0.i = phi i64 [ %i.c, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %i.e = and i64 %.0.i, 15
  %i.f = getelementptr inbounds nuw i8, ptr @.str.832, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !noalias !424
  %i.h = getelementptr inbounds i8, ptr %.07.i, i64 -1 ; 5 uses
  store i8 %i.g, ptr %i.h, align 1, !noalias !424
  %i.i = lshr i64 %.0.i, 4                        ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !427

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !alias.scope !424
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #34, !noalias !424 ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i64 %i.k, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.750) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = add nuw i64 %i.k, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.f
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #36 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !alias.scope !424
  store i64 %i.k, ptr %i.j, align 8, !alias.scope !424
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  switch i64 %i.k, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN4node14ToStringHelper11BaseConvertILj4EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.h, align 1, !noalias !424
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj4EivEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.s, align 8, !alias.scope !424
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34, !noalias !424
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.750) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.c, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %.thread7.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

.thread7.i.i:                                     ; preds = %bb.d
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #36 ; 2 uses
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
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #34
  %i.r = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #34
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.not.i.i.i, label %bb.i, label %_ZN4node7ToUpperEc.exit

bb.i:                                             ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZN4node7ToUpperEc.exit:                          ; preds = %.lr.ph
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext %i.p) #34, !inline_history !428
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013
  store i8 %i.aa, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 1 ; 2 uses
  %i.ae = add nuw i64 %.013, 1
  %i.af = icmp eq ptr %i.ad, %i.d
  br i1 %i.af, label %._crit_edge, label %.lr.ph, !llvm.loop !429

._crit_edge:                                      ; preds = %_ZN4node7ToUpperEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRiJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRiJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !430

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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !431
  %i.n = load ptr, ptr %7, align 8, !noalias !431
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !431
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !431
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRiJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !434
  %i.ae = load ptr, ptr %7, align 8, !noalias !434
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !434
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !434
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa123, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRiJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj3EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @_ZN4node12ToBaseStringILj4EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm:_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.q) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.k, ptr %0, align 8
  store i64 %.0, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.b = tail call i32 @llvm.abs.i32(i32 %i.a, i1 false) ; 5 uses
  %i.c = icmp ult i32 %i.b, 10
  br i1 %i.c, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.02230.i.i = phi i32 [ %i.j, %bb.g ], [ %i.b, %bb.a ] ; 5 uses
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
  br i1 %i.l, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !199

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.i, %bb.f ], [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ 1, %bb.a ], [ %i.k, %bb.g ] ; 2 uses
  %.lobit.i = lshr i32 %i.a, 31                   ; 2 uses
  %i.m = add i32 %.0.i.i, %.lobit.i               ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.o, ptr %0, align 8, !alias.scope !440
  %i.p = icmp ugt i32 %i.m, 15
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.q = add nuw nsw i64 %i.n, 1
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !alias.scope !440
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !440
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %i.m, label %bb.k [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  store i8 45, ptr %i.o, align 8, !alias.scope !440
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.r, %bb.h ], [ %i.o, %bb.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 45, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.t = phi ptr [ %i.o, %bb.i ], [ %i.o, %bb.j ], [ %i.s, %bb.k ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.u, align 8, !alias.scope !440
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  store i8 0, ptr %i.v, align 1
  %i.w = zext nneg i32 %.lobit.i to i64
  %i.x = load ptr, ptr %0, align 8, !alias.scope !440
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
  %i.af = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !440
  %i.ai = zext i32 %.01819.i.i to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  store i8 %i.ah, ptr %i.aj, align 1
  %i.ak = load i8, ptr %i.af, align 2, !noalias !440
  %i.al = add i32 %.01819.i.i, -1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.am
  store i8 %i.ak, ptr %i.an, align 1
  %i.ao = add i32 %.01819.i.i, -2
  %i.ap = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.ap, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !200

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.ad, %.lr.ph.i11.i ] ; 3 uses
  %i.aq = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ar = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !noalias !440
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = load i8, ptr %i.at, align 2, !noalias !440
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #21

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #14

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat {
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
  %i.d = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %19 = ptrtoint ptr %i.d to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !443

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !444
  %i.o = load ptr, ptr %6, align 8, !noalias !444
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !444
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !444
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.r = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.r, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.t = sub nuw i64 %1, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  call void @_ZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.t, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.v = load ptr, ptr %10, align 8               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.aa = load ptr, ptr %9, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.q

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa108 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !447
  %i.af = load ptr, ptr %6, align 8, !noalias !447
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !447
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !447
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.ai = icmp ugt i64 %.lcssa108, %1
  br i1 %i.ai, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa108, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34: ; preds = %.thread
  %i.aj = sub nuw i64 %1, %.lcssa108
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa108
  call void @_ZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.aj, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.al = load ptr, ptr %12, align 8              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.aq = load ptr, ptr %11, align 8              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.q

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i.i, ptr @.str.835, ptr %i.av ; 2 uses
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #34
  store i64 %i.ax, ptr %13, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  %i.bb = select i1 %.not.i.i.i, ptr @.str.835, ptr %i.ba ; 2 uses
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #34
  store i64 %i.bc, ptr %14, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bf, null
  %i.bg = select i1 %.not.i.i.i41, ptr @.str.835, ptr %i.bf ; 2 uses
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #34
  store i64 %i.bh, ptr %15, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bk, null
  %i.bl = select i1 %.not.i.i.i44, ptr @.str.835, ptr %i.bk ; 2 uses
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #34
  store i64 %i.bm, ptr %17, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bp = load ptr, ptr %16, align 8              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
end_hunk_2
begin_hunk_3_@_ZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_:bb.a

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.q
  %i.da = load i64, ptr %i.cy, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret void
}

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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.750) #35
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.c, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %.thread7.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

.thread7.i.i:                                     ; preds = %bb.d
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #36 ; 2 uses
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
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #34
  %i.r = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #34
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.not.i.i.i, label %bb.i, label %_ZN4node7ToUpperEc.exit

bb.i:                                             ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #35
  unreachable

_ZN4node7ToUpperEc.exit:                          ; preds = %.lr.ph
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext %i.p) #34, !inline_history !428
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013
  store i8 %i.aa, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.01012, i64 1 ; 2 uses
  %i.ae = add nuw i64 %.013, 1
  %.not = icmp eq ptr %i.ad, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !453

._crit_edge:                                      ; preds = %_ZN4node7ToUpperEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
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
  %i.b = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 3 uses
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
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.749) #35
  unreachable

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %i.h = icmp ugt i64 %1, 15
  br i1 %i.h, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %1, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.750) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = add nuw i64 %1, 1                        ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %._crit_edge.i.i.i.i.thread42, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

._crit_edge.i.i.i.i.thread42:                     ; preds = %bb.f
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #36 ; 2 uses
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
  br i1 %i.s, label %bb.l, label %bb.k, !prof !28

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 37
  br i1 %i.v, label %bb.n, label %bb.m, !prof !28

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE20error_and_abort_args_0) #34
  tail call void @abort() #35
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.w, ptr %3, align 8
  %i.x = icmp ugt i64 %i.e, 14
  br i1 %i.x, label %bb.o, label %._crit_edge.i.i.i.i10

bb.o:                                             ; preds = %bb.n
  %i.y = icmp slt i64 %i.r, 0
  br i1 %i.y, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.750) #35
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.z = add nuw i64 %i.e, 2                      ; 2 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11, !prof !5

bb.r:                                             ; preds = %bb.q
  call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11: ; preds = %bb.q
  %i.ab = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #36 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
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
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ao = load ptr, ptr %3, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.w
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.w, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ret void
}

declare void @_ZN2v823ExternalMemoryAccounter8DecreaseEPNS_7IsolateEm(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v812BackingStoreESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v812BackingStoreESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 13 uses
  store ptr null, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.g, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.c, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20, label %bb.b

bb.b:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v812BackingStoreESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.j = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_3
begin_hunk_4_@_ZN4node27UnconditionalAsyncWrapDebugIJEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.bd = icmp eq i64 %.pre.i11, 9223372036854775807
  br i1 %i.bd, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit12
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !463
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit12
  %i.be = add nsw i64 %.pre.i11, 1                ; 2 uses
  %i.bf = icmp eq ptr %i.au, %i.at
  br i1 %i.bf, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i14

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13
  %i.bg = phi i64 [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13.thread ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13 ]
  %i.bh = phi ptr [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13.thread ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13 ]
  %i.bi = phi i64 [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13.thread ], [ %.pre.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13 ] ; 2 uses
  %i.bj = phi ptr [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13.thread ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13 ]
  %i.bk = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i14: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13
  %i.bl = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13 ]
  %i.bm = phi i64 [ %i.bg, %bb.o ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13 ] ; 3 uses
  %i.bn = phi ptr [ %i.bh, %bb.o ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13 ]
  %i.bo = phi i64 [ %i.bi, %bb.o ], [ %.pre.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13 ] ; 2 uses
  %i.bp = phi ptr [ %i.bj, %bb.o ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13 ] ; 4 uses
  %i.bq = load i64, ptr %i.at, align 8, !noalias !463
  %i.br = select i1 %i.bl, i64 15, i64 %i.bq
  %.not.i.i.i15 = icmp ugt i64 %i.bm, %i.br
  br i1 %.not.i.i.i15, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  store i8 10, ptr %i.bs, align 1, !noalias !463
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bo, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !463
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18: ; preds = %bb.q, %bb.p
  store i64 %i.bm, ptr %i.bp, align 8, !noalias !463
  %i.bt = load ptr, ptr %3, align 8, !noalias !463
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bm
  store i8 0, ptr %i.bu, align 1, !noalias !463
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.bv, ptr %2, align 8, !alias.scope !463
  %i.bw = load ptr, ptr %3, align 8, !noalias !463 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, %i.at
  br i1 %i.bx, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18
  %i.by = load i64, ptr %i.bp, align 8, !noalias !463 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ca, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18
  store ptr %i.bw, ptr %2, align 8, !alias.scope !463
  %i.cb = load i64, ptr %i.at, align 8, !noalias !463
  store i64 %i.cb, ptr %i.bv, align 8, !alias.scope !463
  %.pre.i20 = load i64, ptr %i.bp, align 8, !noalias !463
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit21

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit21: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  %i.cc = phi ptr [ %i.bv, %bb.r ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ] ; 2 uses
  %i.cd = phi i64 [ %i.by, %bb.r ], [ %.pre.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cd, ptr %i.ce, align 8, !alias.scope !463
  store ptr %i.at, ptr %3, align 8, !noalias !463
  store i64 0, ptr %i.bp, align 8, !noalias !463
  store i8 0, ptr %i.at, align 8, !noalias !463
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 2512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cc, ptr %i.a, align 8
  %i.cg = zext i32 %i.g to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !range !26, !noundef !29
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.s, label %_ZN4node5DebugIJEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit21
  %i.ck = load ptr, ptr @stderr, align 8
  call void @_ZN4node7FPrintFIJRPKcEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.ck, i64 2, ptr nonnull @.str.850, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #39
  %.pre = load ptr, ptr %2, align 8
  br label %_ZN4node5DebugIJEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit21, %bb.s
  %i.cl = phi ptr [ %i.cc, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit21 ], [ %.pre, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cm = icmp eq ptr %i.cl, %i.bv
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZN4node5DebugIJEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bv, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.cp = load ptr, ptr %3, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.at
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.at, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.ct = load ptr, ptr %4, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.x
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.cv = load i64, ptr %i.x, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.cx = load ptr, ptr %5, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.p
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.cz = load i64, ptr %i.p, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRPKcEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN4node7SPrintFIJRPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat {
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
  %i.d = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %19 = ptrtoint ptr %i.d to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !466

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !467
  %i.o = load ptr, ptr %6, align 8, !noalias !467
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !467
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !467
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.r = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.r, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.t = sub nuw i64 %1, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  call void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.t, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.v = load ptr, ptr %10, align 8               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.aa = load ptr, ptr %9, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.q

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa108 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !470
  %i.af = load ptr, ptr %6, align 8, !noalias !470
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !470
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.ai = icmp ugt i64 %.lcssa108, %1
  br i1 %i.ai, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa108, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34: ; preds = %.thread
  %i.aj = sub nuw i64 %1, %.lcssa108
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa108
  call void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.aj, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.al = load ptr, ptr %12, align 8              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.aq = load ptr, ptr %11, align 8              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.q

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i.i, ptr @.str.835, ptr %i.av ; 2 uses
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #34
  store i64 %i.ax, ptr %13, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  %i.bb = select i1 %.not.i.i.i, ptr @.str.835, ptr %i.ba ; 2 uses
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #34
  store i64 %i.bc, ptr %14, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bf, null
  %i.bg = select i1 %.not.i.i.i41, ptr @.str.835, ptr %i.bf ; 2 uses
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #34
  store i64 %i.bh, ptr %15, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bk, null
  %i.bl = select i1 %.not.i.i.i44, ptr @.str.835, ptr %i.bk ; 2 uses
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #34
  store i64 %i.bm, ptr %17, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bp = load ptr, ptr %16, align 8              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
end_hunk_4
begin_hunk_5_@_ZN4node27UnconditionalAsyncWrapDebugIJRjEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %5, align 8, !noalias !534
  store i64 0, ptr %i.af, align 8, !noalias !534
  store i8 0, ptr %i.w, align 8, !noalias !534
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.bc = icmp eq i64 %.pre.i12, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !537
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  %i.bd = add nsw i64 %.pre.i12, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !537
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i16 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !537
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !537
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !537
  %i.bs = load ptr, ptr %4, align 8, !noalias !537
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !537
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bu, ptr %3, align 8, !alias.scope !537
  %i.bv = load ptr, ptr %4, align 8, !noalias !537 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !537 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  store ptr %i.bv, ptr %3, align 8, !alias.scope !537
  %i.ca = load i64, ptr %i.as, align 8, !noalias !537
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !537
  %.pre.i21 = load i64, ptr %i.bo, align 8, !noalias !537
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !537
  store ptr %i.as, ptr %4, align 8, !noalias !537
  store i64 0, ptr %i.bo, align 8, !noalias !537
  store i8 0, ptr %i.as, align 8, !noalias !537
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJRjEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJRjEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %2) #39
  %.pre = load ptr, ptr %3, align 8
  br label %_ZN4node5DebugIJRjEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJRjEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN4node5DebugIJRjEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJRjEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.cp = load ptr, ptr %4, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.ct = load ptr, ptr %5, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRjEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #27 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN4node7SPrintFIJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !540

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !541
  %i.n = load ptr, ptr %6, align 8, !noalias !541
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !541
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !541
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !544
  %i.ae = load ptr, ptr %6, align 8, !noalias !544
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !544
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !544
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa120, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node12ToBaseStringILj3EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
end_hunk_5
begin_hunk_6_@_ZN4node27UnconditionalAsyncWrapDebugIJiEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %5, align 8, !noalias !565
  store i64 0, ptr %i.af, align 8, !noalias !565
  store i8 0, ptr %i.w, align 8, !noalias !565
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.bc = icmp eq i64 %.pre.i12, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !568
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  %i.bd = add nsw i64 %.pre.i12, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !568
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i16 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !568
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !568
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !568
  %i.bs = load ptr, ptr %4, align 8, !noalias !568
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !568
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bu, ptr %3, align 8, !alias.scope !568
  %i.bv = load ptr, ptr %4, align 8, !noalias !568 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !568 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  store ptr %i.bv, ptr %3, align 8, !alias.scope !568
  %i.ca = load i64, ptr %i.as, align 8, !noalias !568
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !568
  %.pre.i21 = load i64, ptr %i.bo, align 8, !noalias !568
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !568
  store ptr %i.as, ptr %4, align 8, !noalias !568
  store i64 0, ptr %i.bo, align 8, !noalias !568
  store i8 0, ptr %i.as, align 8, !noalias !568
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJiEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %2) #39
  %.pre = load ptr, ptr %3, align 8
  br label %_ZN4node5DebugIJiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN4node5DebugIJiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.cp = load ptr, ptr %4, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.ct = load ptr, ptr %5, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJiEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #27 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN4node7SPrintFIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !571

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !572
  %i.n = load ptr, ptr %6, align 8, !noalias !572
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !572
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !572
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !575
  %i.ae = load ptr, ptr %6, align 8, !noalias !575
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !575
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !575
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa120, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node12ToBaseStringILj3EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj4EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
end_hunk_6
begin_hunk_7_@_ZN4node27UnconditionalAsyncWrapDebugIJRiEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %5, align 8, !noalias !585
  store i64 0, ptr %i.af, align 8, !noalias !585
  store i8 0, ptr %i.w, align 8, !noalias !585
  call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.bc = icmp eq i64 %.pre.i12, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !588
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  %i.bd = add nsw i64 %.pre.i12, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !588
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i16 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !588
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !588
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !588
  %i.bs = load ptr, ptr %4, align 8, !noalias !588
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !588
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bu, ptr %3, align 8, !alias.scope !588
  %i.bv = load ptr, ptr %4, align 8, !noalias !588 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !588 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  store ptr %i.bv, ptr %3, align 8, !alias.scope !588
  %i.ca = load i64, ptr %i.as, align 8, !noalias !588
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !588
  %.pre.i21 = load i64, ptr %i.bo, align 8, !noalias !588
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !588
  store ptr %i.as, ptr %4, align 8, !noalias !588
  store i64 0, ptr %i.bo, align 8, !noalias !588
  store i8 0, ptr %i.as, align 8, !noalias !588
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJRiEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %2) #39
  %.pre = load ptr, ptr %3, align 8
  br label %_ZN4node5DebugIJRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN4node5DebugIJRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.cp = load ptr, ptr %4, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.ct = load ptr, ptr %5, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRiEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #27 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN4node7SPrintFIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !591

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !592
  %i.n = load ptr, ptr %6, align 8, !noalias !592
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !592
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !592
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !595
  %i.ae = load ptr, ptr %6, align 8, !noalias !595
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !595
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !595
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa120, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIRiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node12ToBaseStringILj3EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj4EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
end_hunk_7
begin_hunk_8_@_ZN4node27UnconditionalAsyncWrapDebugIJRmEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %5, align 8, !noalias !605
  store i64 0, ptr %i.af, align 8, !noalias !605
  store i8 0, ptr %i.w, align 8, !noalias !605
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.bc = icmp eq i64 %.pre.i12, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !608
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  %i.bd = add nsw i64 %.pre.i12, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !608
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i16 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !608
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !608
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !608
  %i.bs = load ptr, ptr %4, align 8, !noalias !608
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !608
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bu, ptr %3, align 8, !alias.scope !608
  %i.bv = load ptr, ptr %4, align 8, !noalias !608 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !608 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  store ptr %i.bv, ptr %3, align 8, !alias.scope !608
  %i.ca = load i64, ptr %i.as, align 8, !noalias !608
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !608
  %.pre.i21 = load i64, ptr %i.bo, align 8, !noalias !608
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !608
  store ptr %i.as, ptr %4, align 8, !noalias !608
  store i64 0, ptr %i.bo, align 8, !noalias !608
  store i8 0, ptr %i.as, align 8, !noalias !608
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJRmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJRmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %2) #39
  %.pre = load ptr, ptr %3, align 8
  br label %_ZN4node5DebugIJRmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJRmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN4node5DebugIJRmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJRmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.cp = load ptr, ptr %4, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.ct = load ptr, ptr %5, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN4node7SPrintFIJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !611

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !612
  %i.n = load ptr, ptr %6, align 8, !noalias !612
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !612
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !612
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !615
  %i.ae = load ptr, ptr %6, align 8, !noalias !615
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !615
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !615
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa120, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
end_hunk_8
begin_hunk_9_@_ZN4node27UnconditionalAsyncWrapDebugIJRmiEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %6, align 8, !noalias !635
  store i64 0, ptr %i.af, align 8, !noalias !635
  store i8 0, ptr %i.w, align 8, !noalias !635
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.bc = icmp eq i64 %.pre.i13, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit14
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !638
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit14
  %i.bd = add nsw i64 %.pre.i13, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !638
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i17 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i17, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !638
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !638
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !638
  %i.bs = load ptr, ptr %5, align 8, !noalias !638
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !638
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.bu, ptr %4, align 8, !alias.scope !638
  %i.bv = load ptr, ptr %5, align 8, !noalias !638 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !638 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20
  store ptr %i.bv, ptr %4, align 8, !alias.scope !638
  %i.ca = load i64, ptr %i.as, align 8, !noalias !638
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !638
  %.pre.i22 = load i64, ptr %i.bo, align 8, !noalias !638
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !638
  store ptr %i.as, ptr %5, align 8, !noalias !638
  store i64 0, ptr %i.bo, align 8, !noalias !638
  store i8 0, ptr %i.as, align 8, !noalias !638
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJRmiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJRmiEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN4node5DebugIJRmiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJRmiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZN4node5DebugIJRmiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJRmiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.cp = load ptr, ptr %5, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.ct = load ptr, ptr %6, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  %i.cx = load ptr, ptr %7, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRmiEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #27 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN4node7SPrintFIJRmiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #34
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRmiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRmJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRmJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRmJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !641

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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !642
  %i.n = load ptr, ptr %7, align 8, !noalias !642
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !642
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !642
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRmJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !645
  %i.ae = load ptr, ptr %7, align 8, !noalias !645
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !645
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !645
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa123, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRmJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
end_hunk_9
begin_hunk_10_@_ZN4node27UnconditionalAsyncWrapDebugIJRlPKcEEEvPNS_9AsyncWrapES3_DpOT_:bb.a
  store ptr %i.w, ptr %6, align 8, !noalias !654
  store i64 0, ptr %i.af, align 8, !noalias !654
  store i8 0, ptr %i.w, align 8, !noalias !654
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.bc = icmp eq i64 %.pre.i13, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit14
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !657
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit14
  %i.bd = add nsw i64 %.pre.i13, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !657
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i17 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i17, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !657
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !657
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !657
  %i.bs = load ptr, ptr %5, align 8, !noalias !657
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !657
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.bu, ptr %4, align 8, !alias.scope !657
  %i.bv = load ptr, ptr %5, align 8, !noalias !657 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !657 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20
  store ptr %i.bv, ptr %4, align 8, !alias.scope !657
  %i.ca = load i64, ptr %i.as, align 8, !noalias !657
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !657
  %.pre.i22 = load i64, ptr %i.bo, align 8, !noalias !657
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !657
  store ptr %i.as, ptr %5, align 8, !noalias !657
  store i64 0, ptr %i.bo, align 8, !noalias !657
  store i8 0, ptr %i.as, align 8, !noalias !657
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJRlPKcEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJRlPKcEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN4node5DebugIJRlPKcEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJRlPKcEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZN4node5DebugIJRlPKcEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJRlPKcEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.cp = load ptr, ptr %5, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.ct = load ptr, ptr %6, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  %i.cx = load ptr, ptr %7, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRlPKcEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #27 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN4node7SPrintFIJRlPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #34
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRlPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRlJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRlJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRlJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !660

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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !661
  %i.n = load ptr, ptr %7, align 8, !noalias !661
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !661
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !661
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRlJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !664
  %i.ae = load ptr, ptr %7, align 8, !noalias !664
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !664
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !664
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa123, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRlJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node14ToStringHelper7ConvertIlbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj3ElEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @_ZN4node12ToBaseStringILj4ElEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
end_hunk_10
begin_hunk_11_@_ZN4node27UnconditionalAsyncWrapDebugIJRKhEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %5, align 8, !noalias !684
  store i64 0, ptr %i.af, align 8, !noalias !684
  store i8 0, ptr %i.w, align 8, !noalias !684
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.bc = icmp eq i64 %.pre.i12, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !687
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  %i.bd = add nsw i64 %.pre.i12, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !687
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i16 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !687
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !687
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !687
  %i.bs = load ptr, ptr %4, align 8, !noalias !687
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !687
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bu, ptr %3, align 8, !alias.scope !687
  %i.bv = load ptr, ptr %4, align 8, !noalias !687 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !687 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  store ptr %i.bv, ptr %3, align 8, !alias.scope !687
  %i.ca = load i64, ptr %i.as, align 8, !noalias !687
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !687
  %.pre.i21 = load i64, ptr %i.bo, align 8, !noalias !687
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !687
  store ptr %i.as, ptr %4, align 8, !noalias !687
  store i64 0, ptr %i.bo, align 8, !noalias !687
  store i8 0, ptr %i.as, align 8, !noalias !687
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJRKhEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJRKhEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 1 dereferenceable(1) %2) #39
  %.pre = load ptr, ptr %3, align 8
  br label %_ZN4node5DebugIJRKhEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJRKhEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN4node5DebugIJRKhEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJRKhEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.cp = load ptr, ptr %4, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.ct = load ptr, ptr %5, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRKhEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #27 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN4node7SPrintFIJRKhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRKhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRKhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRKhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #27 comdat {
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
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not81 = icmp eq i64 %1, 0
  br i1 %.not81, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRKhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.e = add nuw i64 %21, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.082 = phi i64 [ %i.g, %.critedge2 ], [ %21, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !690

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.082, %.lr.ph ] ; 2 uses
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
    i8 111, label %bb.i
    i8 120, label %bb.j
    i8 88, label %bb.k
    i8 112, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !691
  %i.n = load ptr, ptr %6, align 8, !noalias !691
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !691
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !691
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRKhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 1 dereferenceable(1) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.p

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa124 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !694
  %i.ae = load ptr, ptr %6, align 8, !noalias !694
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !694
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !694
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.ah = icmp ugt i64 %.lcssa124, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa124, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa124
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa124
  call void @_ZN4node11SPrintFImplIRKhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.p

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.au = load i8, ptr %3, align 1, !noalias !703 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.av = icmp ult i8 %i.au, 10
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.aw, ptr %13, align 8, !alias.scope !707
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i: ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.ax, align 8, !alias.scope !707
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i: ; preds = %bb.g
  %i.ay = icmp ult i8 %i.au, 100                  ; 2 uses
  %i.az = select i1 %i.ay, i64 2, i64 3           ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2) %i.aw, i8 45, i64 %i.az, i1 false), !alias.scope !703
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !alias.scope !707
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %13, i64 18 ; 2 uses
  %.sroa.gep87 = getelementptr inbounds nuw i8, ptr %13, i64 19
  %.sroa.sel.v.sroa.sel = select i1 %i.ay, ptr %.sroa.gep, ptr %.sroa.gep87
  store i8 0, ptr %.sroa.sel.v.sroa.sel, align 1, !alias.scope !703
  %i.bb = icmp ugt i8 %i.au, 99
  br i1 %i.bb, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i
  %i.bc = urem i8 %i.au, 100
  %i.bd = shl nuw i8 %i.bc, 1
  %i.be = udiv i8 %i.au, 100
  %i.bf = zext i8 %i.bd to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !707
  store i8 %i.bi, ptr %.sroa.gep, align 2, !alias.scope !703
  %i.bj = load i8, ptr %i.bg, align 2, !noalias !707
  br label %bb.h, !llvm.loop !200

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i
  %i.bk = shl nuw i8 %i.au, 1
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !707
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 %i.bo, ptr %i.bp, align 1, !alias.scope !703
  %i.bq = load i8, ptr %i.bm, align 2, !noalias !707
  br label %_ZN4node20ToStringOrStringViewIhEEDaRKT_.exit

bb.h:                                             ; preds = %.lr.ph.preheader.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i
  %.sink.i.i = phi i8 [ %i.bj, %.lr.ph.preheader.i.i.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i ]
  %.0.lcssa.i.i.ph.i.i = phi i8 [ %i.be, %.lr.ph.preheader.i.i.i.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i ]
end_hunk_11
begin_hunk_12_@_ZN4node27UnconditionalAsyncWrapDebugIJRjRKjRiEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %7, align 8, !noalias !722
  store i64 0, ptr %i.af, align 8, !noalias !722
  store i8 0, ptr %i.w, align 8, !noalias !722
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %i.bc = icmp eq i64 %.pre.i14, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit15
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !725
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit15
  %i.bd = add nsw i64 %.pre.i14, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16.thread ], [ %.pre.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !725
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i18 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !725
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !725
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !725
  %i.bs = load ptr, ptr %6, align 8, !noalias !725
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !725
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bu, ptr %5, align 8, !alias.scope !725
  %i.bv = load ptr, ptr %6, align 8, !noalias !725 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !725 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21
  store ptr %i.bv, ptr %5, align 8, !alias.scope !725
  %i.ca = load i64, ptr %i.as, align 8, !noalias !725
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !725
  %.pre.i23 = load i64, ptr %i.bo, align 8, !noalias !725
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit24

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit24: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !725
  store ptr %i.as, ptr %6, align 8, !noalias !725
  store i64 0, ptr %i.bo, align 8, !noalias !725
  store i8 0, ptr %i.as, align 8, !noalias !725
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJRjRKjRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit24
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJRjRKjRiEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  %.pre = load ptr, ptr %5, align 8
  br label %_ZN4node5DebugIJRjRKjRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJRjRKjRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit24, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit24 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZN4node5DebugIJRjRKjRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJRjRKjRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.cp = load ptr, ptr %6, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.ct = load ptr, ptr %7, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.cx = load ptr, ptr %8, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRjRKjRiEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #27 comdat {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @_ZN4node7SPrintFIJRjRKjRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #34
  %i.a = load ptr, ptr %6, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRjRKjRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRjJRKjRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRjJRKjRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %21 = ptrtoint ptr %i.c to i64
  %22 = ptrtoint ptr %2 to i64
  %23 = sub i64 %21, %22                          ; 5 uses
  %.not = icmp eq i64 %23, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJRKjRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %23)
  store i64 %.sroa.speculated.i, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !728

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
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !729
  %i.n = load ptr, ptr %8, align 8, !noalias !729
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !729
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !729
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRjJRKjRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.u = load ptr, ptr %12, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.z = load ptr, ptr %11, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa126 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !732
  %i.ae = load ptr, ptr %8, align 8, !noalias !732
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !732
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !732
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.ah = icmp ugt i64 %.lcssa126, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa126, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa126
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa126
  call void @_ZN4node11SPrintFImplIRjJRKjRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %i.ak = load ptr, ptr %14, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.ap = load ptr, ptr %13, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.av = load ptr, ptr %15, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @_ZN4node12ToBaseStringILj3EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bb = load ptr, ptr %16, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bh = load ptr, ptr %17, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
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
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  %i.bs = load ptr, ptr %19, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJRKjRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS8_EOT_DpOT0_E20error_and_abort_args_0) #34
  call void @abort() #35
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit63

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.bx, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit63: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplIRKjJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, i64 %i.bz, ptr %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !735
  %i.cd = load ptr, ptr %8, align 8, !noalias !735
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !735 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !735
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
  store ptr %i.cg, ptr %0, align 8, !alias.scope !735
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !735
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !735
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
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.cw = load ptr, ptr %8, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRKjJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRKjJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !738

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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !739
  %i.n = load ptr, ptr %7, align 8, !noalias !739
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !739
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !739
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRKjJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !742
  %i.ae = load ptr, ptr %7, align 8, !noalias !742
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !742
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !742
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa123, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRKjJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj3EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
end_hunk_12
begin_hunk_13_@_ZN4node27UnconditionalAsyncWrapDebugIJRKhRiEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %6, align 8, !noalias !751
  store i64 0, ptr %i.af, align 8, !noalias !751
  store i8 0, ptr %i.w, align 8, !noalias !751
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  %i.bc = icmp eq i64 %.pre.i13, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit14
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !754
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit14
  %i.bd = add nsw i64 %.pre.i13, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !754
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i17 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i17, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !754
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !754
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !754
  %i.bs = load ptr, ptr %5, align 8, !noalias !754
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !754
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.bu, ptr %4, align 8, !alias.scope !754
  %i.bv = load ptr, ptr %5, align 8, !noalias !754 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !754 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20
  store ptr %i.bv, ptr %4, align 8, !alias.scope !754
  %i.ca = load i64, ptr %i.as, align 8, !noalias !754
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !754
  %.pre.i22 = load i64, ptr %i.bo, align 8, !noalias !754
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !754
  store ptr %i.as, ptr %5, align 8, !noalias !754
  store i64 0, ptr %i.bo, align 8, !noalias !754
  store i8 0, ptr %i.as, align 8, !noalias !754
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJRKhRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJRKhRiEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN4node5DebugIJRKhRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJRKhRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZN4node5DebugIJRKhRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJRKhRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.cp = load ptr, ptr %5, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.ct = load ptr, ptr %6, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  %i.cx = load ptr, ptr %7, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRKhRiEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #27 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN4node7SPrintFIJRKhRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #34
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRKhRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRKhJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRKhJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #27 comdat {
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
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not84 = icmp eq i64 %1, 0
  br i1 %.not84, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRKhJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.e = add nuw i64 %22, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.085 = phi i64 [ %i.g, %.critedge2 ], [ %22, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !757

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %22, %bb.b ], [ %.085, %.lr.ph ] ; 2 uses
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
    i8 111, label %bb.i
    i8 120, label %bb.j
    i8 88, label %bb.k
    i8 112, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !758
  %i.n = load ptr, ptr %7, align 8, !noalias !758
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !758
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !758
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRKhJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.p

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa127 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !761
  %i.ae = load ptr, ptr %7, align 8, !noalias !761
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !761
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !761
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.ah = icmp ugt i64 %.lcssa127, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa127, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa127
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa127
  call void @_ZN4node11SPrintFImplIRKhJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.p

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.au = load i8, ptr %3, align 1, !noalias !770 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.av = icmp ult i8 %i.au, 10
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.aw, ptr %14, align 8, !alias.scope !774
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i: ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.ax, align 8, !alias.scope !774
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i: ; preds = %bb.g
  %i.ay = icmp ult i8 %i.au, 100                  ; 2 uses
  %i.az = select i1 %i.ay, i64 2, i64 3           ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2) %i.aw, i8 45, i64 %i.az, i1 false), !alias.scope !770
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !alias.scope !774
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %14, i64 18 ; 2 uses
  %.sroa.gep90 = getelementptr inbounds nuw i8, ptr %14, i64 19
  %.sroa.sel.v.sroa.sel = select i1 %i.ay, ptr %.sroa.gep, ptr %.sroa.gep90
  store i8 0, ptr %.sroa.sel.v.sroa.sel, align 1, !alias.scope !770
  %i.bb = icmp ugt i8 %i.au, 99
  br i1 %i.bb, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i
  %i.bc = urem i8 %i.au, 100
  %i.bd = shl nuw i8 %i.bc, 1
  %i.be = udiv i8 %i.au, 100
  %i.bf = zext i8 %i.bd to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !774
  store i8 %i.bi, ptr %.sroa.gep, align 2, !alias.scope !770
  %i.bj = load i8, ptr %i.bg, align 2, !noalias !774
  br label %bb.h, !llvm.loop !200

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i
  %i.bk = shl nuw i8 %i.au, 1
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !774
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 %i.bo, ptr %i.bp, align 1, !alias.scope !770
  %i.bq = load i8, ptr %i.bm, align 2, !noalias !774
  br label %_ZN4node20ToStringOrStringViewIhEEDaRKT_.exit

bb.h:                                             ; preds = %.lr.ph.preheader.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i
  %.sink.i.i = phi i8 [ %i.bj, %.lr.ph.preheader.i.i.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i ]
  %.0.lcssa.i.i.ph.i.i = phi i8 [ %i.be, %.lr.ph.preheader.i.i.i.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i ]
end_hunk_13
begin_hunk_14_@_ZN4node27UnconditionalAsyncWrapDebugIJRiRjEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %6, align 8, !noalias !781
  store i64 0, ptr %i.af, align 8, !noalias !781
  store i8 0, ptr %i.w, align 8, !noalias !781
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.bc = icmp eq i64 %.pre.i13, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit14
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !784
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit14
  %i.bd = add nsw i64 %.pre.i13, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !784
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i17 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i17, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !784
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !784
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !784
  %i.bs = load ptr, ptr %5, align 8, !noalias !784
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !784
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.bu, ptr %4, align 8, !alias.scope !784
  %i.bv = load ptr, ptr %5, align 8, !noalias !784 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !784 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20
  store ptr %i.bv, ptr %4, align 8, !alias.scope !784
  %i.ca = load i64, ptr %i.as, align 8, !noalias !784
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !784
  %.pre.i22 = load i64, ptr %i.bo, align 8, !noalias !784
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !784
  store ptr %i.as, ptr %5, align 8, !noalias !784
  store i64 0, ptr %i.bo, align 8, !noalias !784
  store i8 0, ptr %i.as, align 8, !noalias !784
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJRiRjEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJRiRjEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN4node5DebugIJRiRjEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJRiRjEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZN4node5DebugIJRiRjEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJRiRjEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.cp = load ptr, ptr %5, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.ct = load ptr, ptr %6, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  %i.cx = load ptr, ptr %7, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRiRjEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #27 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN4node7SPrintFIJRiRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #34
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRiRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRiJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRiJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRiJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !787

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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !788
  %i.n = load ptr, ptr %7, align 8, !noalias !788
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !788
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !788
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRiJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !791
  %i.ae = load ptr, ptr %7, align 8, !noalias !791
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !791
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa123, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRiJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj3EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @_ZN4node12ToBaseStringILj4EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
end_hunk_14
begin_hunk_15_@_ZN4node27UnconditionalAsyncWrapDebugIJRiRmRhEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %7, align 8, !noalias !800
  store i64 0, ptr %i.af, align 8, !noalias !800
  store i8 0, ptr %i.w, align 8, !noalias !800
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.bc = icmp eq i64 %.pre.i14, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit15
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !803
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit15
  %i.bd = add nsw i64 %.pre.i14, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16.thread ], [ %.pre.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !803
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i18 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !803
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !803
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !803
  %i.bs = load ptr, ptr %6, align 8, !noalias !803
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !803
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.bu, ptr %5, align 8, !alias.scope !803
  %i.bv = load ptr, ptr %6, align 8, !noalias !803 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !803 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i21
  store ptr %i.bv, ptr %5, align 8, !alias.scope !803
  %i.ca = load i64, ptr %i.as, align 8, !noalias !803
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !803
  %.pre.i23 = load i64, ptr %i.bo, align 8, !noalias !803
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit24

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit24: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !803
  store ptr %i.as, ptr %6, align 8, !noalias !803
  store i64 0, ptr %i.bo, align 8, !noalias !803
  store i8 0, ptr %i.as, align 8, !noalias !803
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJRiRmRhEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit24
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJRiRmRhEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #39
  %.pre = load ptr, ptr %5, align 8
  br label %_ZN4node5DebugIJRiRmRhEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJRiRmRhEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit24, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit24 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZN4node5DebugIJRiRmRhEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJRiRmRhEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.cp = load ptr, ptr %6, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.ct = load ptr, ptr %7, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.cx = load ptr, ptr %8, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRiRmRhEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #27 comdat {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @_ZN4node7SPrintFIJRiRmRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #34
  %i.a = load ptr, ptr %6, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRiRmRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRiJRmRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRiJRmRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %21 = ptrtoint ptr %i.c to i64
  %22 = ptrtoint ptr %2 to i64
  %23 = sub i64 %21, %22                          ; 5 uses
  %.not = icmp eq i64 %23, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRiJRmRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %23)
  store i64 %.sroa.speculated.i, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !806

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
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !807
  %i.n = load ptr, ptr %8, align 8, !noalias !807
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !807
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !807
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRiJRmRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.u = load ptr, ptr %12, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.z = load ptr, ptr %11, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa126 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !810
  %i.ae = load ptr, ptr %8, align 8, !noalias !810
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !810
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !810
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  %i.ah = icmp ugt i64 %.lcssa126, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa126, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa126
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa126
  call void @_ZN4node11SPrintFImplIRiJRmRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %i.ak = load ptr, ptr %14, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.ap = load ptr, ptr %13, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.av = load ptr, ptr %15, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @_ZN4node12ToBaseStringILj3EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bb = load ptr, ptr %16, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  call void @_ZN4node12ToBaseStringILj4EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bh = load ptr, ptr %17, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  call void @_ZN4node12ToBaseStringILj4EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %18) ; 0 uses
  %i.bn = load ptr, ptr %18, align 8              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.j
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  %i.bs = load ptr, ptr %19, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRiJRmRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args_0) #34
  call void @abort() #35
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #34
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit63

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.bx, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit63: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplIRmJRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, i64 %i.bz, ptr %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !813
  %i.cd = load ptr, ptr %8, align 8, !noalias !813
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !813 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !813
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
  store ptr %i.cg, ptr %0, align 8, !alias.scope !813
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !813
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !813
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
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #34
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.cw = load ptr, ptr %8, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRmJRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRmJRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !816

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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !817
  %i.n = load ptr, ptr %7, align 8, !noalias !817
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !817
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !817
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRmJRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !820
  %i.ae = load ptr, ptr %7, align 8, !noalias !820
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !820
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !820
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa123, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRmJRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #34
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bn = load ptr, ptr %17, align 8              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.j
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.bs = load ptr, ptr %18, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #34
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRmJRhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args_0) #34
  call void @abort() #35
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #34
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.bx, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplIRhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.bz, ptr %i.ca, ptr noundef nonnull align 1 dereferenceable(1) %4) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !823
  %i.cd = load ptr, ptr %7, align 8, !noalias !823
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !823 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !823
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
  store ptr %i.cg, ptr %0, align 8, !alias.scope !823
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !823
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !823
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
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.cw = load ptr, ptr %7, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #27 comdat {
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
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not81 = icmp eq i64 %1, 0
  br i1 %.not81, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.e = add nuw i64 %21, 1                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.082 = phi i64 [ %i.g, %.critedge2 ], [ %21, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !826

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %21, %bb.b ], [ %.082, %.lr.ph ] ; 2 uses
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
    i8 111, label %bb.i
    i8 120, label %bb.j
    i8 88, label %bb.k
    i8 112, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !827
  %i.n = load ptr, ptr %6, align 8, !noalias !827
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !827
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !827
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 1 dereferenceable(1) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.p

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa124 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !830
  %i.ae = load ptr, ptr %6, align 8, !noalias !830
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !830
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !830
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.ah = icmp ugt i64 %.lcssa124, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa124, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa124
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa124
  call void @_ZN4node11SPrintFImplIRhJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.p

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.au = load i8, ptr %3, align 1, !noalias !839 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !840)
  %i.av = icmp ult i8 %i.au, 10
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.aw, ptr %13, align 8, !alias.scope !843
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i: ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.ax, align 8, !alias.scope !843
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i: ; preds = %bb.g
  %i.ay = icmp ult i8 %i.au, 100                  ; 2 uses
  %i.az = select i1 %i.ay, i64 2, i64 3           ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2) %i.aw, i8 45, i64 %i.az, i1 false), !alias.scope !839
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !alias.scope !843
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %13, i64 18 ; 2 uses
  %.sroa.gep87 = getelementptr inbounds nuw i8, ptr %13, i64 19
  %.sroa.sel.v.sroa.sel = select i1 %i.ay, ptr %.sroa.gep, ptr %.sroa.gep87
  store i8 0, ptr %.sroa.sel.v.sroa.sel, align 1, !alias.scope !839
  %i.bb = icmp ugt i8 %i.au, 99
  br i1 %i.bb, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i
  %i.bc = urem i8 %i.au, 100
  %i.bd = shl nuw i8 %i.bc, 1
  %i.be = udiv i8 %i.au, 100
  %i.bf = zext i8 %i.bd to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !843
  store i8 %i.bi, ptr %.sroa.gep, align 2, !alias.scope !839
  %i.bj = load i8, ptr %i.bg, align 2, !noalias !843
  br label %bb.h, !llvm.loop !200

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.i.i
  %i.bk = shl nuw i8 %i.au, 1
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !843
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 %i.bo, ptr %i.bp, align 1, !alias.scope !839
  %i.bq = load i8, ptr %i.bm, align 2, !noalias !843
  br label %_ZN4node20ToStringOrStringViewIhEEDaRKT_.exit

bb.h:                                             ; preds = %.lr.ph.preheader.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i
  %.sink.i.i = phi i8 [ %i.bj, %.lr.ph.preheader.i.i.i.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i ]
  %.0.lcssa.i.i.ph.i.i = phi i8 [ %i.be, %.lr.ph.preheader.i.i.i.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i.thread.i.i ]
end_hunk_15
begin_hunk_16_@_ZN4node27UnconditionalAsyncWrapDebugIJRlEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %5, align 8, !noalias !861
  store i64 0, ptr %i.af, align 8, !noalias !861
  store i8 0, ptr %i.w, align 8, !noalias !861
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.bc = icmp eq i64 %.pre.i12, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !864
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  %i.bd = add nsw i64 %.pre.i12, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !864
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i16 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !864
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !864
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !864
  %i.bs = load ptr, ptr %4, align 8, !noalias !864
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !864
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bu, ptr %3, align 8, !alias.scope !864
  %i.bv = load ptr, ptr %4, align 8, !noalias !864 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !864 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  store ptr %i.bv, ptr %3, align 8, !alias.scope !864
  %i.ca = load i64, ptr %i.as, align 8, !noalias !864
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !864
  %.pre.i21 = load i64, ptr %i.bo, align 8, !noalias !864
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !864
  store ptr %i.as, ptr %4, align 8, !noalias !864
  store i64 0, ptr %i.bo, align 8, !noalias !864
  store i8 0, ptr %i.as, align 8, !noalias !864
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJRlEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJRlEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %2) #39
  %.pre = load ptr, ptr %3, align 8
  br label %_ZN4node5DebugIJRlEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJRlEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN4node5DebugIJRlEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJRlEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.cp = load ptr, ptr %4, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.ct = load ptr, ptr %5, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRlEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN4node7SPrintFIJRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !867

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !868
  %i.n = load ptr, ptr %6, align 8, !noalias !868
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !868
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !868
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !871
  %i.ae = load ptr, ptr %6, align 8, !noalias !871
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !871
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !871
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa120, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIRlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @_ZN4node14ToStringHelper7ConvertIlbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node12ToBaseStringILj3ElEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj4ElEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
end_hunk_16
begin_hunk_17_@_ZN4node27UnconditionalAsyncWrapDebugIJRlRmEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %6, align 8, !noalias !880
  store i64 0, ptr %i.af, align 8, !noalias !880
  store i8 0, ptr %i.w, align 8, !noalias !880
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  %i.bc = icmp eq i64 %.pre.i13, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit14
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !883
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit14
  %i.bd = add nsw i64 %.pre.i13, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !883
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i17 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i17, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !883
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !883
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !883
  %i.bs = load ptr, ptr %5, align 8, !noalias !883
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !883
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.bu, ptr %4, align 8, !alias.scope !883
  %i.bv = load ptr, ptr %5, align 8, !noalias !883 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !883 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20
  store ptr %i.bv, ptr %4, align 8, !alias.scope !883
  %i.ca = load i64, ptr %i.as, align 8, !noalias !883
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !883
  %.pre.i22 = load i64, ptr %i.bo, align 8, !noalias !883
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !883
  store ptr %i.as, ptr %5, align 8, !noalias !883
  store i64 0, ptr %i.bo, align 8, !noalias !883
  store i8 0, ptr %i.as, align 8, !noalias !883
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJRlRmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJRlRmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN4node5DebugIJRlRmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJRlRmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZN4node5DebugIJRlRmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJRlRmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.cp = load ptr, ptr %5, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.ct = load ptr, ptr %6, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  %i.cx = load ptr, ptr %7, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRlRmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #27 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN4node7SPrintFIJRlRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #34
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRlRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRlJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRlJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRlJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !886

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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !887
  %i.n = load ptr, ptr %7, align 8, !noalias !887
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !887
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !887
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRlJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !890
  %i.ae = load ptr, ptr %7, align 8, !noalias !890
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !890
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !890
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa123, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRlJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node14ToStringHelper7ConvertIlbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj3ElEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @_ZN4node12ToBaseStringILj4ElEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
end_hunk_17
begin_hunk_18_@_ZN4node27UnconditionalAsyncWrapDebugIJR24nghttp2_headers_categoryEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %5, align 8, !noalias !921
  store i64 0, ptr %i.af, align 8, !noalias !921
  store i8 0, ptr %i.w, align 8, !noalias !921
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %i.bc = icmp eq i64 %.pre.i12, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !924
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  %i.bd = add nsw i64 %.pre.i12, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !924
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i16 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !924
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !924
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !924
  %i.bs = load ptr, ptr %4, align 8, !noalias !924
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !924
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bu, ptr %3, align 8, !alias.scope !924
  %i.bv = load ptr, ptr %4, align 8, !noalias !924 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !924 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  store ptr %i.bv, ptr %3, align 8, !alias.scope !924
  %i.ca = load i64, ptr %i.as, align 8, !noalias !924
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !924
  %.pre.i21 = load i64, ptr %i.bo, align 8, !noalias !924
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !924
  store ptr %i.as, ptr %4, align 8, !noalias !924
  store i64 0, ptr %i.bo, align 8, !noalias !924
  store i8 0, ptr %i.as, align 8, !noalias !924
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJR24nghttp2_headers_categoryEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJR24nghttp2_headers_categoryEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %2) #39
  %.pre = load ptr, ptr %3, align 8
  br label %_ZN4node5DebugIJR24nghttp2_headers_categoryEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJR24nghttp2_headers_categoryEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN4node5DebugIJR24nghttp2_headers_categoryEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJR24nghttp2_headers_categoryEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.cp = load ptr, ptr %4, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.ct = load ptr, ptr %5, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJR24nghttp2_headers_categoryEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #27 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN4node7SPrintFIJR24nghttp2_headers_categoryEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJR24nghttp2_headers_categoryEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIR24nghttp2_headers_categoryJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIR24nghttp2_headers_categoryJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIR24nghttp2_headers_categoryJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !927

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !928
  %i.n = load ptr, ptr %6, align 8, !noalias !928
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !928
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !928
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIR24nghttp2_headers_categoryJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !931
  %i.ae = load ptr, ptr %6, align 8, !noalias !931
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !931
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !931
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa120, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIR24nghttp2_headers_categoryJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @_ZN4node14ToStringHelper7ConvertI24nghttp2_headers_categorybbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node14ToStringHelper7ConvertI24nghttp2_headers_categorybbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node14ToStringHelper7ConvertI24nghttp2_headers_categorybbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
end_hunk_18
begin_hunk_19_@_ZN4node27UnconditionalAsyncWrapDebugIJmEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %5, align 8, !noalias !946
  store i64 0, ptr %i.af, align 8, !noalias !946
  store i8 0, ptr %i.w, align 8, !noalias !946
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  %i.bc = icmp eq i64 %.pre.i12, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !949
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit13
  %i.bd = add nsw i64 %.pre.i12, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i14 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !949
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i16 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i16, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !949
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !949
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !949
  %i.bs = load ptr, ptr %4, align 8, !noalias !949
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !949
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bu, ptr %3, align 8, !alias.scope !949
  %i.bv = load ptr, ptr %4, align 8, !noalias !949 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !949 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19
  store ptr %i.bv, ptr %3, align 8, !alias.scope !949
  %i.ca = load i64, ptr %i.as, align 8, !noalias !949
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !949
  %.pre.i21 = load i64, ptr %i.bo, align 8, !noalias !949
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !949
  store ptr %i.as, ptr %4, align 8, !noalias !949
  store i64 0, ptr %i.bo, align 8, !noalias !949
  store i8 0, ptr %i.as, align 8, !noalias !949
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %2) #39
  %.pre = load ptr, ptr %3, align 8
  br label %_ZN4node5DebugIJmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit22 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZN4node5DebugIJmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJmEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.cp = load ptr, ptr %4, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.ct = load ptr, ptr %5, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZN4node7SPrintFIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 5 uses
  %.not = icmp eq i64 %21, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !952

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !953
  %i.n = load ptr, ptr %6, align 8, !noalias !953
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !953
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !953
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !956
  %i.ae = load ptr, ptr %6, align 8, !noalias !956
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !956
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !956
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa120, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
end_hunk_19
begin_hunk_20_@_ZN4node27UnconditionalAsyncWrapDebugIJRmRiEEEvPNS_9AsyncWrapEPKcDpOT_:bb.a
  store ptr %i.w, ptr %6, align 8, !noalias !965
  store i64 0, ptr %i.af, align 8, !noalias !965
  store i8 0, ptr %i.w, align 8, !noalias !965
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %i.bc = icmp eq i64 %.pre.i13, 9223372036854775807
  br i1 %i.bc, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit14
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.765) #35, !noalias !968
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit14
  %i.bd = add nsw i64 %.pre.i13, 1                ; 2 uses
  %i.be = icmp eq ptr %i.at, %i.as
  br i1 %i.be, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.bf = phi i64 [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bg = phi ptr [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bh = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15.thread ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bj = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15
  %i.bk = phi i1 [ true, %bb.o ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bl = phi i64 [ %i.bf, %bb.o ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 3 uses
  %i.bm = phi ptr [ %i.bg, %bb.o ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ]
  %i.bn = phi i64 [ %i.bh, %bb.o ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 2 uses
  %i.bo = phi ptr [ %i.bi, %bb.o ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i15 ] ; 4 uses
  %i.bp = load i64, ptr %i.as, align 8, !noalias !968
  %i.bq = select i1 %i.bk, i64 15, i64 %i.bp
  %.not.i.i.i17 = icmp ugt i64 %i.bl, %i.bq
  br i1 %.not.i.i.i17, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 10, ptr %i.br, align 1, !noalias !968
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bn, i64 noundef 0, ptr noundef nonnull @.str.849, i64 noundef 1), !noalias !968
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20: ; preds = %bb.q, %bb.p
  store i64 %i.bl, ptr %i.bo, align 8, !noalias !968
  %i.bs = load ptr, ptr %5, align 8, !noalias !968
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bl
  store i8 0, ptr %i.bt, align 1, !noalias !968
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.bu, ptr %4, align 8, !alias.scope !968
  %i.bv = load ptr, ptr %5, align 8, !noalias !968 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, %i.as
  br i1 %i.bw, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20
  %i.bx = load i64, ptr %i.bo, align 8, !noalias !968 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i20
  store ptr %i.bv, ptr %4, align 8, !alias.scope !968
  %i.ca = load i64, ptr %i.as, align 8, !noalias !968
  store i64 %i.ca, ptr %i.bu, align 8, !alias.scope !968
  %.pre.i22 = load i64, ptr %i.bo, align 8, !noalias !968
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.cb = phi ptr [ %i.bu, %bb.r ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ] ; 3 uses
  %i.cc = phi i64 [ %i.bx, %bb.r ], [ %.pre.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !alias.scope !968
  store ptr %i.as, ptr %5, align 8, !noalias !968
  store i64 0, ptr %i.bo, align 8, !noalias !968
  store i8 0, ptr %i.as, align 8, !noalias !968
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 2512
  %i.cf = zext i32 %i.f to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !range !26, !noundef !29
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %_ZN4node5DebugIJRmRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, !prof !28

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23
  %i.cj = load ptr, ptr @stderr, align 8
  %i.ck = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #34
  call void @_ZN4node7FPrintFIJRmRiEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.cj, i64 %i.ck, ptr nonnull %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #39
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN4node5DebugIJRmRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit

_ZN4node5DebugIJRmRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23, %bb.s
  %i.cl = phi ptr [ %i.cb, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit23 ], [ %.pre, %bb.s ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bu
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZN4node5DebugIJRmRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.cn = load i64, ptr %i.bu, align 8
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node5DebugIJRmRiEEEvPNS_11EnvironmentENS_13DebugCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.cp = load ptr, ptr %5, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.as, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.ct = load ptr, ptr %6, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.w
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.cv = load i64, ptr %i.w, align 8
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  %i.cx = load ptr, ptr %7, align 8               ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.o
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.cz = load i64, ptr %i.o, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRmRiEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #27 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZN4node7SPrintFIJRmRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #34
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRmRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #27 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRmJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRmJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #27 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 5 uses
  %.not = icmp eq i64 %22, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not, !prof !409
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !409

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRmJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #34
  tail call void @abort() #35
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !971

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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !972
  %i.n = load ptr, ptr %7, align 8, !noalias !972
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !972
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34, !noalias !972
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34, !noalias !972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %i.q, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRmJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !975
  %i.ae = load ptr, ptr %7, align 8, !noalias !975
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !975
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34, !noalias !975
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34, !noalias !975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.831, ptr noundef nonnull @.str.830, i64 noundef %.lcssa123, i64 noundef %1) #35
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRmJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #39
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #34
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #34
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #34
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #34
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
end_hunk_20
