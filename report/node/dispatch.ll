inline.NumInlined: 1609
inline.NumDeleted: 800
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNSt10_HashtableIPN8v8_crdtp16DomainDispatcher7WeakPtrES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN8v8_crdtp16DomainDispatcher7WeakPtrELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPN8v8_crdtp16DomainDispatcher7WeakPtrES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPN8v8_crdtp16DomainDispatcher7WeakPtrES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN8v8_crdtp16DomainDispatcher7WeakPtrELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN8v8_crdtp16DomainDispatcher7WeakPtrELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPN8v8_crdtp16DomainDispatcher7WeakPtrES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIPN8v8_crdtp16DomainDispatcher7WeakPtrES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIPN8v8_crdtp16DomainDispatcher7WeakPtrES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIPN8v8_crdtp16DomainDispatcher7WeakPtrES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPN8v8_crdtp16DomainDispatcher7WeakPtrES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #21
  br label %_ZNSt10_HashtableIPN8v8_crdtp16DomainDispatcher7WeakPtrES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPN8v8_crdtp16DomainDispatcher7WeakPtrES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #11

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN8v8_crdtp12SpanLessThanESt4spanIKhLm18446744073709551615EES2_(ptr, i64, ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_0E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %"_ZSt10__invoke_rIvRZNK8v8_crdtp14UberDispatcher8DispatchERKNS0_12DispatchableEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

"_ZSt10__invoke_rIvRZNK8v8_crdtp14UberDispatcher8DispatchERKNS0_12DispatchableEE3$_0JEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %.val) #20, !inline_history !101
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 5 uses
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #22 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %.val, i64 96, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %"_ZNSt14_Function_base13_Base_managerIZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_0E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 2) #20, !inline_history !102 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.j, ptr %i.f, align 8
  %i.k = load ptr, ptr %i.c, align 8
  store ptr %i.k, ptr %i.g, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_0E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i"

"_ZNSt14_Function_base13_Base_managerIZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_0E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i": ; preds = %bb.e, %bb.d
  store ptr %i.a, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.f:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8            ; 4 uses
  %i.l = icmp eq ptr %.val6.i, null
  br i1 %i.l, label %"_ZNSt14_Function_base13_Base_managerIZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val6.i, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %"_ZZNK8v8_crdtp14UberDispatcher8DispatchERKNS_12DispatchableEEN3$_0D2Ev.exit.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val6.i, i64 96 ; 2 uses
  %i.p = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 3) #20, !inline_history !103 ; 0 uses
  br label %"_ZZNK8v8_crdtp14UberDispatcher8DispatchERKNS_12DispatchableEEN3$_0D2Ev.exit.i.i"

"_ZZNK8v8_crdtp14UberDispatcher8DispatchERKNS_12DispatchableEEN3$_0D2Ev.exit.i.i": ; preds = %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 128) #21
  br label %"_ZNSt14_Function_base13_Base_managerIZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %"_ZZNK8v8_crdtp14UberDispatcher8DispatchERKNS_12DispatchableEEN3$_0D2Ev.exit.i.i", %bb.f, %"_ZNSt14_Function_base13_Base_managerIZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_0E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i", %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvvEZNK8v8_crdtp14UberDispatcher8DispatchERKNS1_12DispatchableEE3$_1E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #2 align 2 {
bb.a:
  %1 = alloca %"class.v8_crdtp::DispatchResponse", align 8 ; 3 uses
  %2 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %3 = alloca %"class.v8_crdtp::DispatchResponse", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = load ptr, ptr %.val, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i44 = ptrtoint ptr %.sroa.0.0.copyload.i.i.i.i to i64
  %.sroa.0.0.copyload.i.i.i.i28 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i.i.i to i64
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 17 uses
  store ptr %i.h, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  store i64 0, ptr %i.i, align 8
  %i.j = icmp ugt i64 %.sroa.2.0.copyload.i.i.i.i, 15
  br i1 %i.j, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = add nuw i64 %.sroa.2.0.copyload.i.i.i.i, 1 ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %._crit_edge.i.i.thread.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #23
  unreachable

._crit_edge.i.i.thread.i.i.i:                     ; preds = %bb.d
  %i.n = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #22 ; 2 uses
  store ptr %i.n, ptr %6, align 8
  store i64 %.sroa.2.0.copyload.i.i.i.i, ptr %i.h, align 8
  br label %iter.check

._crit_edge.i.i.i.i.i:                            ; preds = %bb.a
  %i.o = icmp samesign eq i64 %.sroa.2.0.copyload.i.i.i.i, 0
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS8_Lm18446744073709551615EEEEvEET_SD_RKS3_.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i.i.i.i, %._crit_edge.i.i.thread.i.i.i
  %i.p = phi ptr [ %i.n, %._crit_edge.i.i.thread.i.i.i ], [ %i.h, %._crit_edge.i.i.i.i.i ] ; 6 uses
  %min.iters.check = icmp ult i64 %.sroa.2.0.copyload.i.i.i.i, 4
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = sub i64 %.sroa.0.0.copyload.i.i.i.i28, %i.q
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %.sroa.2.0.copyload.i.i.i.i, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.sroa.2.0.copyload.i.i.i.i, 28
  %n.vec = and i64 %.sroa.2.0.copyload.i.i.i.i, -32 ; 5 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %n.vec
  %i.t = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %index ; 2 uses
  %next.gep30 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep30, align 1
  %wide.load31 = load <16 x i8>, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load31, ptr %i.v, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS8_Lm18446744073709551615EEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %.sroa.2.0.copyload.i.i.i.i, -4 ; 4 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %n.vec34
  %i.y = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %n.vec34
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %next.gep36 = getelementptr i8, ptr %i.p, i64 %index35
  %next.gep37 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %index35
  %wide.load38 = load <4 x i8>, ptr %next.gep37, align 1
  store <4 x i8> %wide.load38, ptr %next.gep36, align 1
  %index.next39 = add nuw i64 %index35, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i, %n.vec34
  br i1 %cmp.n40, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS8_Lm18446744073709551615EEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i.i.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.02.05.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 3 uses
  %i.aa = add i64 %.sroa.2.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i44 ; 2 uses
  %.sroa.02.05.i.i.i.i.i.i.ph45 = ptrtoint ptr %.sroa.02.05.i.i.i.i.i.i.ph to i64 ; 2 uses
  %i.ab = sub i64 %i.aa, %.sroa.02.05.i.i.i.i.i.i.ph45
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.02.05.i.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.02.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ac = load i8, ptr %.sroa.02.05.i.i.i.i.i.i.prol, align 1
  store i8 %i.ac, ptr %.06.i.i.i.i.i.i.prol, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !109

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.06.i.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.02.05.i.i.i.i.i.i.unr = phi ptr [ %.sroa.02.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.af = sub i64 %.sroa.02.05.i.i.i.i.i.i.ph45, %i.aa
  %i.ag = icmp ugt i64 %i.af, -8
  br i1 %i.ag, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS8_Lm18446744073709551615EEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.02.05.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.02.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ah = load i8, ptr %.sroa.02.05.i.i.i.i.i.i, align 1
  store i8 %i.ah, ptr %.06.i.i.i.i.i.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i.i, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 1
  %i.ak = load i8, ptr %i.ai, align 1
  store i8 %i.ak, ptr %i.aj, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i.i, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 2
  %i.an = load i8, ptr %i.al, align 1
  store i8 %i.an, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i.i, i64 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 3
  %i.aq = load i8, ptr %i.ao, align 1
  store i8 %i.aq, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i.i, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 4
  %i.at = load i8, ptr %i.ar, align 1
  store i8 %i.at, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i.i, i64 5
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 5
  %i.aw = load i8, ptr %i.au, align 1
  store i8 %i.aw, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i.i, i64 6
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 6
  %i.az = load i8, ptr %i.ax, align 1
  store i8 %i.az, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i.i, i64 7
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 7
  %i.bc = load i8, ptr %i.ba, align 1
  store i8 %i.bc, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8
  %i.bf = icmp eq ptr %i.bd, %i.g
  br i1 %i.bf, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS8_Lm18446744073709551615EEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !111

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS8_Lm18446744073709551615EEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre11.i.i.i.i.i = load ptr, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS8_Lm18446744073709551615EEEEvEET_SD_RKS3_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS8_Lm18446744073709551615EEEEvEET_SD_RKS3_.exit.i.i.i: ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS8_Lm18446744073709551615EEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.bg = phi ptr [ %.pre11.i.i.i.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS8_Lm18446744073709551615EEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i.i.i ], [ %i.h, %._crit_edge.i.i.i.i.i ]
  store i64 %.sroa.2.0.copyload.i.i.i.i, ptr %i.i, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.2.0.copyload.i.i.i.i
  store i8 0, ptr %i.bh, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.bi = load i64, ptr %i.i, align 8, !noalias !112 ; 14 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775807
  br i1 %i.bj, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS8_Lm18446744073709551615EEEEvEET_SD_RKS3_.exit.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #23, !noalias !112
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9__gnu_cxx17__normal_iteratorIPKhSt4spanIS8_Lm18446744073709551615EEEEvEET_SD_RKS3_.exit.i.i.i
  %i.bk = add nsw i64 %i.bi, 1                    ; 5 uses
  %i.bl = load ptr, ptr %6, align 8, !noalias !112 ; 11 uses
  %i.bm = icmp eq ptr %i.bl, %i.h                 ; 2 uses
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bn = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bn), !noalias !112
  %.not.i.i.i = icmp eq i64 %i.bi, 15
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bo = load i64, ptr %i.h, align 8, !noalias !112 ; 2 uses
  %.not.i4.i.i = icmp ugt i64 %i.bk, %i.bo
  br i1 %.not.i4.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bp = icmp ugt ptr %i.bl, @.str.17
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi
  %i.br = icmp ult ptr %i.bq, @.str.17
  %i.bs = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %i.bs, label %bb.h, label %bb.l, !prof !71

bb.h:                                             ; preds = %bb.g
  %.not35.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not35.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  %cond38.i.i.i = icmp eq i64 %i.bi, 1
  br i1 %cond38.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = load i8, ptr %i.bl, align 1, !noalias !112
  store i8 %i.bu, ptr %i.bt, align 1, !noalias !112
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr align 1 %i.bl, i64 %i.bi, i1 false), !noalias !112
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h
  store i8 39, ptr %i.bl, align 1, !noalias !112
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i.i

bb.l:                                             ; preds = %bb.g
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.bl, i64 noundef 0, ptr noundef nonnull @.str.17, i64 noundef 1, i64 noundef %i.bi) #25, !noalias !112
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread.i.i
  %i.bv = icmp slt i64 %i.bi, -1
  br i1 %i.bv, label %bb.m, label %.thread.i.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23, !noalias !112
  unreachable

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.bw = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2.i.i ]
  %i.bx = shl nuw i64 %i.bw, 1                    ; 2 uses
  %i.by = icmp ult i64 %i.bk, %i.bx
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bx, i64 9223372036854775807)
  %.0.i.i.i = select i1 %i.by, i64 %spec.store.select.i.i.i.i, i64 %i.bk ; 2 uses
  %i.bz = add nuw i64 %.0.i.i.i, 1                ; 2 uses
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.n:                                             ; preds = %.thread.i.i
  call void @_ZSt17__throw_bad_allocv() #23, !noalias !112
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %.thread.i.i
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #22, !noalias !112 ; 3 uses
  store i8 39, ptr %i.cb, align 1, !noalias !112
  %.not25.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not25.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 2 uses
  %cond31.i.i.i = icmp eq i64 %i.bi, 1
  br i1 %cond31.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = load i8, ptr %i.bl, align 1, !noalias !112
  store i8 %i.cd, ptr %i.cc, align 1, !noalias !112
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr align 1 %i.bl, i64 %i.bi, i1 false), !noalias !112
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i: ; preds = %bb.q, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i
  %i.ce = icmp samesign ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.ce), !noalias !112
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i.i.i
  %i.cf = load i64, ptr %i.h, align 8, !noalias !112
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.cg) #21, !noalias !112
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i.i.i
  store ptr %i.cb, ptr %6, align 8, !noalias !112
  store i64 %.0.i.i.i, ptr %i.h, align 8, !noalias !112
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  store i64 %i.bk, ptr %i.i, align 8, !noalias !112
  %i.ch = load ptr, ptr %6, align 8, !noalias !112
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bk
  store i8 0, ptr %i.ci, align 1, !noalias !112
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store ptr %i.cj, ptr %5, align 8, !alias.scope !112
  %i.ck = load ptr, ptr %6, align 8               ; 5 uses
  %i.cl = icmp eq ptr %i.ck, %i.h
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.thread.i.i, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i.i
  %i.cm = load i64, ptr %i.i, align 8             ; 5 uses
  %i.cn = icmp samesign ult i64 %i.cm, 16
  call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cj, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.co, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.cm, ptr %i.cp, align 8, !alias.scope !112
  store ptr %i.h, ptr %6, align 8
  store i64 0, ptr %i.i, align 8
  store i8 0, ptr %i.h, align 8
  %i.cq = add nuw nsw i64 %i.cm, 14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i.i
  store ptr %i.ck, ptr %5, align 8, !alias.scope !112
  %i.cr = load i64, ptr %i.h, align 8             ; 2 uses
  store i64 %i.cr, ptr %i.cj, align 8, !alias.scope !112
  %.pre.i.i.i.i = load i64, ptr %i.i, align 8     ; 5 uses
end_hunk_0
