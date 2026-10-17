Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/JitInliner?download=true
inline.NumInlined: 5860
inline.NumDeleted: 2545
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm:bb.a

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !450
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %2, ptr %i.t, align 8, !tbaa !231
  %i.u = load ptr, ptr %0, align 8, !tbaa !449    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !228  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !229
  store ptr %i.x, ptr %3, align 8, !tbaa !229
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !228
  store ptr %3, ptr %i.y, align 8, !tbaa !229
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !535
  store ptr %i.aa, ptr %3, align 8, !tbaa !229
  store ptr %3, ptr %i.z, align 8, !tbaa !535
  %i.ab = load ptr, ptr %3, align 8, !tbaa !229   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !450
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !231
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !228
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !228
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !1218
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !1218
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !556  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !234  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !235
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE18_M_deallocate_nodeEPSB_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !390

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1220
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !390

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4Luau8Bytecode4BcOpESt6vectorIS5_SaIS5_EEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !535  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !535
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !229 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !231
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !228  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !535
  store ptr %i.o, ptr %.02530, align 8, !tbaa !229
  store ptr %.02530, ptr %i.g, align 8, !tbaa !535
  store ptr %i.g, ptr %i.m, align 8, !tbaa !228
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !229
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !228
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !229
  store ptr %i.r, ptr %.02530, align 8, !tbaa !229
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !228
  store ptr %.02530, ptr %i.s, align 8, !tbaa !229
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1219

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !449    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !450
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #25
  br label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !450
  store ptr %.0.i, ptr %0, align 8, !tbaa !449
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4Luau8Bytecode4BcOpESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !382
  %i.c = load ptr, ptr %1, align 8, !tbaa !234    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !235
  %i.i = load ptr, ptr %0, align 8, !tbaa !234    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !390

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 3 uses
  %i.o = add i64 %i.d, -4
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -4
  %i.r = add i64 %i.q, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.r, i1 false), !tbaa !48
  %3 = load ptr, ptr %0, align 8, !tbaa !234      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !235
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #25
  br label %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !234
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !235
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !382
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 4
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !430

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 4
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !48
  store i32 %i.ad, ptr %i.i, align 4, !tbaa !48
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.ae = icmp sgt i64 %i.aa, 4
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !430

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.af = icmp eq i64 %i.aa, 4
  br i1 %i.af, label %bb.n, label %_ZSt4copyIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !48
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !48
  br label %_ZSt4copyIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !234   ; 2 uses
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !382 ; 4 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !234
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 4 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !382 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit
  %i.ap = ptrtoaddr ptr %i.ah to i64              ; 2 uses
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = add i64 %i.aq, %i.al
  %i.as = add i64 %i.ar, -4
  %i.at = add i64 %i.ak, %i.ap
  %i.au = sub i64 %i.as, %i.at                    ; 2 uses
  %i.av = lshr i64 %i.au, 2
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 44
  %i.ax = sub i64 %i.ap, %i.al
  %diff.check = icmp ugt i64 %i.ax, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aw, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.ai, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.an, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.bb ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.an, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep32, align 4, !tbaa !48
  %wide.load33 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !48
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !48
  store <4 x i32> %wide.load33, ptr %i.bd, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !1221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.preheader35

.lr.ph.i.i.i.i.preheader35:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader35, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader35 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader35 ] ; 2 uses
  %i.bf = load i32, ptr %.0810.i.i.i.i, align 4, !tbaa !48
  store i32 %i.bf, ptr %.011.i.i.i.i, align 4, !tbaa !48
  %i.bg = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1222

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN4Luau8Bytecode4BcOpES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN4Luau8Bytecode4BcOpESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.bi = load ptr, ptr %0, align 8, !tbaa !234
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !382
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIN4Luau8Bytecode4BcOpESt4pairIKS3_St6vectorIS3_SaIS3_EEESaIS9_ENS_10_Select1stESt8equal_toIS3_ENS2_8BcOpHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<Luau::Bytecode::BcOp, std::pair<const Luau::Bytecode::BcOp, std::vector<Luau::Bytecode::BcOp>>, std::allocator<std::pair<const Luau::Bytecode::BcOp, std::vector<Luau::Bytecode::BcOp>>>, std::__detail::_Select1st, std::equal_to<Luau::Bytecode::BcOp>, Luau::Bytecode::BcOpHash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %.0.copyload.i.i = load i32, ptr %1, align 4    ; 3 uses
  %.0.insert.ext.i.i = zext i32 %.0.copyload.i.i to i64 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !450  ; 2 uses
  %i.c = urem i64 %.0.insert.ext.i.i, %i.b        ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !449
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !228  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !229  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !231
  %i.k = icmp eq i64 %i.j, %.0.insert.ext.i.i
  %i.l = load i32, ptr %i.h, align 8
  %i.m = icmp eq i32 %.0.copyload.i.i, %i.l
  %i.n = select i1 %i.k, i1 %i.m, i1 false
  br i1 %i.n, label %.loopexit28, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.p = icmp eq i64 %i.v, %.0.insert.ext.i.i
  %i.q = load i32, ptr %i.o, align 8
  %i.r = icmp eq i32 %.0.copyload.i.i, %i.q
  %i.s = select i1 %i.p, i1 %i.r, i1 false
  br i1 %i.s, label %.loopexit28, label %.lr.ph.i.i, !llvm.loop !22

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.t, %bb.c ], [ %i.g, %bb.b ]
  %i.t = load ptr, ptr %.020.i.i, align 8, !tbaa !229 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.t, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !231  ; 2 uses
  %i.w = urem i64 %i.v, %i.b
  %.not19.i.i = icmp eq i64 %i.w, %i.c
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !22

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !555
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24 ; 5 uses
  store ptr null, ptr %i.y, align 8, !tbaa !229
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %1, align 4, !tbaa !48
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr %i.y, ptr %i.x, align 8, !tbaa !556
  %i.ac = invoke ptr @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.c, i64 noundef %.0.insert.ext.i.i, ptr noundef nonnull %i.y, i64 noundef 1)
          to label %_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.e

_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.loopexit28

bb.e:                                             ; preds = %.loopexit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN4Luau8Bytecode4BcOpESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS1_8BcOpHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
end_hunk_0
