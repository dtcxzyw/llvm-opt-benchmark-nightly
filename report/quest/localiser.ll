Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/localiser?download=true
inline.NumInlined: 2300
inline.NumDeleted: 618
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSC_10_Hash_nodeISA_Lb0EEEm:bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #21
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !98
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  store ptr %i.w, ptr %3, align 8, !tbaa !43
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !42
  store ptr %3, ptr %i.x, align 8, !tbaa !43
  br label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSC_10_Hash_nodeISA_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !103
  store ptr %i.z, ptr %3, align 8, !tbaa !43
  store ptr %3, ptr %i.y, align 8, !tbaa !103
  %i.aa = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !98
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !42
  br label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSC_10_Hash_nodeISA_Lb0EEE.exit

_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSC_10_Hash_nodeISA_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !226
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !226
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #20
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #20
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE18_M_deallocate_nodeEPSD_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !228
  br label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #19 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS9_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !103
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !42   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !103
  store ptr %i.o, ptr %.02530, align 8, !tbaa !43
  store ptr %.02530, ptr %i.g, align 8, !tbaa !103
  store ptr %i.g, ptr %i.m, align 8, !tbaa !42
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !43
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !42
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !43
  store ptr %i.r, ptr %.02530, align 8, !tbaa !43
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !42
  store ptr %.02530, ptr %i.s, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !227

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !98
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #20
  br label %_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIySt4pairIKySt6vectorISt5tupleIJ8PauliStrSt7complexIdEEESaIS7_EEESaISA_ENSt8__detail10_Select1stESt8equal_toIyESt4hashIyENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !98
  store ptr %.0.i, ptr %0, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress uwtable
define { double, double } @_Z39localiser_densmatr_calcExpecPauliStrSum5Qureg11PauliStrSum(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::complex", align 16     ; 5 uses
  tail call void @_Z29assert_localiserGivenDensMatr5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.b = load i64, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit
  %3 = extractelement <2 x double> %24, i64 1
  %4 = extractelement <2 x double> %24, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.fca.1.load10 = phi double [ 0.000000e+00, %bb.a ], [ %3, %._crit_edge.loopexit ]
  %.fca.0.load8 = phi double [ 0.000000e+00, %bb.a ], [ %4, %._crit_edge.loopexit ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.b:                                             ; preds = %.lr.ph, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit
  %.06 = phi i64 [ 0, %.lr.ph ], [ %i.t, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit ] ; 3 uses
  %5 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %24, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit ]
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.06
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.06 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.k, align 8, !tbaa !46
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !46
  %i.l = tail call { double, double } @_Z42getDensMatrExpecPauliStrTermOfOnlyThisNode5Qureg8PauliStr(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) ; 2 uses
  %i.m = extractvalue { double, double } %i.l, 0  ; 2 uses
  %i.n = extractvalue { double, double } %i.l, 1  ; 2 uses
  %6 = load <2 x double>, ptr %i.j, align 8       ; 4 uses
  %7 = insertelement <2 x double> poison, double %i.n, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %10 = fmul <2 x double> %8, %9                  ; 2 uses
  %11 = insertelement <2 x double> poison, double %i.m, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %6, %12                 ; 2 uses
  %14 = fsub <2 x double> %13, %10                ; 2 uses
  %15 = fadd <2 x double> %13, %10                ; 2 uses
  %16 = shufflevector <2 x double> %14, <2 x double> %15, <2 x i32> <i32 0, i32 3> ; 2 uses
  %17 = extractelement <2 x double> %14, i64 0
  %i.o = fcmp uno double %17, 0.000000e+00
  br i1 %i.o, label %bb.c, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, !prof !93

bb.c:                                             ; preds = %bb.b
  %18 = extractelement <2 x double> %15, i64 1
  %i.p = fcmp uno double %18, 0.000000e+00
  br i1 %i.p, label %bb.d, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit, !prof !93

bb.d:                                             ; preds = %bb.c
  %19 = extractelement <2 x double> %6, i64 0
  %20 = extractelement <2 x double> %6, i64 1
  %i.q = tail call noundef { double, double } @__muldc3(double noundef %19, double noundef %20, double noundef %i.m, double noundef %i.n) #17 ; 2 uses
  %i.r = extractvalue { double, double } %i.q, 0
  %i.s = extractvalue { double, double } %i.q, 1
  %21 = insertelement <2 x double> poison, double %i.r, i64 0
  %22 = insertelement <2 x double> %21, double %i.s, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit

_ZStmlIdESt7complexIT_ERKS2_S4_.exit:             ; preds = %bb.b, %bb.c, %bb.d
  %23 = phi <2 x double> [ %16, %bb.b ], [ %16, %bb.c ], [ %22, %bb.d ]
  %24 = fadd <2 x double> %23, %5                 ; 4 uses
  store <2 x double> %24, ptr %2, align 16
  %i.t = add nuw nsw i64 %.06, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.b
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !229

bb.e:                                             ; preds = %._crit_edge
  call void @_Z14comm_reduceAmpPSt7complexIdE(ptr noundef nonnull %2)
  %.fca.0.load.pre = load double, ptr %2, align 16
  %.fca.1.load.pre = load double, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.fca.1.load = phi double [ %.fca.1.load.pre, %bb.e ], [ %.fca.1.load10, %._crit_edge ]
  %.fca.0.load = phi double [ %.fca.0.load.pre, %bb.e ], [ %.fca.0.load8, %._crit_edge ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define { double, double } @_Z45localiser_statevec_calcExpecFullStateDiagMatr5Qureg17FullStateDiagMatrSt7complexIdEb(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %1, double %2, double %3, i1 noundef zeroext %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.Qureg, align 8              ; 5 uses
  %6 = alloca %struct.Qureg, align 8              ; 12 uses
  %7 = alloca %"class.std::complex", align 8      ; 4 uses
  %.sroa.20 = alloca [92 x i8], align 4           ; 6 uses
  %8 = alloca %struct.Qureg, align 8              ; 4 uses
  %9 = alloca %struct.FullStateDiagMatr, align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.0.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %.sroa.0.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.5.0.extract.shift to i32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.778.0.copyload = load i32, ptr %.sroa.778.0..sroa_idx, align 8
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.879.0.copyload = load i32, ptr %.sroa.879.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.1180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.1180.0.copyload = load ptr, ptr %.sroa.1180.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !46
  %i.a = load <2 x i64>, ptr %1, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !19 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !19 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19 ; 4 uses
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.656.0.copyload = load i32, ptr %.sroa.656.0..sroa_idx, align 4
  %.sroa.757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.757.0.copyload = load i64, ptr %.sroa.757.0..sroa_idx, align 8, !tbaa !46 ; 2 uses
  %.sroa.858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.959.0.copyload = load ptr, ptr %.sroa.959.0..sroa_idx, align 8, !tbaa !47 ; 3 uses
  %.sroa.1060.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.1060.0.copyload = load ptr, ptr %.sroa.1060.0..sroa_idx, align 8, !tbaa !47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.b = icmp eq i32 %.sroa.6.0.copyload, 0       ; 2 uses
  %i.c = icmp ne i32 %.sroa.5.0.copyload, 0       ; 2 uses
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %.sroa.778.0.copyload to i64
  %i.e = sdiv i64 %.sroa.2.0.copyload, %i.d
  %.not.i.i = icmp eq i32 %.sroa.879.0.copyload, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i64 @_Z35util_getGlobalColumnOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  br label %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  br label %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i

_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i: ; preds = %bb.d, %bb.c
  %i.h = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds [16 x i8], ptr %.sroa.959.0.copyload, i64 %i.h
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, 0
  %.idx.i.i = select i1 %.not2.i.i, i64 0, i64 %i.h
  %i.j = getelementptr inbounds [16 x i8], ptr %.sroa.1060.0.copyload, i64 %.idx.i.i
  %.sroa.12.sroa.0.0.copyload74 = load <5 x ptr>, ptr %.sroa.858.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20, ptr noundef nonnull align 4 dereferenceable(92) %i.k, i64 92, i1 false)
  br label %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit

bb.e:                                             ; preds = %bb.a
  %or.cond5.i = select i1 %i.b, i1 %i.c, i1 false
  br i1 %or.cond5.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !232
  call void @_Z27qureg_populateNonHeapFieldsiiiii(ptr dead_on_unwind nonnull writable sret(%struct.Qureg) align 8 %6, i32 noundef %.sroa.10.0.copyload, i32 noundef %.sroa.879.0.copyload, i32 noundef %.sroa.5.0.copyload, i32 noundef %.sroa.0.sroa.5.0.extract.trunc, i32 noundef %.sroa.4.0.copyload), !noalias !232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(104) %6, i64 104, i1 false), !noalias !232
  call void @_Z51assert_localiserDistribQuregSpooferGivenValidQuregs5QuregS_(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.Qureg) align 8 %6)
  %i.l = call noundef i64 @_Z34util_getGlobalIndexOfFirstLocalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %5), !noalias !232 ; 2 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %.sroa.1180.0.copyload, i64 %i.l
  %.not.i6.i = icmp eq i64 %.sroa.0.sroa.5.0.extract.shift, 0
  %.idx.i7.i = select i1 %.not.i6.i, i64 0, i64 %i.l
  %i.n = getelementptr inbounds [16 x i8], ptr %.sroa.12.0.copyload, i64 %.idx.i7.i
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(72) %5, i64 72, i1 false), !noalias !232
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !47, !noalias !232
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !47, !noalias !232
  %.sroa.12.sroa.0.0.copyload75 = load <5 x ptr>, ptr %.sroa.858.0..sroa_idx, align 8
  %i.o = load i64, ptr %6, align 8, !tbaa !19
  %.sroa.19.96..sroa_idx43 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.19.96.copyload44 = load i32, ptr %.sroa.19.96..sroa_idx43, align 8, !tbaa !19
  %.sroa.20.96..sroa_idx48 = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20.96..sroa_idx48, i64 92, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !232
  br label %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.12.sroa.0.0.copyload76 = load <5 x ptr>, ptr %.sroa.858.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20, ptr noundef nonnull align 4 dereferenceable(92) %i.p, i64 92, i1 false)
  br label %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit

_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit: ; preds = %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i, %bb.f, %bb.g
  %.sroa.12.sroa.0.0 = phi <5 x ptr> [ %.sroa.12.sroa.0.0.copyload75, %bb.f ], [ %.sroa.12.sroa.0.0.copyload76, %bb.g ], [ %.sroa.12.sroa.0.0.copyload74, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.15.sroa.0.0 = phi i64 [ %i.o, %bb.f ], [ %.sroa.0.0.copyload, %bb.g ], [ %.sroa.0.0.copyload, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.19.0 = phi i32 [ %.sroa.19.96.copyload44, %bb.f ], [ %.sroa.6.0.copyload, %bb.g ], [ %.sroa.6.0.copyload, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ] ; 2 uses
  %.sroa.14.0 = phi ptr [ %.sroa.1060.0.copyload, %bb.f ], [ %.sroa.1060.0.copyload, %bb.g ], [ %i.j, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.13.0 = phi ptr [ %.sroa.959.0.copyload, %bb.f ], [ %.sroa.959.0.copyload, %bb.g ], [ %i.i, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.11.0 = phi i64 [ %.sroa.757.0.copyload, %bb.f ], [ %.sroa.757.0.copyload, %bb.g ], [ %i.e, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  %.sroa.9.0 = phi i32 [ %.sroa.5.0.copyload, %bb.f ], [ %.sroa.5.0.copyload, %bb.g ], [ 1, %_Z45getSpoofedDistributedMatrFromDistributedQureg17FullStateDiagMatr5Qureg.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %.sroa.15.sroa.0.0, ptr %8, align 8, !tbaa !19
  %.sroa.19.96..sroa_idx45 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.19.0, ptr %.sroa.19.96..sroa_idx45, align 8, !tbaa !19
  %.sroa.20.96..sroa_idx49 = getelementptr inbounds nuw i8, ptr %8, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20.96..sroa_idx49, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.20, i64 92, i1 false), !tbaa.struct !112
  store <2 x i64> %i.a, ptr %9, align 16
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %.sroa.3.0.copyload, ptr %.sroa.7.0..sroa_idx13, align 16, !tbaa !19
  %.sroa.8.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %.sroa.4.0.copyload, ptr %.sroa.8.0..sroa_idx17, align 4, !tbaa !19
  %.sroa.9.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx21, align 8, !tbaa !19
  %.sroa.10.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 %.sroa.656.0.copyload, ptr %.sroa.10.0..sroa_idx25, align 4
  %.sroa.11.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx29, align 16, !tbaa !46
  %.sroa.12.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %9, i64 40
  store <5 x ptr> %.sroa.12.sroa.0.0, ptr %.sroa.12.0..sroa_idx32, align 8, !tbaa !15
  %.sroa.13.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %.sroa.13.0, ptr %.sroa.13.0..sroa_idx35, align 16, !tbaa !47
  %.sroa.14.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %9, i64 88
  store ptr %.sroa.14.0, ptr %.sroa.14.0..sroa_idx39, align 8, !tbaa !47
  %i.q = call { double, double } @_Z45accel_statevec_calcExpecFullStateDiagMatr_sub5Qureg17FullStateDiagMatrSt7complexIdEb(ptr noundef nonnull byval(%struct.Qureg) align 8 %8, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %9, double %2, double %3, i1 noundef zeroext %4) ; 3 uses
  %i.r = extractvalue { double, double } %i.q, 0
  store double %i.r, ptr %7, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = extractvalue { double, double } %i.q, 1
  store double %i.t, ptr %i.s, align 8
  %.not = icmp eq i32 %.sroa.19.0, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit
  call void @_Z14comm_reduceAmpPSt7complexIdE(ptr noundef nonnull %7)
  %.fca.0.load.pre = load double, ptr %7, align 8
  %.fca.1.load.pre = load double, ptr %i.s, align 8
  %i.u = insertvalue { double, double } poison, double %.fca.0.load.pre, 0
  %i.v = insertvalue { double, double } %i.u, double %.fca.1.load.pre, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit
  %.fca.1.insert.merged = phi { double, double } [ %i.v, %bb.h ], [ %i.q, %_Z47getSpoofedQuregAndMatrWithMatchingDistributions5Qureg17FullStateDiagMatr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  ret { double, double } %.fca.1.insert.merged
}

declare { double, double } @_Z45accel_statevec_calcExpecFullStateDiagMatr_sub5Qureg17FullStateDiagMatrSt7complexIdEb(ptr noundef byval(%struct.Qureg) align 8, ptr noundef byval(%struct.FullStateDiagMatr) align 8, double, double, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define { double, double } @_Z45localiser_densmatr_calcExpecFullStateDiagMatr5Qureg17FullStateDiagMatrSt7complexIdEb(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %1, double %2, double %3, i1 noundef zeroext %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.Qureg, align 8              ; 5 uses
  %6 = alloca %struct.Qureg, align 8              ; 12 uses
  %7 = alloca %"class.std::complex", align 8      ; 4 uses
  %.sroa.20 = alloca [92 x i8], align 4           ; 6 uses
  %8 = alloca %struct.Qureg, align 8              ; 4 uses
  %9 = alloca %struct.FullStateDiagMatr, align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20)
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.0.sroa.5.0.extract.shift = lshr i64 %.sroa.0.0.copyload, 32 ; 2 uses
  %.sroa.0.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.5.0.extract.shift to i32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.778.0.copyload = load i32, ptr %.sroa.778.0..sroa_idx, align 8
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.879.0.copyload = load i32, ptr %.sroa.879.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.1180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.1180.0.copyload = load ptr, ptr %.sroa.1180.0..sroa_idx, align 8
end_hunk_0
