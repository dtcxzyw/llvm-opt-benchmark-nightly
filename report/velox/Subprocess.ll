inline.NumInlined: 2295
inline.NumDeleted: 1225
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNSt10_HashtableIiSt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSL_NSA_10_AllocNodeISaINSA_10_Hash_nodeIS8_Lb0EEEEEEEEvOT_RKT0_:bb.a
.loopexit:                                        ; preds = %bb.u, %bb.m, %bb.h
  ret void

bb.aa:                                            ; preds = %bb.y
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #51
  unreachable

bb.ab:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIiSt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !195 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !171
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !173
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #48, !call_target !174, !inline_history !1331
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #48, !call_target !182, !inline_history !1331
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #48
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 56) #50
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !1332

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !205
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !204
  %i.x = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIiSt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !221  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIiSt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !195 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170  ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !171
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !173
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #48, !call_target !174, !inline_history !1333
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #48, !call_target !182, !inline_history !1333
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #48
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 56) #50
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIiSt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !1332

_ZNSt10_HashtableIiSt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEELb0EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !205
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !204
  %i.x = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %0, align 8, !tbaa !205    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt10_HashtableIiSt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !204
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #50
  br label %_ZNSt10_HashtableIiSt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pipe2(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN5folly4FileC1Eib(ptr noundef nonnull align 4 dereferenceable(5), i32 noundef, i1 noundef zeroext) unnamed_addr #6

declare noundef nonnull align 4 dereferenceable(5) ptr @_ZN5folly4FileaSEOS0_(ptr noundef nonnull align 4 dereferenceable(5), ptr noundef nonnull align 4 dereferenceable(5)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #32

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly10Subprocess12SpawnRawArgs7ScratchC2ERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(736) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5boost9container8flat_mapIiiSt4lessIiEvE3endEv.exit:
  %2 = alloca %"class.std::allocator.124", align 1 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !57, !noalias !1334 ; 7 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66, !noalias !1341 ; 2 uses
  %.idx34 = shl nsw i64 %i.d, 3                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.f = icmp ugt i64 %.idx34, 9223372036854775800
  br i1 %i.f, label %bb.a, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.a:                                             ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiEvE3endEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #49
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  unreachable

_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %_ZNK5boost9container8flat_mapIiiSt4lessIiEvE3endEv.exit
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.thread.i, label %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i

_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.thread.i: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %3 = getelementptr inbounds nuw i8, ptr null, i64 %.idx34
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %4, align 8, !tbaa !1320
  br label %.loopexit35

_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx34) #52
          to label %iter.check unwind label %bb.b ; 8 uses

iter.check:                                       ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i
  store ptr %i.g, ptr %0, align 8, !tbaa !1289
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !1320
  %i.j = add nsw i64 %.idx34, -8                  ; 3 uses
  %i.k = lshr exact i64 %i.j, 3
  %i.l = add nuw nsw i64 %i.k, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.j, 24
  %i.m = ptrtoaddr ptr %i.g to i64
  %i.n = sub i64 %i.b, %i.m
  %diff.check = icmp ugt i64 %i.n, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check50 = icmp ult i64 %i.j, 120
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.l, 12
  %n.vec = and i64 %i.l, 4611686018427387888      ; 4 uses
  %i.o = shl i64 %n.vec, 3                        ; 2 uses
  %i.p = getelementptr i8, ptr %i.a, i64 %i.o
  %i.q = getelementptr i8, ptr %i.g, i64 %i.o     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.r ; 4 uses
  %next.gep51 = getelementptr i8, ptr %i.g, i64 %i.r ; 4 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 32
  %i.t = getelementptr i8, ptr %next.gep, i64 64
  %i.u = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep, align 4
  %wide.load52 = load <4 x i64>, ptr %i.s, align 4
  %wide.load53 = load <4 x i64>, ptr %i.t, align 4
  %wide.load54 = load <4 x i64>, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %next.gep51, i64 32
  %i.w = getelementptr i8, ptr %next.gep51, i64 64
  %i.x = getelementptr i8, ptr %next.gep51, i64 96
  store <4 x i64> %wide.load, ptr %next.gep51, align 4
  store <4 x i64> %wide.load52, ptr %i.v, align 4
  store <4 x i64> %wide.load53, ptr %i.w, align 4
  store <4 x i64> %wide.load54, ptr %i.x, align 4
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit35, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !124

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec57 = and i64 %i.l, 4611686018427387900    ; 3 uses
  %i.z = shl i64 %n.vec57, 3                      ; 2 uses
  %i.aa = getelementptr i8, ptr %i.a, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.g, i64 %i.z    ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 2 uses
  %i.ac = shl i64 %index58, 3                     ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.a, i64 %i.ac
  %next.gep60 = getelementptr i8, ptr %i.g, i64 %i.ac
  %wide.load61 = load <4 x i64>, ptr %next.gep59, align 4
  store <4 x i64> %wide.load61, ptr %next.gep60, align 4
  %index.next62 = add nuw i64 %index58, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1347

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n63 = icmp eq i64 %i.l, %n.vec57
  br i1 %cmp.n63, label %.loopexit35, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.0.i.i.i.i.i.ph = phi ptr [ %i.a, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  %.05.i.i.i.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.05.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.02.0.i.i.i.i.i, align 4
  store i64 %i.ae, ptr %.05.i.i.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %i.e
  br i1 %.not.i.i.i.i.i.i, label %.loopexit35, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1348

bb.b:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !1289  ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i4.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1320
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #50
  br label %.body

.loopexit35:                                      ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.thread.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.thread.i ], [ %i.ab, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ao, align 8, !tbaa !1291
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !199 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit35, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ 0, %.loopexit35 ] ; 2 uses
  %.sroa.02.04.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %i.ar, %.loopexit35 ]
  %i.at = load ptr, ptr %.sroa.02.04.i.i.i, align 8, !tbaa !195 ; 2 uses
  %i.au = add nuw nsw i64 %.05.i.i.i, 1           ; 3 uses
  %i.av = icmp eq ptr %i.at, null
  br i1 %i.av, label %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIPcLb1ELb0EEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1349

_ZSt10__distanceINSt8__detail20_Node_const_iteratorIPcLb1ELb0EEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.aw = icmp samesign ugt i64 %.05.i.i.i, 1152921504606846974
  br i1 %i.aw, label %bb.d, label %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i

bb.d:                                             ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIPcLb1ELb0EEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #49
          to label %.noexc.i20 unwind label %bb.e

.noexc.i20:                                       ; preds = %bb.d
  unreachable

_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIPcLb1ELb0EEEENSt15iterator_traitsIT_E15difference_typeES5_S5_St18input_iterator_tag.exit.i.i
  %i.ax = shl nuw nsw i64 %i.au, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #52
          to label %.noexc5.i unwind label %bb.e  ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i
  store ptr %i.ay, ptr %i.ap, align 8, !tbaa !1300
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !1319
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc5.i
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ay, %.noexc5.i ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ar, %.noexc5.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !45
  store ptr %i.bc, ptr %.07.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !45
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = load ptr, ptr %.sroa.03.06.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !195 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1350

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.i, %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %i.ap, align 8, !tbaa !1300 ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i19, label %.body21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1319
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #50
  br label %.body21

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.loopexit35
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %.loopexit35 ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.bn, align 8, !tbaa !1303
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #48
  invoke void @_ZNSt6vectorISt4pairIiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS7_EEC2INSt8__detail20_Node_const_iteratorIS0_IKiS6_ELb0ELb0EEEvEET_SG_RKS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr %i.bq, ptr null, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  %i.br = load ptr, ptr %0, align 8, !tbaa !94    ; 4 uses
  %i.bs = load ptr, ptr %i.ao, align 8, !tbaa !94 ; 4 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3
  %i.by = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = xor i64 %i.bz, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.br, ptr %i.bs, i64 noundef %i.ca)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.br, ptr %i.bs)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit unwind label %bb.j

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %bb.g, %.noexc
  ret void

bb.i:                                             ; preds = %.loopexit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #48
  br label %bb.k

bb.j:                                             ; preds = %.noexc, %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIiN5folly10Subprocess7Options12AttrWithMetaI6rlimitEEESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bo) #48
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.j ], [ %i.cb, %bb.i ] ; 2 uses
  %i.cd = load ptr, ptr %i.ap, align 8, !tbaa !1300 ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i24, label %.body21, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1319
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #50
  br label %.body21

.body21:                                          ; preds = %bb.l, %bb.k, %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.e ], [ %.pn, %bb.l ], [ %i.bg, %bb.f ], [ %.pn, %bb.k ] ; 2 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !1289  ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i26, label %.body, label %bb.m

bb.m:                                             ; preds = %.body21
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1320
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #50
  br label %.body

.body:                                            ; preds = %bb.m, %.body21, %bb.c, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.b ], [ %.pn.pn, %bb.m ], [ %i.ah, %bb.c ], [ %.pn.pn, %.body21 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: disable_sanitizer_instrumentation mustprogress noinline uwtable
define noundef range(i32 1, -1) i32 @_ZN5folly10Subprocess19spawnInternalDoForkERKNS0_12SpawnRawArgsE(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #33 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5folly6detail15subprocess_libc5vforkE, align 8, !tbaa !167
  %i.b = tail call noundef i32 %i.a() #48         ; 2 uses
  %i.c = tail call ptr @__errno_location() #55    ; 2 uses
  switch i32 %i.b, label %bb.c [
    i32 -1, label %bb.b
    i32 0, label %bb.d
  ], !prof !1351

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly16throwSystemErrorIJRiRA15_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(15) @.str.58) #49
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i32 %i.b

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1288, !range !251, !noundef !252
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @_ZN5folly6detail15subprocess_libc5vforkE, align 8, !tbaa !167
  %i.h = tail call noundef i32 %i.g() #48
  switch i32 %i.h, label %bb.g [
    i32 -1, label %bb.f
    i32 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %i.c, align 4, !tbaa !21
  tail call void @_ZN5folly10Subprocess10childErrorERKNS0_12SpawnRawArgsEii(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 126, i32 noundef %i.i) #49
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @_ZN5folly6detail15subprocess_libc5_exitE, align 8, !tbaa !167
  tail call void %i.j(i32 noundef 0) #49
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.k = tail call noundef i32 @_ZN5folly10Subprocess12prepareChildERKNS0_12SpawnRawArgsE(ptr noundef nonnull align 8 dereferenceable(312) %0) ; 2 uses
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5folly10Subprocess10childErrorERKNS0_12SpawnRawArgsEii(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 126, i32 noundef %i.k) #49
  unreachable
end_hunk_0
