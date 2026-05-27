inline.NumInlined: 10231
inline.NumDeleted: 3650
begin_hunk_0_@_ZNSt10_HashtableIN4node10permission15PermissionScopeESt4pairIKS2_St10shared_ptrINS1_14PermissionBaseEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIN4node10permission15PermissionScopeESt4pairIKS2_St10shared_ptrINS1_14PermissionBaseEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node10permission15PermissionScopeESt10shared_ptrINS4_14PermissionBaseEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node10permission15PermissionScopeESt10shared_ptrINS4_14PermissionBaseEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i, align 8          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node10permission15PermissionScopeESt10shared_ptrINS4_14PermissionBaseEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4
  %i.k = load ptr, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28, !inline_history !1465
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28, !inline_history !1465
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node10permission15PermissionScopeESt10shared_ptrINS4_14PermissionBaseEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node10permission15PermissionScopeESt10shared_ptrINS4_14PermissionBaseEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node10permission15PermissionScopeESt10shared_ptrINS4_14PermissionBaseEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node10permission15PermissionScopeESt10shared_ptrINS4_14PermissionBaseEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 32) #31
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIN4node10permission15PermissionScopeESt4pairIKS2_St10shared_ptrINS1_14PermissionBaseEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !1466

_ZNSt10_HashtableIN4node10permission15PermissionScopeESt4pairIKS2_St10shared_ptrINS1_14PermissionBaseEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node10permission15PermissionScopeESt10shared_ptrINS4_14PermissionBaseEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %0, align 8                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt10_HashtableIN4node10permission15PermissionScopeESt4pairIKS2_St10shared_ptrINS1_14PermissionBaseEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN4node10permission15PermissionScopeESt4pairIKS2_St10shared_ptrINS1_14PermissionBaseEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  %i.ab = load i64, ptr %i.v, align 8
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #31
  br label %_ZNSt10_HashtableIN4node10permission15PermissionScopeESt4pairIKS2_St10shared_ptrINS1_14PermissionBaseEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4node10permission15PermissionScopeESt4pairIKS2_St10shared_ptrINS1_14PermissionBaseEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %_ZNSt10_HashtableIN4node10permission15PermissionScopeESt4pairIKS2_St10shared_ptrINS1_14PermissionBaseEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, %bb.h
  ret void
}

declare void @EVP_MD_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN4node11Environment15InitializeLibuvEvEN3$_08__invokeEP10uv_async_s"(ptr noundef %0) #2 align 2 {
bb.a:
  %1 = alloca %"class.v8::HandleScope", align 8   ; 6 uses
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -864
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = add i64 %i.f, 560
  %i.h = inttoptr i64 %i.g to ptr                 ; 5 uses
  store ptr %i.e, ptr %1, align 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 3008
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.r, align 8 ; 2 uses
  tail call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i.i) #28
  tail call void @_ZN4node11Environment27RunAndClearNativeImmediatesEb(ptr noundef nonnull align 8 dereferenceable(3304) %i.c, i1 noundef zeroext false)
  tail call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i.i) #28
  %i.s = icmp eq ptr %i.e, null
  br i1 %i.s, label %"_ZZN4node11Environment15InitializeLibuvEvENK3$_0clEP10uv_async_s.exit", label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.h, align 8
  store ptr %i.i, ptr %i.h, align 8
  store ptr %i.u, ptr %i.t, align 8
  %i.v = load i32, ptr %i.m, align 8
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.m, align 8
  %i.x = load ptr, ptr %i.j, align 8
  %.not.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.i, label %"_ZZN4node11Environment15InitializeLibuvEvENK3$_0clEP10uv_async_s.exit", label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  store ptr %i.k, ptr %i.j, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.e) #28
  br label %"_ZZN4node11Environment15InitializeLibuvEvENK3$_0clEP10uv_async_s.exit"

"_ZZN4node11Environment15InitializeLibuvEvENK3$_0clEP10uv_async_s.exit": ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRPKcEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4node7SPrintFIJRPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

declare void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
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
  %i.d = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %19 = ptrtoint ptr %i.d to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.f = add i64 %21, 1                           ; 3 uses
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1468

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1469
  %i.o = load ptr, ptr %6, align 8, !noalias !1469
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !1469
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1469
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.r = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.r, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.t = sub nuw i64 %1, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  call void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.t, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.v = load ptr, ptr %10, align 8               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.aa = load ptr, ptr %9, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.q

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa108 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1472
  %i.af = load ptr, ptr %6, align 8, !noalias !1472
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !1472
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1472
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ai = icmp ugt i64 %.lcssa108, %1
  br i1 %i.ai, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa108, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34: ; preds = %.thread
  %i.aj = sub nuw i64 %1, %.lcssa108
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa108
  call void @_ZN4node11SPrintFImplIRPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS7_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.aj, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.al = load ptr, ptr %12, align 8              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.aq = load ptr, ptr %11, align 8              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.q

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i.i, ptr @.str.1785, ptr %i.av ; 2 uses
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #28
  store i64 %i.ax, ptr %13, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  %i.bb = select i1 %.not.i.i.i, ptr @.str.1785, ptr %i.ba ; 2 uses
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #28
  store i64 %i.bc, ptr %14, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bf, null
  %i.bg = select i1 %.not.i.i.i41, ptr @.str.1785, ptr %i.bf ; 2 uses
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #28
  store i64 %i.bh, ptr %15, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bk, null
  %i.bl = select i1 %.not.i.i.i44, ptr @.str.1785, ptr %i.bk ; 2 uses
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #28
  store i64 %i.bm, ptr %17, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.bl, ptr %i.bn, align 8
  call void @_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %17)
  %i.bo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bp = load ptr, ptr %16, align 8              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
end_hunk_0
begin_hunk_1_@_ZN4node7ToUpperISt17basic_string_viewIcSt11char_traitsIcEEEENSt7__cxx1112basic_stringIcS3_SaIcEEERKT_:bb.a

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
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() #28
  %i.r = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #28
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.not.i.i.i, label %bb.i, label %_ZN4node7ToUpperEc.exit

bb.i:                                             ; preds = %.lr.ph
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZN4node7ToUpperEc.exit:                          ; preds = %.lr.ph
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext %i.p) #28, !inline_history !1478
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013
  store i8 %i.aa, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.01012, i64 1 ; 2 uses
  %i.ae = add nuw i64 %.013, 1
  %.not = icmp eq ptr %i.ad, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1479

._crit_edge:                                      ; preds = %_ZN4node7ToUpperEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 5 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1784) #29
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.h = add i64 %i.e, %i.c                       ; 3 uses
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j                   ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = icmp ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.m = load i64, ptr %i.j, align 8
  %i.n = select i1 %i.k, i64 15, i64 %i.m
  %.not.i.i.i = icmp ugt i64 %i.h, %i.n
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.c, 1
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.a, align 1
  store i8 %i.p, ptr %i.o, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.a, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e, i64 noundef 0, ptr noundef %i.a, i64 noundef %i.c)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.h, ptr %i.d, align 8
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = sub i64 9223372036854775807, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1784) #29
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
  %i.b = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 4 uses
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.j

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1547) #29
  unreachable

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %i.h = icmp ugt i64 %1, 15
  br i1 %i.h, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %1, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1548) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = add nuw i64 %1, 1                        ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %._crit_edge.i.i.i.i.thread42, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

._crit_edge.i.i.i.i.thread42:                     ; preds = %bb.f
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #30 ; 2 uses
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
  br i1 %i.s, label %bb.l, label %bb.k, !prof !33

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 37
  br i1 %i.v, label %bb.n, label %bb.m, !prof !33

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE20error_and_abort_args_0) #28
  tail call void @abort() #29
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.w, ptr %3, align 8
  %i.x = icmp ugt i64 %i.e, 14
  br i1 %i.x, label %bb.o, label %._crit_edge.i.i.i.i10

bb.o:                                             ; preds = %bb.n
  %i.y = icmp slt i64 %i.r, 0
  br i1 %i.y, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1548) #29
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.z = add nuw i64 %i.e, 2                      ; 2 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11, !prof !5

bb.r:                                             ; preds = %bb.q
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i11: ; preds = %bb.q
  %i.ab = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #30 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
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
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ao = load ptr, ptr %3, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.w
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.w, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1783) #29
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit, %bb.c
  %i.k = load i64, ptr %i.h, align 8
  %i.l = select i1 %i.i, i64 15, i64 %i.k
end_hunk_1
begin_hunk_2_@_ZNK4node17AliasedBufferBaseIjN2v811Uint32ArrayEE10MemoryInfoEPNS_13MemoryTrackerE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4node13MemoryTracker10TrackFieldIN2v811Uint32ArrayEEEvPKcRKNS2_14PersistentBaseIT_EES5_.exit, label %_ZNK2v814PersistentBaseINS_11Uint32ArrayEE6IsWeakEv.exit.i

_ZNK2v814PersistentBaseINS_11Uint32ArrayEE6IsWeakEv.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 3
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %_ZN4node13MemoryTracker10TrackFieldIN2v811Uint32ArrayEEEvPKcRKNS2_14PersistentBaseIT_EES5_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2v814PersistentBaseINS_11Uint32ArrayEE6IsWeakEv.exit.i
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = load i64, ptr %i.b, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = add i64 %i.j, 560
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZN2v89LocalBaseINS_11Uint32ArrayEE3NewEPNS_7IsolateEPS1_.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.h) #28
  br label %_ZN2v89LocalBaseINS_11Uint32ArrayEE3NewEPNS_7IsolateEPS1_.exit.i

_ZN2v89LocalBaseINS_11Uint32ArrayEE3NewEPNS_7IsolateEPS1_.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.r = ptrtoint ptr %.0.i.i.i to i64
  %i.s = add i64 %i.r, 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8
  store i64 %i.i, ptr %.0.i.i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN2v89LocalBaseINS_11Uint32ArrayEE3NewEPNS_7IsolateEPS1_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !1518
  %i.ad = icmp eq ptr %i.y, %i.ac
  br i1 %i.ad, label %bb.e, label %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1518
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  br label %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i

_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.aj = phi ptr [ %i.ai, %bb.e ], [ %i.y, %bb.d ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i, label %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i

_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i: ; preds = %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an) #28, !inline_history !1521
  br i1 %i.ar, label %bb.f, label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i

bb.f:                                             ; preds = %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  br label %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i

_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i: ; preds = %bb.f, %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i, %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i, %_ZN2v89LocalBaseINS_11Uint32ArrayEE3NewEPNS_7IsolateEPS1_.exit.i
  %.1.i.i.i = phi ptr [ null, %_ZN2v89LocalBaseINS_11Uint32ArrayEE3NewEPNS_7IsolateEPS1_.exit.i ], [ %i.at, %bb.f ], [ %i.al, %_ZNK4node18MemoryRetainerNode14IsCppgcWrapperEv.exit.i.i.i ], [ %i.al, %_ZNKSt5stackIPN4node18MemoryRetainerNodeESt5dequeIS2_SaIS2_EEE3topEv.exit.i.i.i ]
  %i.au = load ptr, ptr %i.u, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %.0.i.i.i, ptr %2, align 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %2) #28, !inline_history !1522
  %i.ay = load ptr, ptr %i.v, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %.1.i.i.i, ptr noundef %i.ax, ptr noundef nonnull @.str.1818) #28, !inline_history !1522
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZN4node13MemoryTracker10TrackFieldIN2v811Uint32ArrayEEEvPKcRKNS2_14PersistentBaseIT_EES5_.exit

_ZN4node13MemoryTracker10TrackFieldIN2v811Uint32ArrayEEEvPKcRKNS2_14PersistentBaseIT_EES5_.exit: ; preds = %bb.a, %_ZNK2v814PersistentBaseINS_11Uint32ArrayEE6IsWeakEv.exit.i, %_ZNK4node13MemoryTracker11CurrentNodeEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4node17AliasedBufferBaseIjN2v811Uint32ArrayEE14MemoryInfoNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret ptr @.str.1821
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK4node17AliasedBufferBaseIjN2v811Uint32ArrayEE8SelfSizeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i64 56
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvPN4node11EnvironmentENS0_8ExitCodeEEPS4_E9_M_invokeERKSt9_Any_dataOS2_OS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = load i32, ptr %2, align 4
  tail call void %i.a(ptr noundef %i.b, i32 noundef %i.c) #28, !inline_history !1523
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN4node11EnvironmentENS0_8ExitCodeEEPS4_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFvPN4node11EnvironmentENS1_8ExitCodeEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIPFvPN4node11EnvironmentENS1_8ExitCodeEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8
  br label %_ZNSt14_Function_base13_Base_managerIPFvPN4node11EnvironmentENS1_8ExitCodeEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFvPN4node11EnvironmentENS1_8ExitCodeEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFvPN4node11EnvironmentENS1_8ExitCodeEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split: ; preds = %bb.b, %bb.a, %.sink.split.i
  %.sink.i.sink = phi ptr [ %1, %bb.a ], [ %i.a, %bb.b ], [ null, %.sink.split.i ]
  store ptr %.sink.i.sink, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIPFvPN4node11EnvironmentENS1_8ExitCodeEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFvPN4node11EnvironmentENS1_8ExitCodeEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFvPN4node11EnvironmentENS1_8ExitCodeEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4node7SPrintFIJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.e = add i64 %21, 1                           ; 3 uses
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1524

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1525
  %i.n = load ptr, ptr %6, align 8, !noalias !1525
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1525
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1525
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1528
  %i.ae = load ptr, ptr %6, align 8, !noalias !1528
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1528
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1528
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa120, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_:bb.a
  %i.am = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef %i.af, i64 noundef %i.b, i64 noundef 1) #28 ; 2 uses
  %i.an = extractvalue { i8, i64 } %i.am, 0
  %i.ao = trunc i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.ap = extractvalue { i8, i64 } %i.am, 1
  tail call void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ap)
  %i.aq = load i64, ptr %i.ag, align 8
  %i.ar = urem i64 %i.ah, %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %.0.i17 = phi i64 [ %i.ar, %bb.i ], [ %i.ae, %.critedge ] ; 2 uses
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i17 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.au, null
  br i1 %.not.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.au, align 8
  store ptr %i.av, ptr %i.aj, align 8
  %i.aw = load ptr, ptr %i.at, align 8
  store ptr %i.aj, ptr %i.aw, align 8
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  store ptr %i.ay, ptr %i.aj, align 8
  store ptr %i.aj, ptr %i.ax, align 8
  %.not11.i.i = icmp eq ptr %i.ay, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.ag, align 8
  %i.bb = load i32, ptr %i.az, align 4
  %i.bc = sext i32 %i.bb to i64
  %i.bd = urem i64 %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bd
  store ptr %i.aj, ptr %i.be, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bf = phi ptr [ %.pre, %bb.m ], [ %i.as, %bb.l ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.0.i17
  store ptr %i.ax, ptr %i.bg, align 8
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.n, %bb.k
  %i.bh = load i64, ptr %i.a, align 8
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.a, align 8
  br label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit

_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %bb.f, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.028.1 = phi ptr [ %i.aj, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.025.0, %bb.d ], [ %i.u, %bb.f ], [ %i.z, %bb.g ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.028.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1561

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #31
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #35
  ret void
}

declare i16 @_ZN4node25ProcessEmitWarningGenericEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES5_S5_(ptr noundef, i64, ptr, i64, ptr, ptr noundef byval(%"class.std::basic_string_view") align 8) local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #18 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.e = add i64 %21, 1                           ; 3 uses
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1562

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1563
  %i.n = load ptr, ptr %6, align 8, !noalias !1563
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1563
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1563
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1566
  %i.ae = load ptr, ptr %6, align 8, !noalias !1566
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1566
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1566
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa120, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIRiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @_ZN4node14ToStringHelper7ConvertIibbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN4node12ToBaseStringILj3EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4node12ToBaseStringILj4EiEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKi:bb.a
  br i1 %i.h, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKi.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.e, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKi.exit, label %.lr.ph, !llvm.loop !1585

.lr.ph:                                           ; preds = %.preheader.i, %bb.c
  %.016.i35 = phi ptr [ %i.l, %bb.c ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.l = load ptr, ptr %.016.i35, align 8         ; 4 uses
  %.not14.i = icmp eq ptr %i.l, null
  br i1 %.not14.i, label %.critedge, label %bb.c, !llvm.loop !1585

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKi.exit: ; preds = %bb.c, %.preheader.i
  %i.m = phi ptr [ %i.d, %.preheader.i ], [ %i.l, %bb.c ]
  %.01115.i.lcssa = phi ptr [ %i.c, %.preheader.i ], [ %.016.i35, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = sext i32 %i.e to i64
  %i.q = urem i64 %i.p, %i.o                      ; 2 uses
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.q
  %.pre40 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit

bb.d:                                             ; preds = %bb.a
  %i.r = load i32, ptr %1, align 4                ; 3 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 4 uses
  %i.v = urem i64 %i.s, %i.u                      ; 5 uses
  %i.w = load ptr, ptr %0, align 8                ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8              ; 7 uses
  %.not.i24 = icmp eq ptr %i.y, null
  br i1 %.not.i24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8              ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.r, %i.ab
  br i1 %i.ac, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread, label %.lr.ph.i

_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread: ; preds = %bb.e
  %i.ad = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not18.i2655 = icmp eq ptr %i.ad, null
  br i1 %.not18.i2655, label %.thread23.i, label %bb.i

bb.f:                                             ; preds = %bb.g
  %i.ae = icmp eq i32 %i.r, %i.ah
  br i1 %i.ae, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit, label %.lr.ph.i, !llvm.loop !1586

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.020.i = phi ptr [ %i.af, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.af = load ptr, ptr %.020.i, align 8          ; 4 uses
  %.not18.i = icmp eq ptr %i.af, null
  br i1 %.not18.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = urem i64 %i.ai, %i.u
  %.not19.i = icmp eq i64 %i.aj, %i.v
  br i1 %.not19.i, label %bb.f, label %..loopexit_crit_edge21.i, !llvm.loop !1586

..loopexit_crit_edge21.i:                         ; preds = %bb.g
  br label %.critedge, !llvm.loop !1586

_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit: ; preds = %bb.f, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKi.exit
  %i.ak = phi i64 [ %i.o, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKi.exit ], [ %i.u, %bb.f ] ; 2 uses
  %i.al = phi ptr [ %.pre40, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKi.exit ], [ %i.y, %bb.f ] ; 3 uses
  %i.am = phi ptr [ %.pre, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKi.exit ], [ %i.w, %bb.f ] ; 3 uses
  %.120 = phi ptr [ %i.m, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKi.exit ], [ %i.af, %bb.f ] ; 6 uses
  %.018 = phi i64 [ %i.q, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKi.exit ], [ %i.v, %bb.f ] ; 3 uses
  %.016 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKi.exit ], [ %.020.i, %bb.f ] ; 7 uses
  %i.an = icmp eq ptr %.016, %i.al
  %i.ao = load ptr, ptr %.120, align 8            ; 3 uses
  %.not18.i26 = icmp eq ptr %i.ao, null           ; 2 uses
  br i1 %i.an, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit
  br i1 %.not18.i26, label %.thread23.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread, %bb.h
  %i.ap = phi i64 [ %i.u, %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread ], [ %i.ak, %bb.h ]
  %i.aq = phi ptr [ %i.y, %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread ], [ %i.al, %bb.h ]
  %i.ar = phi ptr [ %i.w, %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread ], [ %i.am, %bb.h ]
  %.1205766 = phi ptr [ %i.z, %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread ], [ %.120, %bb.h ] ; 2 uses
  %.0185864 = phi i64 [ %i.v, %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread ], [ %.018, %bb.h ] ; 3 uses
  %.0166062 = phi ptr [ %i.y, %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread ], [ %.016, %bb.h ] ; 2 uses
  %i.as = phi ptr [ %i.ad, %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread ], [ %i.ao, %bb.h ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = urem i64 %i.av, %i.ap                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.aw, %.0185864
  br i1 %.not9.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeIiLb0EEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aw
  store ptr %i.aq, ptr %i.ax, align 8
  %.pre.i = load ptr, ptr %0, align 8             ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.0185864
  %.pre25.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %.thread23.i

.thread23.i:                                      ; preds = %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread, %bb.j, %bb.h
  %.1205767 = phi ptr [ %.120, %bb.h ], [ %.1205766, %bb.j ], [ %i.z, %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread ]
  %.0185865 = phi i64 [ %.018, %bb.h ], [ %.0185864, %bb.j ], [ %i.v, %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread ]
  %.0166063 = phi ptr [ %.016, %bb.h ], [ %.0166062, %bb.j ], [ %i.y, %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread ]
  %i.ay = phi ptr [ null, %bb.h ], [ %i.as, %bb.j ], [ null, %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread ]
  %i.az = phi ptr [ %i.al, %bb.h ], [ %.pre25.i, %bb.j ], [ %i.y, %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread ]
  %i.ba = phi ptr [ %i.am, %bb.h ], [ %.pre.i, %bb.j ], [ %i.w, %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit.thread ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.0185865
  %i.bd = icmp eq ptr %i.bb, %i.az
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread23.i
  store ptr %i.ay, ptr %i.bb, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread23.i
  store ptr null, ptr %i.bc, align 8
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeIiLb0EEE.exit

bb.m:                                             ; preds = %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeEmRKim.exit
  br i1 %.not18.i26, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeIiLb0EEE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = urem i64 %i.bg, %i.ak                   ; 2 uses
  %.not17.i = icmp eq i64 %i.bh, %.018
  br i1 %.not17.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeIiLb0EEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bh
  store ptr %.016, ptr %i.bi, align 8
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeIiLb0EEE.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeIiLb0EEE.exit: ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.01659 = phi ptr [ %.0166062, %bb.i ], [ %.0166063, %bb.l ], [ %.016, %bb.m ], [ %.016, %bb.n ], [ %.016, %bb.o ]
  %.12056 = phi ptr [ %.1205766, %bb.i ], [ %.1205767, %bb.l ], [ %.120, %bb.m ], [ %.120, %bb.n ], [ %.120, %bb.o ] ; 2 uses
  %i.bj = load ptr, ptr %.12056, align 8
  store ptr %i.bj, ptr %.01659, align 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.12056, i64 noundef 16) #31
  %i.bk = load i64, ptr %i.a, align 8
  %i.bl = add i64 %i.bk, -1
  store i64 %i.bl, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %..loopexit_crit_edge21.i, %bb.d, %bb.b, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeIiLb0EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeIiLb0EEE.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2)
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #35
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.e = add i64 %21, 1                           ; 3 uses
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1587

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1588
  %i.n = load ptr, ptr %6, align 8, !noalias !1588
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1588
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1588
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1591
  %i.ae = load ptr, ptr %6, align 8, !noalias !1591
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1591
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1591
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa120, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN4node12ToBaseStringILj3EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
end_hunk_4
begin_hunk_5_@_ZN4node12ToBaseStringILj4EjEEDaRKT0_:bb.a

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.q = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  switch i64 %i.k, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN4node14ToStringHelper11BaseConvertILj4EjvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.h, align 1, !noalias !1601
  store i8 %i.r, ptr %i.q, align 1
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EjvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EjvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj4EjvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.s, align 8, !alias.scope !1601
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.t, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !1601
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  %i.b = icmp ult i32 %i.a, 10
  br i1 %i.b, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !1605
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
  br i1 %i.l, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !1583

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0.i.i = phi i32 [ %i.i, %bb.f ], [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ %i.k, %bb.g ] ; 3 uses
  %i.m = zext i32 %.0.i.i to i64                  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !1605
  %i.o = icmp ugt i32 %.0.i.i, 15
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.p = add nuw nsw i64 %i.m, 1
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #30 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !alias.scope !1605
  store i64 %i.m, ptr %i.n, align 8, !alias.scope !1605
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %.0.i.i, label %bb.k [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %.thread.i
  %i.r = phi ptr [ %i.c, %.thread.i ], [ %i.n, %bb.i ] ; 2 uses
  store i8 0, ptr %i.r, align 1, !alias.scope !1605
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.n, %bb.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.t = phi i64 [ 0, %bb.i ], [ 1, %bb.j ], [ %i.m, %bb.k ] ; 2 uses
  %i.u = phi ptr [ %i.n, %bb.i ], [ %i.r, %bb.j ], [ %i.s, %bb.k ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.v, align 8, !alias.scope !1605
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.w, align 1
  %i.x = load ptr, ptr %0, align 8, !alias.scope !1605 ; 4 uses
  %i.y = icmp ugt i32 %i.a, 99
  br i1 %i.y, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.z = load i64, ptr %i.v, align 8, !alias.scope !1605
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
  %i.ag = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !1605
  %i.aj = zext i32 %.01819.i.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aj
  store i8 %i.ai, ptr %i.ak, align 1
  %i.al = load i8, ptr %i.ag, align 2, !noalias !1605
  %i.am = add i32 %.01819.i.i, -1
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.an
  store i8 %i.al, ptr %i.ao, align 1
  %i.ap = add i32 %.01819.i.i, -2
  %i.aq = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.aq, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !1584

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.ae, %.lr.ph.i2.i ] ; 3 uses
  %i.ar = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.as = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1605
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.aw, ptr %i.ax, align 1
  %i.ay = load i8, ptr %i.au, align 2, !noalias !1605
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
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERjEEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRjEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #35
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRjEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #18 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRjEEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.e = add i64 %22, 1                           ; 3 uses
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1608

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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1609
  %i.n = load ptr, ptr %7, align 8, !noalias !1609
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1609
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1609
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRjEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.u

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa125 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1612
  %i.ae = load ptr, ptr %7, align 8, !noalias !1612
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1612
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1612
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.ah = icmp ugt i64 %.lcssa125, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa125, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa125
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa125
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRjEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.u

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.au, ptr %14, align 8, !alias.scope !1621
  %i.av = load ptr, ptr %3, align 8, !noalias !1621 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !1621 ; 8 uses
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.az = icmp slt i64 %i.ax, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1548) #29
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ba = add nuw i64 %i.ax, 1                    ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.j
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #30 ; 2 uses
  store ptr %i.bc, ptr %14, align 8, !alias.scope !1621
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !1621
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
  store i64 %i.ax, ptr %i.bf, align 8, !alias.scope !1621
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
end_hunk_5
begin_hunk_6_@_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRjEEES6_St17basic_string_viewIcS4_EOT_DpOT0_:bb.a
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.di = load ptr, ptr %7, align 8               ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.u
  %i.dl = load i64, ptr %i.dj, align 8
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node12ToBaseStringILj3ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !alias.scope !1631
  %i.b = load ptr, ptr %1, align 8, !noalias !1631 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !1631 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1548) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !1631
  store i64 %i.d, ptr %i.a, align 8, !alias.scope !1631
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN4node14ToStringHelper11BaseConvertILj3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %i.b, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZN4node14ToStringHelper11BaseConvertILj3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj3ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !alias.scope !1631
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node12ToBaseStringILj4ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !alias.scope !1638
  %i.b = load ptr, ptr %1, align 8, !noalias !1638 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !1638 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1548) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !1638
  store i64 %i.d, ptr %i.a, align 8, !alias.scope !1638
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN4node14ToStringHelper11BaseConvertILj4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.k = load i8, ptr %i.b, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZN4node14ToStringHelper11BaseConvertILj4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj4ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEDaOT0_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !alias.scope !1638
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRbmmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #18 comdat {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN4node7SPrintFIJRbmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #35
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #28
  %i.a = load ptr, ptr %6, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRbmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRbJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #35
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRbJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #18 comdat {
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
  %.not87 = icmp eq i64 %1, 0
  br i1 %.not87, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRbJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %21 = ptrtoint ptr %i.c to i64
  %22 = ptrtoint ptr %2 to i64
  %23 = sub i64 %21, %22                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %23)
  store i64 %.sroa.speculated.i, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.e = add i64 %23, 1                           ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.critedge2
  %i.g = phi i64 [ %i.j, %.critedge2 ], [ %i.e, %bb.b ] ; 4 uses
  %.088 = phi i64 [ %i.g, %.critedge2 ], [ %23, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  switch i8 %i.i, label %.critedge [
    i8 108, label %.critedge2
    i8 122, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1639

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %23, %bb.b ], [ %.088, %.lr.ph ] ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1640
  %i.n = load ptr, ptr %8, align 8, !noalias !1640
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1640
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !1640
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRbJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.s, ptr %i.t, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.u = load ptr, ptr %12, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.z = load ptr, ptr %11, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa128 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1643
  %i.ae = load ptr, ptr %8, align 8, !noalias !1643
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1643
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1643
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ah = icmp ugt i64 %.lcssa128, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa128, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa128
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa128
  call void @_ZN4node11SPrintFImplIRbJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %i.ak = load ptr, ptr %14, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.ap = load ptr, ptr %13, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  %i.au = load i8, ptr %3, align 1, !range !26, !noalias !1646, !noundef !48
  %i.av = trunc nuw i8 %i.au to i1                ; 3 uses
  %i.aw = select i1 %i.av, ptr @.str.1555, ptr @.str.1556
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.ax, ptr %15, align 8, !alias.scope !1649
  %i.ay = select i1 %i.av, i64 4, i64 5           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.ax, ptr noundef nonnull align 1 dereferenceable(4) %i.aw, i64 %i.ay, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !alias.scope !1649
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.av, i64 20, i64 21
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %15, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !alias.scope !1649
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ax
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.g
  %i.bd = load i64, ptr %i.ax, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZN4node12ToBaseStringILj3EbEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.bf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bg = load ptr, ptr %16, align 8              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.h
  %i.bj = load i64, ptr %i.bh, align 8
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @_ZN4node12ToBaseStringILj4EbEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.bl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bm = load ptr, ptr %17, align 8              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4node11SPrintFImplIRbJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_:bb.a
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %i.ct = phi i64 [ %i.cp, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ct, ptr %i.cv, align 8, !alias.scope !1652
  store ptr %i.cm, ptr %i.cj, align 8
  store i64 0, ptr %i.cu, align 8
  store i8 0, ptr %i.cm, align 8
  %i.cw = load ptr, ptr %20, align 8              ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.db = load ptr, ptr %8, align 8               ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.o
  %i.de = load i64, ptr %i.dc, align 8
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node12ToBaseStringILj3EbEEDaRKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  %i.b = load i8, ptr %1, align 1, !range !26, !noalias !1655, !noundef !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !1655
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.c, align 1, !noalias !1655
  %i.d = or disjoint i8 %i.b, 48                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store i8 %i.d, ptr %i.e, align 1, !noalias !1655
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !alias.scope !1655
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #28, !noalias !1655 ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1548) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #30 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !alias.scope !1655
  store i64 %i.g, ptr %i.f, align 8, !alias.scope !1655
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.f, %bb.a ] ; 3 uses
  switch i64 %i.g, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN4node14ToStringHelper11BaseConvertILj3EbvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  store i8 %i.d, ptr %i.m, align 1
  br label %_ZN4node14ToStringHelper11BaseConvertILj3EbvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj3EbvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj3EbvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.n, align 8, !alias.scope !1655
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !1655
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node12ToBaseStringILj4EbEEDaRKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  %i.b = load i8, ptr %1, align 1, !range !26, !noalias !1658, !noundef !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !1658
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.c, align 1, !noalias !1658
  %i.d = zext nneg i8 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr @.str.1825, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !noalias !1658 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store i8 %i.f, ptr %i.g, align 1, !noalias !1658
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !alias.scope !1658
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #28, !noalias !1658 ; 8 uses
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1548) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = add nuw i64 %i.i, 1                      ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #30 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !1658
  store i64 %i.i, ptr %i.h, align 8, !alias.scope !1658
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.o = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.h, %bb.a ] ; 3 uses
  switch i64 %i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN4node14ToStringHelper11BaseConvertILj4EbvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  store i8 %i.f, ptr %i.o, align 1
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EbvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZN4node14ToStringHelper11BaseConvertILj4EbvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit

_ZN4node14ToStringHelper11BaseConvertILj4EbvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.p, align 8, !alias.scope !1658
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i8 0, ptr %i.q, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !1658
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplImJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #18 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplImJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.e = add i64 %22, 1                           ; 3 uses
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1661

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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1662
  %i.n = load ptr, ptr %7, align 8, !noalias !1662
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1662
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1662
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplImJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1665
  %i.ae = load ptr, ptr %7, align 8, !noalias !1665
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1665
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa123, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplImJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
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
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.bs = load ptr, ptr %18, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplImJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args_0) #28
  call void @abort() #29
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.bx, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.bz, ptr %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %4) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !1668
  %i.cd = load ptr, ptr %7, align 8, !noalias !1668
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !1668 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !1668
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
  store ptr %i.cg, ptr %0, align 8, !alias.scope !1668
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !1668
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !1668
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
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.cw = load ptr, ptr %7, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.e = add i64 %21, 1                           ; 3 uses
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1671

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1672
  %i.n = load ptr, ptr %6, align 8, !noalias !1672
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1672
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1672
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa120 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1675
  %i.ae = load ptr, ptr %6, align 8, !noalias !1675
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1675
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1675
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ah = icmp ugt i64 %.lcssa120, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa120, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa120
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa120
  call void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %13) ; 0 uses
  %i.av = load ptr, ptr %13, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.bb = load ptr, ptr %14, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bh = load ptr, ptr %15, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bn = load ptr, ptr %16, align 8              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.j
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.bs = load ptr, ptr %17, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args_0) #28
  call void @abort() #29
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.bx, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 %i.bz, ptr %i.ca)
  call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !1678
  %i.cd = load ptr, ptr %6, align 8, !noalias !1678
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !1678 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !1678
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
  store ptr %i.cg, ptr %0, align 8, !alias.scope !1678
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !1678
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !1678
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
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.cw = load ptr, ptr %6, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJmmmmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #18 comdat {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN4node7SPrintFIJmmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %7) #28
  %i.a = load ptr, ptr %7, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJmmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplImJmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplImJmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #18 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplImJmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %22 = ptrtoint ptr %i.c to i64
  %23 = ptrtoint ptr %2 to i64
  %24 = sub i64 %22, %23                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %24)
  store i64 %.sroa.speculated.i, ptr %10, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.e = add i64 %24, 1                           ; 3 uses
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1681

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
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1682
  %i.n = load ptr, ptr %9, align 8, !noalias !1682
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1682
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !1682
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !1682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplImJmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.u = load ptr, ptr %13, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.z = load ptr, ptr %12, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa129 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1685
  %i.ae = load ptr, ptr %9, align 8, !noalias !1685
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1685
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !1685
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.ah = icmp ugt i64 %.lcssa129, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa129, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa129
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa129
  call void @_ZN4node11SPrintFImplImJmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
  %i.ak = load ptr, ptr %15, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.ap = load ptr, ptr %14, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.av = load ptr, ptr %16, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bb = load ptr, ptr %17, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %18) ; 0 uses
  %i.bh = load ptr, ptr %18, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %20)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %19) ; 0 uses
  %i.bn = load ptr, ptr %19, align 8              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.j
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  %i.bs = load ptr, ptr %20, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplImJmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args_0) #28
  call void @abort() #29
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit66

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.bx, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit66: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplImJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, i64 %i.bz, ptr %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !1688
  %i.cd = load ptr, ptr %9, align 8, !noalias !1688
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !1688 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !1688
  %i.cg = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 5 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

bb.n:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit66
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load i64, ptr %i.cj, align 8            ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.ch, i64 %i.cm, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit66
  store ptr %i.cg, ptr %0, align 8, !alias.scope !1688
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !1688
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !1688
  store ptr %i.ch, ptr %i.ce, align 8
  store i64 0, ptr %i.cp, align 8
  store i8 0, ptr %i.ch, align 8
  %i.cr = load ptr, ptr %21, align 8              ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.cu = load i64, ptr %i.cs, align 8
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.cw = load ptr, ptr %9, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplImJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #18 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplImJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %21 = ptrtoint ptr %i.c to i64
  %22 = ptrtoint ptr %2 to i64
  %23 = sub i64 %21, %22                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %23)
  store i64 %.sroa.speculated.i, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.e = add i64 %23, 1                           ; 3 uses
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1691

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
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1692
  %i.n = load ptr, ptr %8, align 8, !noalias !1692
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1692
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !1692
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplImJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.u = load ptr, ptr %12, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.z = load ptr, ptr %11, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa126 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1695
  %i.ae = load ptr, ptr %8, align 8, !noalias !1695
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1695
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1695
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ah = icmp ugt i64 %.lcssa126, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa126, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa126
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa126
  call void @_ZN4node11SPrintFImplImJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
  %i.ak = load ptr, ptr %14, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.ap = load ptr, ptr %13, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.av = load ptr, ptr %15, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bb = load ptr, ptr %16, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.bh = load ptr, ptr %17, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19)
  %i.bm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %18) ; 0 uses
  %i.bn = load ptr, ptr %18, align 8              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.j
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  %i.bs = load ptr, ptr %19, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplImJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args_0) #28
  call void @abort() #29
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit63

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.bx, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit63: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplImJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, i64 %i.bz, ptr %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !1698
  %i.cd = load ptr, ptr %8, align 8, !noalias !1698
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !1698 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !1698
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
  store ptr %i.cg, ptr %0, align 8, !alias.scope !1698
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !1698
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !1698
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
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.cw = load ptr, ptr %8, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRmS1_EEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #18 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN4node7SPrintFIJRmS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #35
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRmS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRmJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #35
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node11SPrintFImplIRmJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #18 comdat {
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRmJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.e = add i64 %22, 1                           ; 3 uses
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1701

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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1702
  %i.n = load ptr, ptr %7, align 8, !noalias !1702
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1702
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1702
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRmJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1705
  %i.ae = load ptr, ptr %7, align 8, !noalias !1705
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1705
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1705
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa123, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRmJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN4node14ToStringHelper7ConvertImbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4node12ToBaseStringILj3EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZN4node12ToBaseStringILj4EmEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
end_hunk_7
begin_hunk_8_@_ZN4node11SPrintFImplIRmJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_:bb.a
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.j
  %i.bq = load i64, ptr %i.bo, align 8
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.bs = load ptr, ptr %18, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRmJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args_0) #28
  call void @abort() #29
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.bx, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplIRmJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.bz, ptr %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %4) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !1708
  %i.cd = load ptr, ptr %7, align 8, !noalias !1708
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !1708 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !1708
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
  store ptr %i.cg, ptr %0, align 8, !alias.scope !1708
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !1708
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !1708
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
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.cw = load ptr, ptr %7, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJmEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4node7SPrintFIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJPKcEEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4node7SPrintFIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  %i.a = load ptr, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
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
  %i.d = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %19 = ptrtoint ptr %i.d to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.f = add i64 %21, 1                           ; 3 uses
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1711

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1712
  %i.o = load ptr, ptr %6, align 8, !noalias !1712
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !1712
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1712
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.o, i64 noundef %i.q, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.r = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.s = icmp ugt i64 %i.r, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.r, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.t = sub nuw i64 %1, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.r
  call void @_ZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.t, ptr %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.v = load ptr, ptr %10, align 8               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.aa = load ptr, ptr %9, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.q

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa108 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1715
  %i.af = load ptr, ptr %6, align 8, !noalias !1715
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !1715
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1715
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ai = icmp ugt i64 %.lcssa108, %1
  br i1 %i.ai, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa108, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34: ; preds = %.thread
  %i.aj = sub nuw i64 %1, %.lcssa108
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa108
  call void @_ZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.aj, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.al = load ptr, ptr %12, align 8              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.aq = load ptr, ptr %11, align 8              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.q

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.av = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  %i.aw = select i1 %.not.i.i, ptr @.str.1785, ptr %i.av ; 2 uses
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #28
  store i64 %i.ax, ptr %13, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  %i.bb = select i1 %.not.i.i.i, ptr @.str.1785, ptr %i.ba ; 2 uses
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #28
  store i64 %i.bc, ptr %14, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.bf = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bf, null
  %i.bg = select i1 %.not.i.i.i41, ptr @.str.1785, ptr %i.bf ; 2 uses
  %i.bh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #28
  store i64 %i.bh, ptr %15, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.bg, ptr %i.bi, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.bk = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %i.bk, null
  %i.bl = select i1 %.not.i.i.i44, ptr @.str.1785, ptr %i.bk ; 2 uses
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #28
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
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.bu = load ptr, ptr %3, align 8
  %i.bv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 20, ptr noundef nonnull @.str.1777, ptr noundef %i.bu) #28
  %i.bw = icmp sgt i32 %i.bv, -1
  br i1 %i.bw, label %bb.m, label %bb.l, !prof !33

bb.l:                                             ; preds = %bb.k
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS6_EOT_DpOT0_E20error_and_abort_args_1) #28
  call void @abort() #29
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.by = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.bz = icmp ugt i64 %i.by, %1
  br i1 %i.bz, label %bb.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.by, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53: ; preds = %bb.n
  %i.ca = sub nuw i64 %1, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  call void @_ZN4node11SPrintFImplB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, i64 %i.ca, ptr %i.cb)
  call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !1718
  %i.ce = load ptr, ptr %6, align 8, !noalias !1718
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %i.ce, i64 noundef %i.cd), !noalias !1718 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cg, ptr %0, align 8, !alias.scope !1718
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
  store ptr %i.ch, ptr %0, align 8, !alias.scope !1718
  %i.co = load i64, ptr %i.ci, align 8
  store i64 %i.co, ptr %i.cg, align 8, !alias.scope !1718
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  %i.cp = phi i64 [ %i.cl, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cp, ptr %i.cr, align 8, !alias.scope !1718
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
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.cx = load ptr, ptr %6, align 8               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.q
  %i.da = load i64, ptr %i.cy, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7FPrintFIJRjS1_EEEvP8_IO_FILESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #18 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN4node7SPrintFIJRjS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #35
  call void @_ZN4node6FWriteEP8_IO_FILERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  %i.a = load ptr, ptr %5, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRjS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRjJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #35
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %20 = ptrtoint ptr %i.c to i64
  %21 = ptrtoint ptr %2 to i64
  %22 = sub i64 %20, %21                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %22)
  store i64 %.sroa.speculated.i, ptr %8, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.e = add i64 %22, 1                           ; 3 uses
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1721

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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1722
  %i.n = load ptr, ptr %7, align 8, !noalias !1722
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1722
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1722
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRjJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.s, ptr %i.t, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.z = load ptr, ptr %10, align 8               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.o

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa123 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1725
  %i.ae = load ptr, ptr %7, align 8, !noalias !1725
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1725
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1725
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.ah = icmp ugt i64 %.lcssa123, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa123, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa123
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa123
  call void @_ZN4node11SPrintFImplIRjJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ak = load ptr, ptr %13, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.ap = load ptr, ptr %12, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @_ZN4node14ToStringHelper7ConvertIjbbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %14) ; 0 uses
  %i.av = load ptr, ptr %14, align 8              ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN4node12ToBaseStringILj3EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 0 uses
  %i.bb = load ptr, ptr %15, align 8              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.l

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZN4node12ToBaseStringILj4EjEEDaRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.bh = load ptr, ptr %16, align 8              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.i
  %i.bk = load i64, ptr %i.bi, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
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
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.bs = load ptr, ptr %18, align 8              ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRjJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_E20error_and_abort_args_0) #28
  call void @abort() #29
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.bx = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.by = icmp ugt i64 %i.bx, %1
  br i1 %i.by, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.bx, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit60: ; preds = %bb.l
  %i.bz = sub nuw i64 %1, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  call void @_ZN4node11SPrintFImplIRjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.bz, ptr %i.ca, ptr noundef nonnull align 4 dereferenceable(4) %4) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !1728)
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !1728
  %i.cd = load ptr, ptr %7, align 8, !noalias !1728
  %i.ce = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cc), !noalias !1728 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cf, ptr %0, align 8, !alias.scope !1728
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
  store ptr %i.cg, ptr %0, align 8, !alias.scope !1728
  %i.cn = load i64, ptr %i.ch, align 8
  store i64 %i.cn, ptr %i.cf, align 8, !alias.scope !1728
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.co = phi i64 [ %i.ck, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.co, ptr %i.cq, align 8, !alias.scope !1728
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
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.cw = load ptr, ptr %7, align 8               ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.o
  %i.cz = load i64, ptr %i.cx, align 8
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #18 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #35
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
  %i.c = tail call ptr @memchr(ptr noundef %2, i32 noundef 37, i64 noundef %1) #28 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.b, !prof !1467

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_E20error_and_abort_args) #28
  tail call void @abort() #29
  unreachable

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %19 = ptrtoint ptr %i.c to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = sub i64 %19, %20                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %21)
  store i64 %.sroa.speculated.i, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.e = add i64 %21, 1                           ; 3 uses
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
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !1731

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 37, ptr %i.b, align 1, !noalias !1732
  %i.n = load ptr, ptr %6, align 8, !noalias !1732
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1732
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1732
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef %i.n, i64 noundef %i.p, ptr noundef nonnull %i.b, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.q = add i64 %.0.lcssa, 2                     ; 4 uses
  %i.r = icmp ugt i64 %i.q, %1
  br i1 %i.r, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %i.q, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.d
  %i.s = sub nuw i64 %1, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.s, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(32) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.u = load ptr, ptr %10, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.z = load ptr, ptr %9, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.u

.thread:                                          ; preds = %.critedge2, %.critedge, %bb.c
  %.lcssa122 = phi i64 [ %.lcssa, %bb.c ], [ %.lcssa, %.critedge ], [ %1, %.critedge2 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 37, ptr %i.a, align 1, !noalias !1735
  %i.ae = load ptr, ptr %6, align 8, !noalias !1735
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !1735
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1735
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ah = icmp ugt i64 %.lcssa122, %1
  br i1 %i.ah, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32

bb.f:                                             ; preds = %.thread
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1781, ptr noundef nonnull @.str.1780, i64 noundef %.lcssa122, i64 noundef %1) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32: ; preds = %.thread
  %i.ai = sub nuw i64 %1, %.lcssa122
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.lcssa122
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.ai, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %3) #35
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %i.ak = load ptr, ptr %12, align 8              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ap = load ptr, ptr %11, align 8              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.u

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  store ptr %i.au, ptr %13, align 8, !alias.scope !1744
  %i.av = load ptr, ptr %3, align 8, !noalias !1744 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !1744 ; 8 uses
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.az = icmp slt i64 %i.ax, 0
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1548) #29
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ba = add nuw i64 %i.ax, 1                    ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.j
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #30 ; 2 uses
  store ptr %i.bc, ptr %13, align 8, !alias.scope !1744
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !1744
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
  store i64 %i.ax, ptr %i.bf, align 8, !alias.scope !1744
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax
end_hunk_8
