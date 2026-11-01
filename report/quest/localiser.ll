Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/localiser?download=true
inline.NumInlined: 2300
inline.NumDeleted: 618
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm:bb.a
  %i.e = load i64, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !133
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #17 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !45
  invoke void @__cxa_rethrow() #18
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
  tail call void @__clang_call_terminate(ptr %i.q) #21
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !40
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  store ptr %i.w, ptr %3, align 8, !tbaa !43
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !42
  store ptr %3, ptr %i.x, align 8, !tbaa !43
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44
  store ptr %i.z, ptr %3, align 8, !tbaa !43
  store ptr %3, ptr %i.y, align 8, !tbaa !44
  %i.aa = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !40
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !19
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !42
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !133
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !133
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !135
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #19 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiiELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !44
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !19
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !44
  store ptr %i.p, ptr %.02530, align 8, !tbaa !43
  store ptr %.02530, ptr %i.g, align 8, !tbaa !44
  store ptr %i.g, ptr %i.n, align 8, !tbaa !42
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !43
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !42
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !43
  store ptr %i.s, ptr %.02530, align 8, !tbaa !43
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !42
  store ptr %.02530, ptr %i.t, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !134

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !40
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #20
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !40
  store ptr %.0.i, ptr %0, align 8, !tbaa !39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define void @_Z27getQubitsSwappedToMaxSuffix5QuregSt6vectorIiSaIiEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1, ptr nofree noundef align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !18     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !29

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #19
  %.pre = load ptr, ptr %2, align 8, !tbaa !15    ; 3 uses
  %.pre36 = load ptr, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %.pre39 = ptrtoint ptr %.pre36 to i64
  %.pre40 = ptrtoint ptr %.pre to i64
  %i.i = icmp eq ptr %.pre36, %.pre
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi41 = phi i64 [ %.pre40, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre39, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %.not.i.i.i.i.i = phi i1 [ %i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ true, %bb.a ]
  %i.j = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  %i.l = sub i64 %.pre-phi, %.pre-phi41           ; 8 uses
  %i.m = icmp sgt i64 %i.l, 4                     ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %i.l, 4
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.j, align 4, !tbaa !19
  store i32 %i.o, ptr %i.k, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8
  %.not.i20 = icmp eq i32 %.sroa.3.0.copyload, 0
  br i1 %.not.i20, label %bb.p, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  br i1 %.not.i.i.i.i.i, label %.noexc23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.p, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !29

.noexc.i.i.i:                                     ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #19
          to label %.noexc23 unwind label %bb.s

.noexc23:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.g
  %i.r = phi ptr [ null, %bb.g ], [ %i.q, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.l ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !20
  br i1 %i.m, label %bb.i, label %bb.j, !prof !21

bb.i:                                             ; preds = %.noexc23
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.r, ptr align 4 %i.k, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.j:                                             ; preds = %.noexc23
  %i.v = icmp eq i64 %i.l, 4
  br i1 %i.v, label %bb.k, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.w = load i32, ptr %i.k, align 4, !tbaa !19
  store i32 %i.w, ptr %i.r, align 4, !tbaa !19
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.k, %bb.j, %bb.i
  store ptr %i.t, ptr %i.s, align 8, !tbaa !17
  %i.x = invoke noundef zeroext i1 @_Z25util_areAllQubitsInSuffixSt6vectorIiSaIiEE5Qureg(ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i
  %i.y = xor i1 %i.x, true                        ; 2 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !18     ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i21, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #20
  br label %bb.p

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i2.i, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #20
  br label %.body

bb.p:                                             ; preds = %bb.m, %bb.l, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %.0.i22 = phi i1 [ false, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %i.y, %bb.l ], [ %i.y, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.p, %bb.q
  %i.ak = load ptr, ptr %2, align 8, !tbaa !18    ; 6 uses
  br i1 %.0.i22, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load ptr, ptr %i.a, align 8, !tbaa !17
  store ptr %5, ptr %4, align 8, !tbaa !17
  br label %bb.y

bb.s:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.o, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.s ], [ %i.ae, %bb.o ], [ %i.ae, %bb.n ]
  %.not.i.i.i24 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIiSaIiEED2Ev.exit25, label %bb.t

bb.t:                                             ; preds = %.body
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit25

_ZNSt6vectorIiSaIiEED2Ev.exit25:                  ; preds = %.body, %bb.t
  resume { ptr, i32 } %eh.lpad-body

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !17  ; 3 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 4 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.preheader, label %_Z10getBitMaskPii.exit

.lr.ph.preheader:                                 ; preds = %bb.u
  %wide.trip.count = and i64 %i.aq, 2147483647    ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check, label %.lr.ph.preheader58, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.aq, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi56 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %wide.load = load <2 x i32>, ptr %i.at, align 4, !tbaa !19
  %wide.load57 = load <2 x i32>, ptr %i.au, align 4, !tbaa !19
  %i.av = zext nneg <2 x i32> %wide.load to <2 x i64>
  %i.aw = zext nneg <2 x i32> %wide.load57 to <2 x i64>
  %i.ax = shl nuw <2 x i64> splat (i64 1), %i.av
  %i.ay = shl nuw <2 x i64> splat (i64 1), %i.aw
  %i.az = xor <2 x i64> %i.ax, %vec.phi           ; 2 uses
  %i.ba = xor <2 x i64> %i.ay, %vec.phi56         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <2 x i64> %i.ba, %i.az
  %i.bc = call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %_Z10getBitMaskPii.exit, label %.lr.ph.preheader58

.lr.ph.preheader58:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.06.i29.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader58, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader58 ] ; 2 uses
  %.06.i29 = phi i64 [ %i.bh, %.lr.ph ], [ %.06.i29.ph, %.lr.ph.preheader58 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !19
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = xor i64 %i.bg, %.06.i29                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_Z10getBitMaskPii.exit, label %.lr.ph, !llvm.loop !137

_Z10getBitMaskPii.exit:                           ; preds = %.lr.ph, %middle.block, %bb.u
  %.06.i.lcssa = phi i64 [ 0, %bb.u ], [ %i.bc, %middle.block ], [ %i.bh, %.lr.ph ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !140
  %i.bk = trunc i64 %i.bj to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_Z10getBitMaskPii.exit
  %.0.in.i16 = phi i32 [ %i.bk, %_Z10getBitMaskPii.exit ], [ %.0.i17, %bb.v ]
  %.0.i17 = add nsw i32 %.0.in.i16, -1            ; 3 uses
  %i.bl = zext nneg i32 %.0.i17 to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %.06.i.lcssa
  %.not.i18 = icmp eq i64 %i.bn, 0
  br i1 %.not.i18, label %_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader, label %bb.v, !llvm.loop !138

_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader: ; preds = %bb.v
  %.not31 = icmp eq ptr %i.am, %i.ak
  %6 = insertelement <2 x ptr> poison, ptr %i.ak, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.am, i64 1
  br i1 %.not31, label %_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge, label %.lr.ph34

_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge.loopexit: ; preds = %_Z27getIndOfNextLeftmostZeroBitxi.exit
  %i.bo = load <2 x ptr>, ptr %2, align 8, !tbaa !15
  br label %_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge

_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge: ; preds = %_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge.loopexit, %_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader
  %8 = phi <2 x ptr> [ %i.bo, %_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge.loopexit ], [ %7, %_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader ]
  store <2 x ptr> %8, ptr %0, align 8, !tbaa !15
  br label %bb.y

.lr.ph34:                                         ; preds = %_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader, %_Z27getIndOfNextLeftmostZeroBitxi.exit
  %.in = phi i64 [ %i.bp, %_Z27getIndOfNextLeftmostZeroBitxi.exit ], [ %i.aq, %_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader ]
  %.01233 = phi i32 [ %.1, %_Z27getIndOfNextLeftmostZeroBitxi.exit ], [ %.0.i17, %_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader ] ; 4 uses
  %.01332 = phi i64 [ %.114, %_Z27getIndOfNextLeftmostZeroBitxi.exit ], [ %.06.i.lcssa, %_Z27getIndOfNextLeftmostZeroBitxi.exit19.preheader ] ; 2 uses
  %i.bp = add i64 %.in, -1                        ; 4 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !19 ; 2 uses
  %i.bt = call noundef zeroext i1 @_Z20util_isQubitInSuffixi5Qureg(i32 noundef %i.bs, ptr noundef nonnull byval(%struct.Qureg) align 8 %1)
  br i1 %i.bt, label %_Z27getIndOfNextLeftmostZeroBitxi.exit, label %bb.w, !llvm.loop !139

bb.w:                                             ; preds = %.lr.ph34
  %i.bu = load ptr, ptr %2, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bp
  store i32 %.01233, ptr %i.bv, align 4, !tbaa !19
  %i.bw = zext nneg i32 %i.bs to i64
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = zext nneg i32 %.01233 to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = xor i64 %i.bz, %i.bx
  %i.cb = xor i64 %i.ca, %.01332                  ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.0.in.i = phi i32 [ %.01233, %bb.w ], [ %.0.i15, %bb.x ]
  %.0.i15 = add nsw i32 %.0.in.i, -1              ; 3 uses
  %i.cc = zext nneg i32 %.0.i15 to i64
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = and i64 %i.cd, %i.cb
  %.not.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i, label %_Z27getIndOfNextLeftmostZeroBitxi.exit, label %bb.x, !llvm.loop !138

_Z27getIndOfNextLeftmostZeroBitxi.exit:           ; preds = %bb.x, %.lr.ph34
  %.114 = phi i64 [ %.01332, %.lr.ph34 ], [ %i.cb, %bb.x ]
  %.1 = phi i32 [ %.01233, %.lr.ph34 ], [ %.0.i15, %bb.x ]
  %.not = icmp eq i64 %i.bp, 0
  br i1 %.not, label %_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge.loopexit, label %.lr.ph34

bb.y:                                             ; preds = %_Z27getIndOfNextLeftmostZeroBitxi.exit19._crit_edge, %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !20
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z27getNonSwappedCtrlsAndStatesSt6vectorIiSaIiEES1_S1_(ptr dead_on_unwind noalias writable sret(%"class.std::tuple") align 8 %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 12 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.not65 = icmp eq ptr %i.c, %i.d
  br i1 %.not65, label %bb.c, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #19 ; 4 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !18
  store ptr %i.j, ptr %i.a, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.l = phi ptr [ null, %bb.b ], [ %i.k, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ]
  %i.m = phi ptr [ null, %bb.b ], [ %i.j, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17   ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp ugt i64 %i.t, 9223372036854775804
  br i1 %i.u, label %.invoke, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %.not66 = icmp eq ptr %i.p, %i.q
  br i1 %.not66, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit23, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i17

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i17: ; preds = %bb.d
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #19
          to label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i20 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i20: ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i17
  store ptr %i.w, ptr %5, align 8, !tbaa !18
  store ptr %i.w, ptr %i.n, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t ; 2 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit23

_ZNSt6vectorIiSaIiEE7reserveEm.exit23:            ; preds = %bb.d, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i20
  %i.y = phi ptr [ null, %bb.d ], [ %i.x, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i20 ]
  %i.z = phi ptr [ null, %bb.d ], [ %i.w, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i20 ] ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ab = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.ab
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23
  invoke void @_ZNSt11_Tuple_implILm0EJSt6vectorIiSaIiEES2_EEC2IRS2_JS5_EvEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNSt5tupleIJSt6vectorIiSaIiEES2_EEC2IRS2_S5_TnNSt9enable_ifIXclsr4_TCCIXntcl14__is_alloc_argIT_EEEEE29__is_implicitly_constructibleIS7_T0_EEEbE4typeELb1EEEOS7_OS8_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit23, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36
  %i.ac = phi ptr [ %i.ck, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.z, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 7 uses
  %i.ad = phi ptr [ %i.cl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.y, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 4 uses
  %i.ae = phi ptr [ %i.cm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.z, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 4 uses
  %i.af = phi ptr [ %i.cn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.m, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 6 uses
  %i.ag = phi ptr [ %i.co, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.l, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 4 uses
  %i.ah = phi ptr [ %i.cp, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.m, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 4 uses
  %i.ai = phi ptr [ %i.cs, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ %i.ab, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ]
  %.045 = phi i64 [ %i.cq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36 ], [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit23 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.045 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !19 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.045
  %i.an = load i32, ptr %i.am, align 4, !tbaa !19
  %i.ao = icmp eq i32 %i.ak, %i.an
  br i1 %i.ao, label %bb.e, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36

bb.e:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = ptrtoint ptr %i.ag to i64
  %i.ar = ptrtoint ptr %i.af to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775804
  br i1 %i.at, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.au = ashr exact i64 %i.as, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 2305843009213693951)
  %i.ay = select i1 %i.aw, i64 2305843009213693951, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #19
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  %i.bc = load i32, ptr %i.aj, align 4, !tbaa !19
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !19
  %i.bd = icmp sgt i64 %i.as, 0
  br i1 %i.bd, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 4 %i.af, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc26
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.as) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ba, ptr %4, align 8, !tbaa !18
  store ptr %i.be, ptr %i.a, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  store ptr %i.bf, ptr %i.i, align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.f
  %i.bg = phi ptr [ %i.ba, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.af, %bb.f ] ; 2 uses
  %i.bh = phi ptr [ %i.bf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ag, %bb.f ] ; 2 uses
  %i.bi = phi ptr [ %i.be, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ap, %bb.f ] ; 2 uses
  %i.bj = load ptr, ptr %2, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.045 ; 2 uses
  %.not.i27 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !19
  store i32 %i.bl, ptr %i.ae, align 4, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  store ptr %i.bm, ptr %i.n, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit36

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bn = ptrtoint ptr %i.ad to i64
  %i.bo = ptrtoint ptr %i.ac to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 6 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775804
  br i1 %i.bq, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i28

.invoke:                                          ; preds = %bb.k, %bb.g, %bb.c
  %i.br = phi ptr [ @.str.2, %bb.c ], [ @.str.3, %bb.g ], [ @.str.3, %bb.k ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.br) #18
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i28: ; preds = %bb.k
  %i.bs = ashr exact i64 %i.bp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i29, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 2305843009213693951)
  %i.bw = select i1 %i.bu, i64 2305843009213693951, i64 %i.bv ; 3 uses
  %.not.i.i.i30 = icmp ne i64 %i.bw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i30)
  %i.bx = shl nuw nsw i64 %i.bw, 2
end_hunk_0
