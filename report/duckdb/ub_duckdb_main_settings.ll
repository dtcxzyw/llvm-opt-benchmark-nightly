inline.NumInlined: 2875
inline.NumDeleted: 1096
begin_hunk_0_@_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE18_M_assign_elementsIRKSD_EEvOT_:bb.a
  br i1 %i.l, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.j, %bb.c ], [ %i.n, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !294
  store i64 %i.g, ptr %i.a, align 8, !tbaa !293
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.o = shl i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.o, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %.0 = phi ptr [ %i.h, %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ], [ null, %bb.f ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !288
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.q, ptr %i.r, align 8, !tbaa !288
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !326
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !299
  store ptr %i.u, ptr %2, align 8, !tbaa !582
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.v, align 8, !tbaa !301
  store ptr null, ptr %i.t, align 8, !tbaa !299
  invoke void @_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSD_NS3_17_ReuseOrAllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not18 = icmp eq ptr %.0, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = icmp eq ptr %.0, %i.w
  %or.cond = select i1 %.not18, i1 true, i1 %i.x
  br i1 %or.cond, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %.0) #27
  br label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit

bb.j:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = load ptr, ptr %2, align 8, !tbaa !582   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.aa, null
  br i1 %.not5.i.i, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ab = load ptr, ptr %.06.i.i, align 8, !tbaa !248 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i) #27
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !300

_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ac = call ptr @__cxa_begin_catch(ptr %i.z) #25 ; 0 uses
  %.not19 = icmp eq ptr %.0, null
  %.pre = load ptr, ptr %0, align 8, !tbaa !294   ; 3 uses
  br i1 %.not19, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEED2Ev.exit._crit_edge, label %bb.k

_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEED2Ev.exit._crit_edge: ; preds = %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEED2Ev.exit
  %.pre26 = load i64, ptr %i.a, align 8, !tbaa !293
  br label %bb.n

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit: ; preds = %bb.i, %bb.h
  %i.ad = load ptr, ptr %2, align 8, !tbaa !582   ; 2 uses
  %.not5.i.i20 = icmp eq ptr %i.ad, null
  br i1 %.not5.i.i20, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEED2Ev.exit24, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit, %.lr.ph.i.i21
  %.06.i.i22 = phi ptr [ %i.ae, %.lr.ph.i.i21 ], [ %i.ad, %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.06.i.i22, align 8, !tbaa !248 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i22) #27
  %.not.i.i23 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i23, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEED2Ev.exit24, label %.lr.ph.i.i21, !llvm.loop !300

_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEED2Ev.exit24: ; preds = %.lr.ph.i.i21, %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEPPNS3_15_Hash_node_baseEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.k:                                             ; preds = %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = icmp eq ptr %.pre, %i.af
  br i1 %i.ag, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %.pre) #27
  br label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.l, %bb.k
  store i64 %i.e, ptr %i.d, align 8, !tbaa !369
  store ptr %.0, ptr %0, align 8, !tbaa !294
  store i64 %i.b, ptr %i.a, align 8, !tbaa !293
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.n:                                             ; preds = %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEED2Ev.exit._crit_edge, %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.ai = phi i64 [ %i.b, %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit ], [ %.pre26, %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEED2Ev.exit._crit_edge ]
  %i.aj = phi ptr [ %.0, %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit ], [ %.pre, %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEED2Ev.exit._crit_edge ]
  %i.ak = shl i64 %i.ai, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 %i.ak, i1 false)
  invoke void @__cxa_rethrow() #26
          to label %bb.q unwind label %bb.m

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.ah

bb.p:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #28
  unreachable

bb.q:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSD_NS3_17_ReuseOrAllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !294    ; 2 uses
  %.not.not = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !293  ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !259

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !328
  br label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !259

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb10MetricTypeELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  store ptr %.0.i, ptr %0, align 8, !tbaa !294
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.j = phi ptr [ %.0.i, %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !299  ; 4 uses
  %.not29 = icmp eq ptr %i.l, null
  br i1 %.not29, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %2, align 8, !tbaa !582    ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !248  ; 2 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !582
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.h, %bb.i
  %.promoted = phi ptr [ %i.o, %bb.h ], [ null, %bb.i ]
  %.sink13.i = phi ptr [ %i.n, %bb.h ], [ %i.p, %bb.i ] ; 5 uses
  store ptr null, ptr %.sink13.i, align 8, !tbaa !248
  %i.q = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 8
  %i.r = load i8, ptr %i.m, align 1, !tbaa !290
  store i8 %i.r, ptr %i.q, align 8, !tbaa !290
  %i.s = getelementptr inbounds nuw i8, ptr %.sink13.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !296  ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !296
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.sink13.i, ptr %i.v, align 8, !tbaa !299
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !293  ; 2 uses
  %i.y = urem i64 %i.u, %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.y
  store ptr %i.v, ptr %i.z, align 8, !tbaa !295
  %.02837 = load ptr, ptr %i.l, align 8, !tbaa !248 ; 2 uses
  %.not3038 = icmp eq ptr %.02837, null
  br i1 %.not3038, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.q
  %.02840.a = phi ptr [ %i.ae, %bb.q ], [ %.promoted, %bb.j ] ; 3 uses
  %.02639.a = phi ptr [ %.028, %bb.q ], [ %.02837, %bb.j ] ; 3 uses
  %i.aa = phi ptr [ %.sink13.i34, %bb.q ], [ %.sink13.i, %bb.j ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02639.a, i64 8
  %.not.i33 = icmp eq ptr %.02840.a, null
  br i1 %.not.i33, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.ac = load ptr, ptr %.02840.a, align 8, !tbaa !248 ; 2 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !582
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.ad = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ae = phi ptr [ %i.ac, %bb.k ], [ null, %bb.l ]
  %.sink13.i34 = phi ptr [ %.02840.a, %bb.k ], [ %i.ad, %bb.l ] ; 5 uses
  store ptr null, ptr %.sink13.i34, align 8, !tbaa !248
  %i.af = getelementptr inbounds nuw i8, ptr %.sink13.i34, i64 8
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !290
  store i8 %i.ag, ptr %i.af, align 8, !tbaa !290
  store ptr %.sink13.i34, ptr %i.aa, align 8, !tbaa !248
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink13.i34, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.02639.a, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !296 ; 2 uses
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !296
  %i.ak = urem i64 %i.aj, %i.x
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !295
  %.not32 = icmp eq ptr %i.am, null
  br i1 %.not32, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  store ptr %i.aa, ptr %i.al, align 8, !tbaa !295
  br label %bb.q

bb.o:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.m
  %.028 = load ptr, ptr %.02639.a, align 8, !tbaa !248 ; 2 uses
  %.not30 = icmp eq ptr %.028, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !585

bb.r:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.p ], [ %i.an, %bb.o ]
  %.027 = extractvalue { ptr, i32 } %.pn, 0
  %i.ap = tail call ptr @__cxa_begin_catch(ptr %.027) #25 ; 0 uses
  tail call void @_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #25
  br i1 %.not.not, label %bb.s, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.s:                                             ; preds = %bb.r
  %i.aq = load ptr, ptr %0, align 8, !tbaa !294   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdlPv(ptr noundef %i.aq) #27
  br label %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.u:                                             ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.t, %bb.s, %bb.r
  invoke void @__cxa_rethrow() #26
          to label %bb.x unwind label %bb.u

bb.v:                                             ; preds = %bb.u
  resume { ptr, i32 } %i.at

.loopexit:                                        ; preds = %bb.q, %bb.j, %bb.f
  ret void

bb.w:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #28
  unreachable

bb.x:                                             ; preds = %_ZNSt10_HashtableIN6duckdb10MetricTypeES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_22MetricTypeHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZN6duckdb17LocalUserSettingsD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !554
  tail call void @_ZNSt8_Rb_treeIN6duckdb13OptimizerTypeES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !555  ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !586

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10StructType13GetChildTypesB5cxx11ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN6duckdb11LogicalType7VARIANTEv(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESt6vectorISB_SaISB_EEEEPSB_ET0_T_SK_SJ_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit
  %.019 = phi ptr [ %i.u, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 10 uses
  %.sroa.08.018 = phi ptr [ %i.t, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 4 uses
  store ptr %i.b, ptr %.019, align 8, !tbaa !220
  %i.c = load ptr, ptr %.sroa.08.018, align 8, !tbaa !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !221  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.e, ptr %i.a, align 8, !tbaa !267
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %.019, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.g, ptr %.019, align 8, !tbaa !7
  %i.h = load i64, ptr %i.a, align 8, !tbaa !267
  store i64 %i.h, ptr %i.b, align 8, !tbaa !222
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !222
  store i8 %i.j, ptr %i.i, align 1, !tbaa !222
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !267  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !221
  %i.m = load ptr, ptr %.019, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.o = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 32
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.r = load ptr, ptr %.019, align 8, !tbaa !7   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.r) #27
  br label %.body

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.t, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !587

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.d ]
  %i.w = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #25 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvT_SB_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #26
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #28
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
end_hunk_0
