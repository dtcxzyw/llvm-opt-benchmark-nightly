Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_compression?download=true
inline.NumInlined: 14179
inline.NumDeleted: 6830
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 157
begin_hunk_0_@_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm:bb.a
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #30 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !974
  invoke void @__cxa_rethrow() #31
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
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
  tail call void @__clang_call_terminate(ptr %i.q) #34
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !1357
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !1356   ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !391  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !388
  store ptr %i.w, ptr %3, align 8, !tbaa !388
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !391
  store ptr %3, ptr %i.x, align 8, !tbaa !388
  br label %_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1367
  store ptr %i.z, ptr %3, align 8, !tbaa !388
  store ptr %3, ptr %i.y, align 8, !tbaa !1367
  %i.aa = load ptr, ptr %3, align 8, !tbaa !388   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1357
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !101
  %i.ae = zext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !391
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !391
  br label %_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !1358
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !1358
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !3239
  br label %_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjiELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !153

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjiELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjiELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKjiELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1367 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !1367
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !388 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !101
  %i.l = zext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !391  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !1367
  store ptr %i.p, ptr %.02530, align 8, !tbaa !388
  store ptr %.02530, ptr %i.g, align 8, !tbaa !1367
  store ptr %i.g, ptr %i.n, align 8, !tbaa !391
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !388
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !391
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !388
  store ptr %i.s, ptr %.02530, align 8, !tbaa !388
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !391
  store ptr %.02530, ptr %i.t, align 8, !tbaa !388
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3238

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !1356   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.u) #32
  br label %_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIjSt4pairIKjiESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.x, align 8, !tbaa !1357
  store ptr %.0.i, ptr %0, align 8, !tbaa !1356
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %4 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %8 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 16 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit
  %i.h = icmp eq i64 %i.bw, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph50, !llvm.loop !3240

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cq, %bb.b ] ; 2 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i27.lcssa, 4               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i27.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i, %._crit_edge
  %.011.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.an, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.011.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i = load i32, ptr %i.s, align 8, !tbaa !101 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !116
  %i.t = icmp slt i64 %.011.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.011.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.x
  %i.z = load i32, ptr %i.w, align 8, !tbaa !1370
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !1370
  %i.ab = icmp ugt i32 %i.z, %i.aa
  %spec.select.i.i.i = select i1 %i.ab, i64 %i.x, i64 %i.v ; 4 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.ad = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !1372
  %i.ae = icmp slt i64 %spec.select.i.i.i, %i.m
  br i1 %i.ae, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !3241

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.011.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.af = icmp eq i64 %.0.lcssa.i.i.i, %i.k
  %or.cond.i.i = select i1 %i.o, i1 %i.af, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !1372
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ag = icmp sgt i64 %.1.i.i.i, %.011.i.i
  br i1 %i.ag, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi i64 [ %.0921.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0921.in.i.i.i.i = add nsw i64 %.020.i.i.i.i, -1
  %.0921.i.i.i.i = sdiv i64 %.0921.in.i.i.i.i, 2  ; 4 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0921.i.i.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1370
  %i.aj = icmp ugt i32 %i.ai, %.sroa.04.0.copyload.i.i
  br i1 %i.aj, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.020.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1372
  %i.al = icmp sgt i64 %.0921.i.i.i.i, %.011.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i, !llvm.loop !3242

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0921.i.i.i.i, %bb.f ], [ %.020.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  store i32 %.sroa.04.0.copyload.i.i, ptr %i.am, align 8, !tbaa !101
  %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i, align 8, !tbaa !116
  %.not.i.i = icmp eq i64 %.011.i.i, 0
  %i.an = add nsw i64 %.011.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !3243

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.ao, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !101 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.a                     ; 3 uses
  %i.ar = ashr exact i64 %i.aq, 4                 ; 3 uses
  %i.as = add nsw i64 %i.ar, -1
  %i.at = lshr i64 %i.as, 1
  %i.au = icmp sgt i64 %i.ar, 2
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.av = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.ay
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !1370
  %i.bb = load i32, ptr %i.az, align 8, !tbaa !1370
  %i.bc = icmp ugt i32 %i.ba, %i.bb
  %spec.select.i.i.i.i = select i1 %i.bc, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.be = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !1372
  %i.bf = icmp slt i64 %spec.select.i.i.i.i, %i.at
  br i1 %i.bf, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3241

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bg = and i64 %i.aq, 16
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = add nsw i64 %i.ar, -2
  %i.bj = ashr exact i64 %i.bi, 1
  %i.bk = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bj
  br i1 %i.bk, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bl = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bm = or disjoint i64 %i.bl, 1                ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !1372
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.020.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bm, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.020.i.i.i.i.i = phi i64 [ %.0921.i.i910.i.i.i, %bb.i ], [ %.020.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i, -1
  %.0921.i.i910.i.i.i = lshr i64 %.0921.in.i.i.i.i.i, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0921.i.i910.i.i.i ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1370
  %i.br = icmp ugt i32 %i.bq, %.sroa.04.0.copyload.i.i.i
  br i1 %i.br, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bs = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.020.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !1372
  %.not11.i.i.i = icmp eq i64 %.0921.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3242

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.020.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bt = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i.i.i, ptr %i.bt, align 8, !tbaa !101
  %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !116
  %i.bu = icmp sgt i64 %i.aq, 16
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit, !llvm.loop !3244

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2549 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02648 = phi i64 [ %i.bw, %bb.b ], [ %2, %.lr.ph ]
  %i.bv = phi i64 [ %i.cr, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bw = add nsw i64 %.02648, -1                 ; 3 uses
  %i.bx = lshr i64 %i.bv, 1
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.bx ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %storemerge2549, i64 -16 ; 5 uses
  %i.ca = load i32, ptr %i.f, align 8, !tbaa !1370 ; 3 uses
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !1370 ; 3 uses
  %i.cc = icmp ugt i32 %i.ca, %i.cb
  %i.cd = load i32, ptr %i.bz, align 8, !tbaa !1370 ; 4 uses
  br i1 %i.cc, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph50
  %i.ce = icmp ugt i32 %i.cb, %i.cd
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cf = icmp ugt i32 %i.ca, %i.cd
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph50
  %i.cg = icmp ugt i32 %i.ca, %i.cd
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.ch = icmp ugt i32 %i.cb, %i.cd
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cl, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2549, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %.fr28, align 8, !tbaa !1370 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i ], [ %i.cl, %bb.t ] ; 9 uses
  %i.cj = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !1370
  %i.ck = icmp ugt i32 %i.cj, %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.ck, label %bb.t, label %.preheader.i.i, !llvm.loop !3245

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %i.cm = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !1370
  %i.cn = icmp ugt i32 %i.ci, %i.cm
  br i1 %i.cn, label %.preheader.i.i, label %bb.u, !llvm.loop !3246

bb.u:                                             ; preds = %.preheader.i.i
  %i.co = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.co, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i, !llvm.loop !3247

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2549, i64 noundef %i.bw)
  %i.cp = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.cq = sub i64 %i.cp, %i.a                     ; 2 uses
  %i.cr = ashr exact i64 %i.cq, 4                 ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 16
  br i1 %i.cs, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit, !llvm.loop !3240

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %.sroa.5.i.i23 = alloca [12 x i8], align 4      ; 4 uses
  %2 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %.sroa.5.i.i12 = alloca [12 x i8], align 4      ; 4 uses
  %.sroa.5.i.i = alloca [12 x i8], align 4        ; 4 uses
  %3 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.e = load i32, ptr %.sroa.0.019.i.ptr, align 8, !tbaa !1370 ; 4 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !1370
  %i.g = icmp ugt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr, i64 16, i1 false), !tbaa.struct !1372
  %i.h = icmp samesign ugt i64 %.sroa.0.019.i.idx, 16
  br i1 %i.h, label %bb.d, label %bb.e, !prof !152

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1372
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, i64 12, i1 false), !tbaa.struct !1376
  %i.j = load i32, ptr %.pn18.i, align 8, !tbaa !1370
  %i.k = icmp ugt i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.011.i.i, i64 16, i1 false), !tbaa.struct !1372
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.l = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !1370
  %i.m = icmp ugt i32 %i.e, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i, !llvm.loop !3248

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.e, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !101
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, i64 12, i1 false), !tbaa.struct !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %bb.b, !llvm.loop !3249

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.n, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15
  %.sroa.0.07.i = phi ptr [ %i.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15 ], [ %i.n, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12)
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8, !tbaa !101 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i12, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i14, i64 12, i1 false), !tbaa.struct !1376
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.o = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !1370
  %i.p = icmp ugt i32 %.sroa.03.0.copyload.i.i, %i.o
  br i1 %i.p, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i19
  %.sroa.0.011.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.sroa.0.09.i.i, %.lr.ph.i13 ] ; 4 uses
  %.sroa.06.010.i.i21 = phi ptr [ %.sroa.0.011.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.07.i, %.lr.ph.i13 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.010.i.i21, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.011.i.i20, i64 16, i1 false), !tbaa.struct !1372
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i20, i64 -16 ; 2 uses
  %i.q = load i32, ptr %.sroa.0.0.i.i22, align 8, !tbaa !1370
  %i.r = icmp ugt i32 %.sroa.03.0.copyload.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15, !llvm.loop !3248

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15: ; preds = %.lr.ph.i.i19, %.lr.ph.i13
  %.sroa.06.0.lcssa.i.i16 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.011.i.i20, %.lr.ph.i.i19 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i16, align 8, !tbaa !101
  %.sroa.5.0..sroa_idx5.i.i17 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i16, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx5.i.i17, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i12, i64 12, i1 false), !tbaa.struct !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i18 = icmp eq ptr %i.s, %1
  br i1 %.not.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13, !llvm.loop !3250

bb.h:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %0, %1
  %.sroa.0.016.i25 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not17.i26 = icmp eq ptr %.sroa.0.016.i25, %1
  %or.cond = select i1 %i.t, i1 true, i1 %.not17.i26
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.019.i28 = phi ptr [ %.sroa.0.0.i34, %bb.n ], [ %.sroa.0.016.i25, %bb.h ] ; 7 uses
  %.pn18.i29 = phi ptr [ %.sroa.0.019.i28, %bb.n ], [ %0, %bb.h ] ; 5 uses
  %i.u = load i32, ptr %.sroa.0.019.i28, align 8, !tbaa !1370 ; 4 uses
  %i.v = load i32, ptr %0, align 8, !tbaa !1370
  %i.w = icmp ugt i32 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i28, i64 16, i1 false), !tbaa.struct !1372
  %i.x = ptrtoint ptr %.sroa.0.019.i28 to i64
  %i.y = sub i64 %i.x, %i.b                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 4                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !152

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 32
  %i.ac = sub nsw i64 0, %i.z
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp eq i64 %i.y, 16
  br i1 %i.ae, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1372
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i23)
  %.sroa.5.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i23, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i30, i64 12, i1 false), !tbaa.struct !1376
  %i.ag = load i32, ptr %.pn18.i29, align 8, !tbaa !1370
  %i.ah = icmp ugt i32 %i.u, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31

.lr.ph.i.i36:                                     ; preds = %bb.m, %.lr.ph.i.i36
  %.sroa.0.011.i.i37 = phi ptr [ %.sroa.0.0.i.i39, %.lr.ph.i.i36 ], [ %.pn18.i29, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i38 = phi ptr [ %.sroa.0.011.i.i37, %.lr.ph.i.i36 ], [ %.sroa.0.019.i28, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.010.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.011.i.i37, i64 16, i1 false), !tbaa.struct !1372
  %.sroa.0.0.i.i39 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i37, i64 -16 ; 2 uses
  %i.ai = load i32, ptr %.sroa.0.0.i.i39, align 8, !tbaa !1370
  %i.aj = icmp ugt i32 %i.u, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31, !llvm.loop !3248

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31: ; preds = %.lr.ph.i.i36, %bb.m
  %.sroa.06.0.lcssa.i.i32 = phi ptr [ %.sroa.0.019.i28, %bb.m ], [ %.sroa.0.011.i.i37, %.lr.ph.i.i36 ] ; 2 uses
  store i32 %i.u, ptr %.sroa.06.0.lcssa.i.i32, align 8, !tbaa !101
  %.sroa.5.0..sroa_idx5.i.i33 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i32, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx5.i.i33, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i23, i64 12, i1 false), !tbaa.struct !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i23)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40
  %.sroa.0.0.i34 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i28, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %.sroa.0.0.i34, %1
  br i1 %.not.i35, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i27, !llvm.loop !3249

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %4 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %8 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 16 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit
  %i.h = icmp eq i64 %i.bw, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph50, !llvm.loop !3251

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cq, %bb.b ] ; 2 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i27.lcssa, 4               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i27.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i, %._crit_edge
  %.011.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.an, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.011.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i = load i32, ptr %i.s, align 8, !tbaa !101 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !116
  %i.t = icmp slt i64 %.011.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.011.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.x
  %i.z = load i32, ptr %i.w, align 8, !tbaa !1370
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !1370
  %i.ab = icmp ugt i32 %i.z, %i.aa
  %spec.select.i.i.i = select i1 %i.ab, i64 %i.x, i64 %i.v ; 4 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.ad = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !1372
  %i.ae = icmp slt i64 %spec.select.i.i.i, %i.m
  br i1 %i.ae, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !3252

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.011.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.af = icmp eq i64 %.0.lcssa.i.i.i, %i.k
  %or.cond.i.i = select i1 %i.o, i1 %i.af, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !1372
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ag = icmp sgt i64 %.1.i.i.i, %.011.i.i
  br i1 %i.ag, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi i64 [ %.0921.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0921.in.i.i.i.i = add nsw i64 %.020.i.i.i.i, -1
  %.0921.i.i.i.i = sdiv i64 %.0921.in.i.i.i.i, 2  ; 4 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0921.i.i.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1370
  %i.aj = icmp ugt i32 %i.ai, %.sroa.04.0.copyload.i.i
  br i1 %i.aj, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.020.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1372
  %i.al = icmp sgt i64 %.0921.i.i.i.i, %.011.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i, !llvm.loop !3253

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0921.i.i.i.i, %bb.f ], [ %.020.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  store i32 %.sroa.04.0.copyload.i.i, ptr %i.am, align 8, !tbaa !101
  %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i, align 8, !tbaa !116
  %.not.i.i = icmp eq i64 %.011.i.i, 0
  %i.an = add nsw i64 %.011.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !3254

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.ao, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !101 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.a                     ; 3 uses
  %i.ar = ashr exact i64 %i.aq, 4                 ; 3 uses
  %i.as = add nsw i64 %i.ar, -1
  %i.at = lshr i64 %i.as, 1
  %i.au = icmp sgt i64 %i.ar, 2
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.av = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.ay
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !1370
  %i.bb = load i32, ptr %i.az, align 8, !tbaa !1370
  %i.bc = icmp ugt i32 %i.ba, %i.bb
  %spec.select.i.i.i.i = select i1 %i.bc, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.be = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !1372
  %i.bf = icmp slt i64 %spec.select.i.i.i.i, %i.at
  br i1 %i.bf, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3252

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bg = and i64 %i.aq, 16
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = add nsw i64 %i.ar, -2
  %i.bj = ashr exact i64 %i.bi, 1
  %i.bk = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bj
  br i1 %i.bk, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bl = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bm = or disjoint i64 %i.bl, 1                ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !1372
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.020.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bm, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.020.i.i.i.i.i = phi i64 [ %.0921.i.i910.i.i.i, %bb.i ], [ %.020.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i, -1
  %.0921.i.i910.i.i.i = lshr i64 %.0921.in.i.i.i.i.i, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0921.i.i910.i.i.i ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1370
  %i.br = icmp ugt i32 %i.bq, %.sroa.04.0.copyload.i.i.i
  br i1 %i.br, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bs = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.020.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !1372
  %.not11.i.i.i = icmp eq i64 %.0921.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3253

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.020.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bt = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i.i.i, ptr %i.bt, align 8, !tbaa !101
  %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !116
  %i.bu = icmp sgt i64 %i.aq, 16
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit, !llvm.loop !3255

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2549 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02648 = phi i64 [ %i.bw, %bb.b ], [ %2, %.lr.ph ]
  %i.bv = phi i64 [ %i.cr, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bw = add nsw i64 %.02648, -1                 ; 3 uses
  %i.bx = lshr i64 %i.bv, 1
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.bx ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %storemerge2549, i64 -16 ; 5 uses
  %i.ca = load i32, ptr %i.f, align 8, !tbaa !1370 ; 3 uses
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !1370 ; 3 uses
  %i.cc = icmp ugt i32 %i.ca, %i.cb
  %i.cd = load i32, ptr %i.bz, align 8, !tbaa !1370 ; 4 uses
  br i1 %i.cc, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph50
  %i.ce = icmp ugt i32 %i.cb, %i.cd
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cf = icmp ugt i32 %i.ca, %i.cd
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph50
  %i.cg = icmp ugt i32 %i.ca, %i.cd
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.ch = icmp ugt i32 %i.cb, %i.cd
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cl, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2549, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %.fr28, align 8, !tbaa !1370 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i ], [ %i.cl, %bb.t ] ; 9 uses
  %i.cj = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !1370
  %i.ck = icmp ugt i32 %i.cj, %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.ck, label %bb.t, label %.preheader.i.i, !llvm.loop !3256

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %i.cm = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !1370
  %i.cn = icmp ugt i32 %i.ci, %i.cm
  br i1 %i.cn, label %.preheader.i.i, label %bb.u, !llvm.loop !3257

bb.u:                                             ; preds = %.preheader.i.i
  %i.co = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.co, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i, !llvm.loop !3258

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2549, i64 noundef %i.bw)
  %i.cp = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.cq = sub i64 %i.cp, %i.a                     ; 2 uses
  %i.cr = ashr exact i64 %i.cq, 4                 ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 16
  br i1 %i.cs, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit, !llvm.loop !3251

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %.sroa.5.i.i23 = alloca [12 x i8], align 4      ; 4 uses
  %2 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %.sroa.5.i.i12 = alloca [12 x i8], align 4      ; 4 uses
  %.sroa.5.i.i = alloca [12 x i8], align 4        ; 4 uses
  %3 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.e = load i32, ptr %.sroa.0.019.i.ptr, align 8, !tbaa !1370 ; 4 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !1370
  %i.g = icmp ugt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr, i64 16, i1 false), !tbaa.struct !1372
  %i.h = icmp samesign ugt i64 %.sroa.0.019.i.idx, 16
  br i1 %i.h, label %bb.d, label %bb.e, !prof !152

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1372
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, i64 12, i1 false), !tbaa.struct !1376
  %i.j = load i32, ptr %.pn18.i, align 8, !tbaa !1370
  %i.k = icmp ugt i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.011.i.i, i64 16, i1 false), !tbaa.struct !1372
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.l = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !1370
  %i.m = icmp ugt i32 %i.e, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i, !llvm.loop !3259

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.e, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !101
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, i64 12, i1 false), !tbaa.struct !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %bb.b, !llvm.loop !3260

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.n, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15
  %.sroa.0.07.i = phi ptr [ %i.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15 ], [ %i.n, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12)
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8, !tbaa !101 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i12, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i14, i64 12, i1 false), !tbaa.struct !1376
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.o = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !1370
  %i.p = icmp ugt i32 %.sroa.03.0.copyload.i.i, %i.o
  br i1 %i.p, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i19
  %.sroa.0.011.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.sroa.0.09.i.i, %.lr.ph.i13 ] ; 4 uses
  %.sroa.06.010.i.i21 = phi ptr [ %.sroa.0.011.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.07.i, %.lr.ph.i13 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.010.i.i21, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.011.i.i20, i64 16, i1 false), !tbaa.struct !1372
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i20, i64 -16 ; 2 uses
  %i.q = load i32, ptr %.sroa.0.0.i.i22, align 8, !tbaa !1370
  %i.r = icmp ugt i32 %.sroa.03.0.copyload.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15, !llvm.loop !3259

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15: ; preds = %.lr.ph.i.i19, %.lr.ph.i13
  %.sroa.06.0.lcssa.i.i16 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.011.i.i20, %.lr.ph.i.i19 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i16, align 8, !tbaa !101
  %.sroa.5.0..sroa_idx5.i.i17 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i16, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx5.i.i17, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i12, i64 12, i1 false), !tbaa.struct !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i18 = icmp eq ptr %i.s, %1
  br i1 %.not.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13, !llvm.loop !3261

bb.h:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %0, %1
  %.sroa.0.016.i25 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not17.i26 = icmp eq ptr %.sroa.0.016.i25, %1
  %or.cond = select i1 %i.t, i1 true, i1 %.not17.i26
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.019.i28 = phi ptr [ %.sroa.0.0.i34, %bb.n ], [ %.sroa.0.016.i25, %bb.h ] ; 7 uses
  %.pn18.i29 = phi ptr [ %.sroa.0.019.i28, %bb.n ], [ %0, %bb.h ] ; 5 uses
  %i.u = load i32, ptr %.sroa.0.019.i28, align 8, !tbaa !1370 ; 4 uses
  %i.v = load i32, ptr %0, align 8, !tbaa !1370
  %i.w = icmp ugt i32 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i28, i64 16, i1 false), !tbaa.struct !1372
  %i.x = ptrtoint ptr %.sroa.0.019.i28 to i64
  %i.y = sub i64 %i.x, %i.b                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 4                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !152

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 32
  %i.ac = sub nsw i64 0, %i.z
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp eq i64 %i.y, 16
  br i1 %i.ae, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1372
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i23)
  %.sroa.5.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i23, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i30, i64 12, i1 false), !tbaa.struct !1376
  %i.ag = load i32, ptr %.pn18.i29, align 8, !tbaa !1370
  %i.ah = icmp ugt i32 %i.u, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31

.lr.ph.i.i36:                                     ; preds = %bb.m, %.lr.ph.i.i36
  %.sroa.0.011.i.i37 = phi ptr [ %.sroa.0.0.i.i39, %.lr.ph.i.i36 ], [ %.pn18.i29, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i38 = phi ptr [ %.sroa.0.011.i.i37, %.lr.ph.i.i36 ], [ %.sroa.0.019.i28, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.010.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.011.i.i37, i64 16, i1 false), !tbaa.struct !1372
  %.sroa.0.0.i.i39 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i37, i64 -16 ; 2 uses
  %i.ai = load i32, ptr %.sroa.0.0.i.i39, align 8, !tbaa !1370
  %i.aj = icmp ugt i32 %i.u, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31, !llvm.loop !3259

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31: ; preds = %.lr.ph.i.i36, %bb.m
  %.sroa.06.0.lcssa.i.i32 = phi ptr [ %.sroa.0.019.i28, %bb.m ], [ %.sroa.0.011.i.i37, %.lr.ph.i.i36 ] ; 2 uses
  store i32 %i.u, ptr %.sroa.06.0.lcssa.i.i32, align 8, !tbaa !101
  %.sroa.5.0..sroa_idx5.i.i33 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i32, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx5.i.i33, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i23, i64 12, i1 false), !tbaa.struct !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i23)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40
  %.sroa.0.0.i34 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i28, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %.sroa.0.0.i34, %1
  br i1 %.not.i35, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i27, !llvm.loop !3260

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIfLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorIjLb1ESaIjEEEhRNS3_20AlpRDCompressionDataIfLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableItSt4pairIKttESaIS2_ENSt8__detail10_Select1stESt8equal_toItESt4hashItENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS2_EEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 2 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !388
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm:bb.a
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #30 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !974
  invoke void @__cxa_rethrow() #31
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
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
  tail call void @__clang_call_terminate(ptr %i.q) #34
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !1399
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !1398   ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !391  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !388
  store ptr %i.w, ptr %3, align 8, !tbaa !388
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !391
  store ptr %3, ptr %i.x, align 8, !tbaa !388
  br label %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1404
  store ptr %i.z, ptr %3, align 8, !tbaa !388
  store ptr %3, ptr %i.y, align 8, !tbaa !1404
  %i.aa = load ptr, ptr %3, align 8, !tbaa !388   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1399
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !116
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !391
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !391
  br label %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !1400
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !1400
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !3314
  br label %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmiELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !153

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmiELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmiELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmiELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1404 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !1404
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !388 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !116
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !391  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !1404
  store ptr %i.o, ptr %.02530, align 8, !tbaa !388
  store ptr %.02530, ptr %i.g, align 8, !tbaa !1404
  store ptr %i.g, ptr %i.m, align 8, !tbaa !391
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !388
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !391
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !388
  store ptr %i.r, ptr %.02530, align 8, !tbaa !388
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !391
  store ptr %.02530, ptr %i.s, align 8, !tbaa !388
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3313

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !1398   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #32
  br label %_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImSt4pairIKmiESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !1399
  store ptr %.0.i, ptr %0, align 8, !tbaa !1398
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %4 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %8 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 16 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit
  %i.h = icmp eq i64 %i.bw, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph50, !llvm.loop !3315

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cq, %bb.b ] ; 2 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i27.lcssa, 4               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i27.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i, %._crit_edge
  %.011.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.an, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.011.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i = load i32, ptr %i.s, align 8, !tbaa !101 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !116
  %i.t = icmp slt i64 %.011.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.011.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.x
  %i.z = load i32, ptr %i.w, align 8, !tbaa !1370
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !1370
  %i.ab = icmp ugt i32 %i.z, %i.aa
  %spec.select.i.i.i = select i1 %i.ab, i64 %i.x, i64 %i.v ; 4 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.ad = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !1372
  %i.ae = icmp slt i64 %spec.select.i.i.i, %i.m
  br i1 %i.ae, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !3316

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.011.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.af = icmp eq i64 %.0.lcssa.i.i.i, %i.k
  %or.cond.i.i = select i1 %i.o, i1 %i.af, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !1372
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ag = icmp sgt i64 %.1.i.i.i, %.011.i.i
  br i1 %i.ag, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi i64 [ %.0921.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0921.in.i.i.i.i = add nsw i64 %.020.i.i.i.i, -1
  %.0921.i.i.i.i = sdiv i64 %.0921.in.i.i.i.i, 2  ; 4 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0921.i.i.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1370
  %i.aj = icmp ugt i32 %i.ai, %.sroa.04.0.copyload.i.i
  br i1 %i.aj, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.020.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1372
  %i.al = icmp sgt i64 %.0921.i.i.i.i, %.011.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i, !llvm.loop !3317

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0921.i.i.i.i, %bb.f ], [ %.020.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  store i32 %.sroa.04.0.copyload.i.i, ptr %i.am, align 8, !tbaa !101
  %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i, align 8, !tbaa !116
  %.not.i.i = icmp eq i64 %.011.i.i, 0
  %i.an = add nsw i64 %.011.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !3318

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.ao, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !101 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.a                     ; 3 uses
  %i.ar = ashr exact i64 %i.aq, 4                 ; 3 uses
  %i.as = add nsw i64 %i.ar, -1
  %i.at = lshr i64 %i.as, 1
  %i.au = icmp sgt i64 %i.ar, 2
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.av = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.ay
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !1370
  %i.bb = load i32, ptr %i.az, align 8, !tbaa !1370
  %i.bc = icmp ugt i32 %i.ba, %i.bb
  %spec.select.i.i.i.i = select i1 %i.bc, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.be = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !1372
  %i.bf = icmp slt i64 %spec.select.i.i.i.i, %i.at
  br i1 %i.bf, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3316

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bg = and i64 %i.aq, 16
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = add nsw i64 %i.ar, -2
  %i.bj = ashr exact i64 %i.bi, 1
  %i.bk = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bj
  br i1 %i.bk, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bl = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bm = or disjoint i64 %i.bl, 1                ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !1372
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.020.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bm, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.020.i.i.i.i.i = phi i64 [ %.0921.i.i910.i.i.i, %bb.i ], [ %.020.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i, -1
  %.0921.i.i910.i.i.i = lshr i64 %.0921.in.i.i.i.i.i, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0921.i.i910.i.i.i ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1370
  %i.br = icmp ugt i32 %i.bq, %.sroa.04.0.copyload.i.i.i
  br i1 %i.br, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bs = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.020.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !1372
  %.not11.i.i.i = icmp eq i64 %.0921.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3317

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.020.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bt = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i.i.i, ptr %i.bt, align 8, !tbaa !101
  %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !116
  %i.bu = icmp sgt i64 %i.aq, 16
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit, !llvm.loop !3319

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2549 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02648 = phi i64 [ %i.bw, %bb.b ], [ %2, %.lr.ph ]
  %i.bv = phi i64 [ %i.cr, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bw = add nsw i64 %.02648, -1                 ; 3 uses
  %i.bx = lshr i64 %i.bv, 1
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.bx ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %storemerge2549, i64 -16 ; 5 uses
  %i.ca = load i32, ptr %i.f, align 8, !tbaa !1370 ; 3 uses
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !1370 ; 3 uses
  %i.cc = icmp ugt i32 %i.ca, %i.cb
  %i.cd = load i32, ptr %i.bz, align 8, !tbaa !1370 ; 4 uses
  br i1 %i.cc, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph50
  %i.ce = icmp ugt i32 %i.cb, %i.cd
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cf = icmp ugt i32 %i.ca, %i.cd
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph50
  %i.cg = icmp ugt i32 %i.ca, %i.cd
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.ch = icmp ugt i32 %i.cb, %i.cd
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cl, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2549, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %.fr28, align 8, !tbaa !1370 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i ], [ %i.cl, %bb.t ] ; 9 uses
  %i.cj = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !1370
  %i.ck = icmp ugt i32 %i.cj, %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.ck, label %bb.t, label %.preheader.i.i, !llvm.loop !3320

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %i.cm = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !1370
  %i.cn = icmp ugt i32 %i.ci, %i.cm
  br i1 %i.cn, label %.preheader.i.i, label %bb.u, !llvm.loop !3321

bb.u:                                             ; preds = %.preheader.i.i
  %i.co = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.co, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i, !llvm.loop !3322

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2549, i64 noundef %i.bw)
  %i.cp = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.cq = sub i64 %i.cp, %i.a                     ; 2 uses
  %i.cr = ashr exact i64 %i.cq, 4                 ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 16
  br i1 %i.cs, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit, !llvm.loop !3315

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %.sroa.5.i.i23 = alloca [12 x i8], align 4      ; 4 uses
  %2 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %.sroa.5.i.i12 = alloca [12 x i8], align 4      ; 4 uses
  %.sroa.5.i.i = alloca [12 x i8], align 4        ; 4 uses
  %3 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.e = load i32, ptr %.sroa.0.019.i.ptr, align 8, !tbaa !1370 ; 4 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !1370
  %i.g = icmp ugt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr, i64 16, i1 false), !tbaa.struct !1372
  %i.h = icmp samesign ugt i64 %.sroa.0.019.i.idx, 16
  br i1 %i.h, label %bb.d, label %bb.e, !prof !152

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1372
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, i64 12, i1 false), !tbaa.struct !1376
  %i.j = load i32, ptr %.pn18.i, align 8, !tbaa !1370
  %i.k = icmp ugt i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.011.i.i, i64 16, i1 false), !tbaa.struct !1372
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.l = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !1370
  %i.m = icmp ugt i32 %i.e, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i, !llvm.loop !3323

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.e, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !101
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, i64 12, i1 false), !tbaa.struct !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %bb.b, !llvm.loop !3324

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.n, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15
  %.sroa.0.07.i = phi ptr [ %i.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15 ], [ %i.n, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12)
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8, !tbaa !101 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i12, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i14, i64 12, i1 false), !tbaa.struct !1376
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.o = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !1370
  %i.p = icmp ugt i32 %.sroa.03.0.copyload.i.i, %i.o
  br i1 %i.p, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i19
  %.sroa.0.011.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.sroa.0.09.i.i, %.lr.ph.i13 ] ; 4 uses
  %.sroa.06.010.i.i21 = phi ptr [ %.sroa.0.011.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.07.i, %.lr.ph.i13 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.010.i.i21, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.011.i.i20, i64 16, i1 false), !tbaa.struct !1372
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i20, i64 -16 ; 2 uses
  %i.q = load i32, ptr %.sroa.0.0.i.i22, align 8, !tbaa !1370
  %i.r = icmp ugt i32 %.sroa.03.0.copyload.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15, !llvm.loop !3323

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15: ; preds = %.lr.ph.i.i19, %.lr.ph.i13
  %.sroa.06.0.lcssa.i.i16 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.011.i.i20, %.lr.ph.i.i19 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i16, align 8, !tbaa !101
  %.sroa.5.0..sroa_idx5.i.i17 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i16, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx5.i.i17, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i12, i64 12, i1 false), !tbaa.struct !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i18 = icmp eq ptr %i.s, %1
  br i1 %.not.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13, !llvm.loop !3325

bb.h:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %0, %1
  %.sroa.0.016.i25 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not17.i26 = icmp eq ptr %.sroa.0.016.i25, %1
  %or.cond = select i1 %i.t, i1 true, i1 %.not17.i26
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.019.i28 = phi ptr [ %.sroa.0.0.i34, %bb.n ], [ %.sroa.0.016.i25, %bb.h ] ; 7 uses
  %.pn18.i29 = phi ptr [ %.sroa.0.019.i28, %bb.n ], [ %0, %bb.h ] ; 5 uses
  %i.u = load i32, ptr %.sroa.0.019.i28, align 8, !tbaa !1370 ; 4 uses
  %i.v = load i32, ptr %0, align 8, !tbaa !1370
  %i.w = icmp ugt i32 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i28, i64 16, i1 false), !tbaa.struct !1372
  %i.x = ptrtoint ptr %.sroa.0.019.i28 to i64
  %i.y = sub i64 %i.x, %i.b                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 4                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !152

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 32
  %i.ac = sub nsw i64 0, %i.z
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp eq i64 %i.y, 16
  br i1 %i.ae, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1372
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i23)
  %.sroa.5.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i23, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i30, i64 12, i1 false), !tbaa.struct !1376
  %i.ag = load i32, ptr %.pn18.i29, align 8, !tbaa !1370
  %i.ah = icmp ugt i32 %i.u, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31

.lr.ph.i.i36:                                     ; preds = %bb.m, %.lr.ph.i.i36
  %.sroa.0.011.i.i37 = phi ptr [ %.sroa.0.0.i.i39, %.lr.ph.i.i36 ], [ %.pn18.i29, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i38 = phi ptr [ %.sroa.0.011.i.i37, %.lr.ph.i.i36 ], [ %.sroa.0.019.i28, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.010.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.011.i.i37, i64 16, i1 false), !tbaa.struct !1372
  %.sroa.0.0.i.i39 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i37, i64 -16 ; 2 uses
  %i.ai = load i32, ptr %.sroa.0.0.i.i39, align 8, !tbaa !1370
  %i.aj = icmp ugt i32 %i.u, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31, !llvm.loop !3323

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31: ; preds = %.lr.ph.i.i36, %bb.m
  %.sroa.06.0.lcssa.i.i32 = phi ptr [ %.sroa.0.019.i28, %bb.m ], [ %.sroa.0.011.i.i37, %.lr.ph.i.i36 ] ; 2 uses
  store i32 %i.u, ptr %.sroa.06.0.lcssa.i.i32, align 8, !tbaa !101
  %.sroa.5.0..sroa_idx5.i.i33 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i32, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx5.i.i33, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i23, i64 12, i1 false), !tbaa.struct !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i23)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40
  %.sroa.0.0.i34 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i28, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %.sroa.0.0.i34, %1
  br i1 %.not.i35, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i27, !llvm.loop !3324

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb0EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %4 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %5 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %8 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 16 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit
  %i.h = icmp eq i64 %i.bw, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph50, !llvm.loop !3326

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cq, %bb.b ] ; 2 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i27.lcssa, 4               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i27.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i, %._crit_edge
  %.011.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.an, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.011.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i = load i32, ptr %i.s, align 8, !tbaa !101 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !116
  %i.t = icmp slt i64 %.011.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.011.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.x
  %i.z = load i32, ptr %i.w, align 8, !tbaa !1370
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !1370
  %i.ab = icmp ugt i32 %i.z, %i.aa
  %spec.select.i.i.i = select i1 %i.ab, i64 %i.x, i64 %i.v ; 4 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.ad = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !1372
  %i.ae = icmp slt i64 %spec.select.i.i.i, %i.m
  br i1 %i.ae, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !3327

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.011.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.af = icmp eq i64 %.0.lcssa.i.i.i, %i.k
  %or.cond.i.i = select i1 %i.o, i1 %i.af, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !1372
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ag = icmp sgt i64 %.1.i.i.i, %.011.i.i
  br i1 %i.ag, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.020.i.i.i.i = phi i64 [ %.0921.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0921.in.i.i.i.i = add nsw i64 %.020.i.i.i.i, -1
  %.0921.i.i.i.i = sdiv i64 %.0921.in.i.i.i.i, 2  ; 4 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0921.i.i.i.i ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1370
  %i.aj = icmp ugt i32 %i.ai, %.sroa.04.0.copyload.i.i
  br i1 %i.aj, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.020.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !1372
  %i.al = icmp sgt i64 %.0921.i.i.i.i, %.011.i.i
  br i1 %i.al, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i, !llvm.loop !3328

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0921.i.i.i.i, %bb.f ], [ %.020.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  store i32 %.sroa.04.0.copyload.i.i, ptr %i.am, align 8, !tbaa !101
  %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.5.0.copyload.i.i, ptr %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i, align 8, !tbaa !116
  %.not.i.i = icmp eq i64 %.011.i.i, 0
  %i.an = add nsw i64 %.011.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !3329

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.ao, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_SS_T1_T2_.exit.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !101 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.a                     ; 3 uses
  %i.ar = ashr exact i64 %i.aq, 4                 ; 3 uses
  %i.as = add nsw i64 %i.ar, -1
  %i.at = lshr i64 %i.as, 1
  %i.au = icmp sgt i64 %i.ar, 2
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.av = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %i.ay
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !1370
  %i.bb = load i32, ptr %i.az, align 8, !tbaa !1370
  %i.bc = icmp ugt i32 %i.ba, %i.bb
  %spec.select.i.i.i.i = select i1 %i.bc, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bd = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.be = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !1372
  %i.bf = icmp slt i64 %spec.select.i.i.i.i, %i.at
  br i1 %i.bf, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !3327

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bg = and i64 %i.aq, 16
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = add nsw i64 %i.ar, -2
  %i.bj = ashr exact i64 %i.bi, 1
  %i.bk = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bj
  br i1 %i.bk, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bl = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bm = or disjoint i64 %i.bl, 1                ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !1372
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.020.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bm, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.020.i.i.i.i.i = phi i64 [ %.0921.i.i910.i.i.i, %bb.i ], [ %.020.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i, -1
  %.0921.i.i910.i.i.i = lshr i64 %.0921.in.i.i.i.i.i, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %.0921.i.i910.i.i.i ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1370
  %i.br = icmp ugt i32 %i.bq, %.sroa.04.0.copyload.i.i.i
  br i1 %i.br, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bs = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.020.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !1372
  %.not11.i.i.i = icmp eq i64 %.0921.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3328

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.020.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bt = getelementptr inbounds [16 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i.i.i, ptr %i.bt, align 8, !tbaa !101
  %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.313.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !116
  %i.bu = icmp sgt i64 %i.aq, 16
  br i1 %i.bu, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit, !llvm.loop !3330

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2549 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02648 = phi i64 [ %i.bw, %bb.b ], [ %2, %.lr.ph ]
  %i.bv = phi i64 [ %i.cr, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bw = add nsw i64 %.02648, -1                 ; 3 uses
  %i.bx = lshr i64 %i.bv, 1
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.fr28, i64 %i.bx ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %storemerge2549, i64 -16 ; 5 uses
  %i.ca = load i32, ptr %i.f, align 8, !tbaa !1370 ; 3 uses
  %i.cb = load i32, ptr %i.by, align 8, !tbaa !1370 ; 3 uses
  %i.cc = icmp ugt i32 %i.ca, %i.cb
  %i.cd = load i32, ptr %i.bz, align 8, !tbaa !1370 ; 4 uses
  br i1 %i.cc, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph50
  %i.ce = icmp ugt i32 %i.cb, %i.cd
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cf = icmp ugt i32 %i.ca, %i.cd
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph50
  %i.cg = icmp ugt i32 %i.ca, %i.cd
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.ch = icmp ugt i32 %i.cb, %i.cd
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.fr28, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr28, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cl, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2549, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %.fr28, align 8, !tbaa !1370 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i ], [ %i.cl, %bb.t ] ; 9 uses
  %i.cj = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !1370
  %i.ck = icmp ugt i32 %i.cj, %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.ck, label %bb.t, label %.preheader.i.i, !llvm.loop !3331

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %i.cm = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !1370
  %i.cn = icmp ugt i32 %i.ci, %i.cm
  br i1 %i.cn, label %.preheader.i.i, label %bb.u, !llvm.loop !3332

bb.u:                                             ; preds = %.preheader.i.i
  %i.co = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.co, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, i64 16, i1 false), !tbaa.struct !1372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_SR_T0_.exit.i, !llvm.loop !3333

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2549, i64 noundef %i.bw)
  %i.cp = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.cq = sub i64 %i.cp, %i.a                     ; 2 uses
  %i.cr = ashr exact i64 %i.cq, 4                 ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 16
  br i1 %i.cs, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit, !llvm.loop !3326

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEET_SR_SR_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_SR_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %.sroa.5.i.i23 = alloca [12 x i8], align 4      ; 4 uses
  %2 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %.sroa.5.i.i12 = alloca [12 x i8], align 4      ; 4 uses
  %.sroa.5.i.i = alloca [12 x i8], align 4        ; 4 uses
  %3 = alloca %"struct.duckdb::alp::AlpRDLeftPartInfo", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.e = load i32, ptr %.sroa.0.019.i.ptr, align 8, !tbaa !1370 ; 4 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !1370
  %i.g = icmp ugt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr, i64 16, i1 false), !tbaa.struct !1372
  %i.h = icmp samesign ugt i64 %.sroa.0.019.i.idx, 16
  br i1 %i.h, label %bb.d, label %bb.e, !prof !152

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1372
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i, i64 12, i1 false), !tbaa.struct !1376
  %i.j = load i32, ptr %.pn18.i, align 8, !tbaa !1370
  %i.k = icmp ugt i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.f ] ; 4 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.011.i.i, i64 16, i1 false), !tbaa.struct !1372
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.l = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !1370
  %i.m = icmp ugt i32 %i.e, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i, !llvm.loop !3334

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.e, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !101
  %.sroa.5.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx5.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i, i64 12, i1 false), !tbaa.struct !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %bb.b, !llvm.loop !3335

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.n, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15
  %.sroa.0.07.i = phi ptr [ %i.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15 ], [ %i.n, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12)
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8, !tbaa !101 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i12, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i14, i64 12, i1 false), !tbaa.struct !1376
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.o = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !1370
  %i.p = icmp ugt i32 %.sroa.03.0.copyload.i.i, %i.o
  br i1 %i.p, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i19
  %.sroa.0.011.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.sroa.0.09.i.i, %.lr.ph.i13 ] ; 4 uses
  %.sroa.06.010.i.i21 = phi ptr [ %.sroa.0.011.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.07.i, %.lr.ph.i13 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.010.i.i21, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.011.i.i20, i64 16, i1 false), !tbaa.struct !1372
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i20, i64 -16 ; 2 uses
  %i.q = load i32, ptr %.sroa.0.0.i.i22, align 8, !tbaa !1370
  %i.r = icmp ugt i32 %.sroa.03.0.copyload.i.i, %i.q
  br i1 %i.r, label %.lr.ph.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15, !llvm.loop !3334

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15: ; preds = %.lr.ph.i.i19, %.lr.ph.i13
  %.sroa.06.0.lcssa.i.i16 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.011.i.i20, %.lr.ph.i.i19 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i16, align 8, !tbaa !101
  %.sroa.5.0..sroa_idx5.i.i17 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i16, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx5.i.i17, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i12, i64 12, i1 false), !tbaa.struct !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i18 = icmp eq ptr %i.s, %1
  br i1 %.not.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i13, !llvm.loop !3336

bb.h:                                             ; preds = %bb.a
  %i.t = icmp eq ptr %0, %1
  %.sroa.0.016.i25 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not17.i26 = icmp eq ptr %.sroa.0.016.i25, %1
  %or.cond = select i1 %i.t, i1 true, i1 %.not17.i26
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.h, %bb.n
  %.sroa.0.019.i28 = phi ptr [ %.sroa.0.0.i34, %bb.n ], [ %.sroa.0.016.i25, %bb.h ] ; 7 uses
  %.pn18.i29 = phi ptr [ %.sroa.0.019.i28, %bb.n ], [ %0, %bb.h ] ; 5 uses
  %i.u = load i32, ptr %.sroa.0.019.i28, align 8, !tbaa !1370 ; 4 uses
  %i.v = load i32, ptr %0, align 8, !tbaa !1370
  %i.w = icmp ugt i32 %i.u, %i.v
  br i1 %i.w, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i28, i64 16, i1 false), !tbaa.struct !1372
  %i.x = ptrtoint ptr %.sroa.0.019.i28 to i64
  %i.y = sub i64 %i.x, %i.b                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 4                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !152

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 32
  %i.ac = sub nsw i64 0, %i.z
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %i.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp eq i64 %i.y, 16
  br i1 %i.ae, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !1372
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40: ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1372
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i23)
  %.sroa.5.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %.pn18.i29, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i23, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i30, i64 12, i1 false), !tbaa.struct !1376
  %i.ag = load i32, ptr %.pn18.i29, align 8, !tbaa !1370
  %i.ah = icmp ugt i32 %i.u, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31

.lr.ph.i.i36:                                     ; preds = %bb.m, %.lr.ph.i.i36
  %.sroa.0.011.i.i37 = phi ptr [ %.sroa.0.0.i.i39, %.lr.ph.i.i36 ], [ %.pn18.i29, %bb.m ] ; 4 uses
  %.sroa.06.010.i.i38 = phi ptr [ %.sroa.0.011.i.i37, %.lr.ph.i.i36 ], [ %.sroa.0.019.i28, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.010.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.011.i.i37, i64 16, i1 false), !tbaa.struct !1372
  %.sroa.0.0.i.i39 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i37, i64 -16 ; 2 uses
  %i.ai = load i32, ptr %.sroa.0.0.i.i39, align 8, !tbaa !1370
  %i.aj = icmp ugt i32 %i.u, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31, !llvm.loop !3334

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31: ; preds = %.lr.ph.i.i36, %bb.m
  %.sroa.06.0.lcssa.i.i32 = phi ptr [ %.sroa.0.019.i28, %bb.m ], [ %.sroa.0.011.i.i37, %.lr.ph.i.i36 ] ; 2 uses
  store i32 %i.u, ptr %.sroa.06.0.lcssa.i.i32, align 8, !tbaa !101
  %.sroa.5.0..sroa_idx5.i.i33 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i32, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx5.i.i33, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i23, i64 12, i1 false), !tbaa.struct !1376
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i23)
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i31, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i40
  %.sroa.0.0.i34 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i28, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %.sroa.0.0.i34, %1
  br i1 %.not.i35, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit, label %.lr.ph.i27, !llvm.loop !3335

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_T0_.exit.i15, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb3alp17AlpRDLeftPartInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_16AlpRDCompressionIdLb1EE24BuildLeftPartsDictionaryILb1EEEdRKNS2_6vectorImLb1ESaImEEEhRNS3_20AlpRDCompressionDataIdLb1EEEEUlRKS4_SO_E_EEEvT_SR_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21AlpRDCompressionStateIdEC2ERNS_24ColumnDataCheckpointDataEPNS_17AlpRDAnalyzeStateIdEE(ptr noundef nonnull align 8 dereferenceable(30944) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.a, align 8, !tbaa !214
end_hunk_1
