Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_optimizer_join_order?download=true
inline.NumInlined: 7873
inline.NumDeleted: 3418
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6duckdb14PlanEnumerator21SolveJoinOrderExactlyEv:bb.a
  %i.u = ptrtoint ptr %i.t to i64
  store i64 %i.u, ptr %1, align 8, !tbaa !104
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull %1, i64 noundef 1)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %1, align 8, !tbaa !104    ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN6duckdb22JoinRelationSetManager15GetJoinRelationEm.exit, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.w) #27
  br label %_ZN6duckdb22JoinRelationSetManager15GetJoinRelationEm.exit

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !104    ; 2 uses
  %.not.i7.i = icmp eq ptr %i.y, null
  br i1 %.not.i7.i, label %common.resume, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.y) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.e, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.x, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i ], [ %i.x, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb22JoinRelationSetManager15GetJoinRelationEm.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.z = call noundef zeroext i1 @_ZN6duckdb14PlanEnumerator7EmitCSGERNS_15JoinRelationSetE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.v) ; 3 uses
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN6duckdb22JoinRelationSetManager15GetJoinRelationEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.g, ptr %2, align 8, !tbaa !152
  store i64 1, ptr %i.h, align 8, !tbaa !153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.aa = invoke noundef zeroext i1 @_ZN6duckdb14PlanEnumerator21EnumerateCSGRecursiveERNS_15JoinRelationSetERSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.p unwind label %bb.o

thread-pre-split:                                 ; preds = %.loopexit
  %.pr = load i64, ptr %i.l, align 8, !tbaa !169
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.f
  %i.ab = phi i64 [ %.pr, %thread-pre-split ], [ 0, %bb.f ]
  %storemerge26 = phi i64 [ %i.ba, %thread-pre-split ], [ 0, %bb.f ] ; 8 uses
  %.not.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.not.i, label %.preheader, label %.thread34.i

.thread34.i:                                      ; preds = %bb.h
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !153 ; 2 uses
  %i.ad = urem i64 %storemerge26, %i.ac           ; 5 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !152
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %.critedge.i, label %bb.k

.preheader:                                       ; preds = %bb.h, %bb.i
  %.sroa.028.0.in.i = phi ptr [ %.sroa.028.0.i, %bb.i ], [ %i.i, %bb.h ]
  %.sroa.028.0.i = load ptr, ptr %.sroa.028.0.in.i, align 8, !tbaa !95 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.028.0.i, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !88
  %i.aj = icmp eq i64 %storemerge26, %i.ai
  br i1 %i.aj, label %.loopexit, label %.preheader, !llvm.loop !42

bb.j:                                             ; preds = %.preheader
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !153
  %i.al = urem i64 %storemerge26, %i.ak
  br label %.critedge.i

bb.k:                                             ; preds = %.thread34.i
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !95 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !88
  %i.ap = icmp eq i64 %storemerge26, %i.ao
  br i1 %i.ap, label %.loopexit, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.aq = icmp eq i64 %storemerge26, %i.at
  br i1 %i.aq, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !43

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.l
  %.020.i.i.i = phi ptr [ %i.ar, %bb.l ], [ %i.am, %bb.k ]
  %i.ar = load ptr, ptr %.020.i.i.i, align 8, !tbaa !95 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not18.i.i.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !88 ; 2 uses
  %i.au = urem i64 %i.at, %i.ac
  %.not19.i.i.i = icmp eq i64 %i.au, %i.ad
  br i1 %.not19.i.i.i, label %bb.l, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !43

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !43

.critedge.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %bb.j, %.thread34.i
  %i.av = phi i64 [ %i.al, %bb.j ], [ %i.ad, %.thread34.i ], [ %i.ad, %..loopexit_crit_edge21.i.i.i ], [ %i.ad, %.lr.ph.i.i.i ]
  %i.aw = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc unwind label %bb.n     ; 4 uses

.noexc:                                           ; preds = %.critedge.i
  store ptr null, ptr %i.aw, align 8, !tbaa !95
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %storemerge26, ptr %i.ax, align 8, !tbaa !88
  %i.ay = invoke ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %2, i64 noundef %i.av, i64 noundef %storemerge26, ptr noundef nonnull %i.aw, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ; 0 uses

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i: ; preds = %.noexc
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #27
  br label %.body

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.noexc
  %i.ba = add nuw i64 %storemerge26, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %umax52
  br i1 %exitcond.not, label %bb.g, label %thread-pre-split, !llvm.loop !989

bb.n:                                             ; preds = %.critedge.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !156 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.be = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !95 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !10

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.p
  %i.bf = load ptr, ptr %2, align 8, !tbaa !152
  %i.bg = load i64, ptr %i.h, align 8, !tbaa !153
  %i.bh = shl i64 %i.bg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.bh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.bi = load ptr, ptr %2, align 8, !tbaa !152   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.g
  br i1 %i.bj, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.bi) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %i.aa, label %bb.b, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit..critedge_crit_edge, !llvm.loop !986

.body:                                            ; preds = %bb.n, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.o ], [ %i.bb, %bb.n ], [ %i.az, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ]
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit..critedge_crit_edge: ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  br label %.critedge, !llvm.loop !986

.critedge:                                        ; preds = %bb.b, %_ZN6duckdb22JoinRelationSetManager15GetJoinRelationEm.exit, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit..critedge_crit_edge, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit..critedge_crit_edge ], [ %i.z, %_ZN6duckdb22JoinRelationSetManager15GetJoinRelationEm.exit ], [ %i.z, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14PlanEnumerator27SolveJoinOrderApproximatelyEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %3 = alloca %"struct.std::_Hashtable<std::reference_wrapper<duckdb::JoinRelationSet>, std::pair<const std::reference_wrapper<duckdb::JoinRelationSet>, duckdb::unique_ptr<duckdb::DPJoinNode>>, std::allocator<std::pair<const std::reference_wrapper<duckdb::JoinRelationSet>, duckdb::unique_ptr<duckdb::DPJoinNode>>>, std::__detail::_Select1st, duckdb::ReferenceEquality<duckdb::JoinRelationSet>, duckdb::ReferenceHashFunction<duckdb::JoinRelationSet>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %4 = alloca %"struct.std::_Hashtable<std::reference_wrapper<duckdb::JoinRelationSet>, std::pair<const std::reference_wrapper<duckdb::JoinRelationSet>, duckdb::unique_ptr<duckdb::DPJoinNode>>, std::allocator<std::pair<const std::reference_wrapper<duckdb::JoinRelationSet>, duckdb::unique_ptr<duckdb::DPJoinNode>>>, std::__detail::_Select1st, duckdb::ReferenceEquality<duckdb::JoinRelationSet>, duckdb::ReferenceHashFunction<duckdb::JoinRelationSet>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::function", align 8     ; 11 uses
  %7 = alloca %"class.duckdb::unique_ptr", align 8 ; 6 uses
  %8 = alloca %"class.duckdb::vector.63", align 8 ; 12 uses
  %9 = alloca [2 x %"class.duckdb::optional_ptr.508"], align 16 ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.duckdb::vector.63", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !338, !nonnull !268, !align !269 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !333
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !334
  %.not516 = icmp eq ptr %i.f, %i.g
  %.us-phi.sroa.gep856 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.us-phi.sroa.gep857 = getelementptr inbounds nuw i8, ptr %9, i64 8
  br i1 %.not516, label %.preheader326, label %.lr.ph

.preheader326:                                    ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit, %bb.a
  %.sroa.48.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.48.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.24.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.24.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %.sroa.0259.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0259.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ] ; 4 uses
  %i.h = ptrtoint ptr %.sroa.24.0.lcssa to i64    ; 2 uses
  %i.i = ptrtoint ptr %.sroa.0259.0.lcssa to i64  ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %.preheader325.lr.ph, label %._crit_edge514

.preheader325.lr.ph:                              ; preds = %.preheader326
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  br label %.preheader325

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit
  %i.t = phi ptr [ %i.au, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ %i.c, %bb.a ]
  %.0461 = phi i64 [ %i.at, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0259.0460 = phi ptr [ %.sroa.0259.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 10 uses
  %.sroa.24.0459 = phi ptr [ %.sroa.24.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 6 uses
  %.sroa.48.0458 = phi ptr [ %.sroa.48.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.u = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30
          to label %.noexc unwind label %.loopexit331 ; 2 uses

.noexc:                                           ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store i64 %.0461, ptr %i.u, align 8, !tbaa !88
  %i.w = ptrtoint ptr %i.u to i64
  store i64 %i.w, ptr %7, align 8, !tbaa !104
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull %7, i64 noundef 1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %7, align 8, !tbaa !104    ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #27
  br label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %.not.i7.i = icmp eq ptr %i.aa, null
  br i1 %.not.i7.i, label %.body, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #27
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.not.i.i81 = icmp eq ptr %.sroa.24.0459, %.sroa.48.0458
  br i1 %.not.i.i81, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.x to i64
  store i64 %i.ab, ptr %.sroa.24.0459, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = ptrtoint ptr %.sroa.24.0459 to i64
  %i.ad = ptrtoint ptr %.sroa.0259.0460 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.g, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc82 unwind label %.loopexit.split-lp332

.noexc82:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #30
          to label %.noexc83 unwind label %.loopexit331 ; 5 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = ptrtoint ptr %i.x to i64
  store i64 %i.ao, ptr %i.an, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0259.0460, %.sroa.24.0459
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc83, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %i.am, %.noexc83 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0259.0460, %.noexc83 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1005
  store i64 %i.ap, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1004
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %.sroa.24.0459
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc83
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.am, %.noexc83 ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0259.0460, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.0460) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.e
  %.sroa.48.2 = phi ptr [ %i.as, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.48.0458, %bb.e ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.24.0459, %bb.e ]
  %.sroa.0259.3 = phi ptr [ %i.am, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0259.0460, %bb.e ] ; 2 uses
  %.sroa.24.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.at = add nuw i64 %.0461, 1                   ; 2 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !338, !nonnull !268, !align !269 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !333
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !334
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = icmp ult i64 %i.at, %i.bc
  br i1 %i.bd, label %.lr.ph, label %.preheader326, !llvm.loop !994

.loopexit331:                                     ; preds = %.lr.ph, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit333 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp332:                            ; preds = %bb.g
  %lpad.loopexit.split-lp334 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader325:                                    ; preds = %.preheader325.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165
  %i.be = phi i64 [ %i.k, %.preheader325.lr.ph ], [ %i.lg, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 8 uses
  %i.bf = phi i64 [ %i.i, %.preheader325.lr.ph ], [ %i.le, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ]
  %i.bg = phi i64 [ %i.h, %.preheader325.lr.ph ], [ %i.ld, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ]
  %.sroa.0259.1512 = phi ptr [ %.sroa.0259.0.lcssa, %.preheader325.lr.ph ], [ %.sroa.0259.4, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 18 uses
  %.sroa.24.1511 = phi ptr [ %.sroa.24.0.lcssa, %.preheader325.lr.ph ], [ %.sroa.24.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 3 uses
  %.sroa.48.1510 = phi ptr [ %.sroa.48.0.lcssa, %.preheader325.lr.ph ], [ %.sroa.48.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 5 uses
  br label %bb.j

.loopexit324:                                     ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104, %bb.j
  %.1302.lcssa = phi i64 [ %.0301473, %bb.j ], [ %.2303, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0300474, %bb.j ], [ %.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %.sroa.0248.1.lcssa = phi ptr [ %.sroa.0248.0475, %bb.j ], [ %.sroa.0248.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %exitcond588.not = icmp eq i64 %i.bk, %i.be
  br i1 %exitcond588.not, label %bb.i, label %bb.j, !llvm.loop !995

bb.i:                                             ; preds = %.loopexit324
  %.not = icmp eq ptr %.sroa.0248.1.lcssa, null
  br i1 %.not, label %.split, label %bb.bp

bb.j:                                             ; preds = %.preheader325, %.loopexit324
  %.047476 = phi i64 [ 0, %.preheader325 ], [ %i.bk, %.loopexit324 ] ; 3 uses
  %.sroa.0248.0475 = phi ptr [ null, %.preheader325 ], [ %.sroa.0248.1.lcssa, %.loopexit324 ] ; 2 uses
  %.0300474 = phi i64 [ 0, %.preheader325 ], [ %.1.lcssa, %.loopexit324 ] ; 2 uses
  %.0301473 = phi i64 [ 0, %.preheader325 ], [ %.1302.lcssa, %.loopexit324 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1512, i64 %.047476
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = inttoptr i64 %i.bi to ptr               ; 5 uses
  %i.bk = add nuw i64 %.047476, 1                 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb14PlanEnumerator27SolveJoinOrderApproximatelyEv:bb.a
.noexc.i227:                                      ; preds = %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i
  %i.cu = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.cv, ptr %5, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 49, ptr %i.a, align 8, !tbaa !88
  %i.cw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc228 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc228:                                        ; preds = %.noexc.i227
  store ptr %i.cw, ptr %5, align 8, !tbaa !90
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !88  ; 3 uses
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.cw, ptr noundef nonnull align 1 dereferenceable(49) @.str.33, i64 49, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !85
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cx
  store i8 0, ptr %i.cz, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc228
  invoke void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.u unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i227
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %.noexc228
  %.0.i.i = phi i1 [ false, %bb.r ], [ true, %.noexc228 ] ; 2 uses
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dc = load ptr, ptr %5, align 8, !tbaa !90    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.cv
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.dc) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i, label %bb.t, label %.body175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i, label %bb.t, label %.body175

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.cu) #28
  br label %.body175

bb.u:                                             ; preds = %bb.r
  unreachable

.noexc.i:                                         ; preds = %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i
  %i.de = add nuw i64 %.017.i.i, 1
  invoke void @_ZNK6duckdb15QueryGraphEdges21EnumerateNeighborsDFSERNS_15JoinRelationSetESt17reference_wrapperINS0_9QueryEdgeEEmRKSt8functionIFbRNS_12NeighborInfoEEE(ptr noundef nonnull readonly align 8 dereferenceable(80) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bj, ptr nonnull %i.ct, i64 noundef %i.de, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc5.i unwind label %bb.w

.noexc5.i:                                        ; preds = %.noexc.i
  %.pre.i.i = load i64, ptr %i.bm, align 8, !tbaa !118, !noalias !1006
  br label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i

_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.preheader.i, %.noexc5.i, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.n
  %i.df = phi i64 [ %i.bw, %.preheader.i ], [ %.pre.i.i, %.noexc5.i ], [ %i.bw, %bb.n ], [ %i.bw, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ %i.bw, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.dg = add nuw i64 %.017.i.i, 1                ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.df
  br i1 %i.dh, label %bb.l, label %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.i, !llvm.loop !9

_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.i: ; preds = %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i
  %.pr.i = load ptr, ptr %i.m, align 8, !tbaa !148, !noalias !1006 ; 2 uses
  %.not.i6.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i6.i, label %bb.z, label %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.thread.i

_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.thread.i: ; preds = %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.i, %bb.k
  %i.di = phi ptr [ %.pr.i, %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.i ], [ @"_ZNSt17_Function_handlerIFbRN6duckdb12NeighborInfoEEZNKS0_15QueryGraphEdges14GetConnectionsERNS0_15JoinRelationSetES6_E3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", %bb.k ]
  %i.dj = invoke noundef zeroext i1 %i.di(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %bb.z unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.thread.i
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #31
  unreachable

bb.w:                                             ; preds = %.noexc.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body175

.body175:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.t, %bb.w
  %eh.lpad-body176 = phi { ptr, i32 } [ %i.dm, %bb.w ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.t ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 2 uses
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !148, !noalias !1006 ; 2 uses
  %.not.i7.i97 = icmp eq ptr %i.dn, null
  br i1 %.not.i7.i97, label %_ZNSt14_Function_baseD2Ev.exit8.i, label %bb.x

bb.x:                                             ; preds = %.body175
  %i.do = invoke noundef zeroext i1 %i.dn(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8.i unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit8.i:                ; preds = %bb.x, %.body175
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1006
  %i.dr = load ptr, ptr %8, align 8, !tbaa !161, !alias.scope !1006 ; 2 uses
  %.not.i.i.i9.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i9.i, label %.body99, label %.body99.sink.split

bb.z:                                             ; preds = %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.thread.i, %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1006
  %i.ds = load ptr, ptr %8, align 8, !tbaa !429   ; 2 uses
  %i.dt = load ptr, ptr %i.n, align 8, !tbaa !429
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb14PlanEnumerator8EmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ab unwind label %.body178

bb.ab:                                            ; preds = %bb.aa
  %.not319 = icmp eq ptr %.sroa.0248.1466, null
  br i1 %.not319, label %bb.ac, label %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit

_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit: ; preds = %bb.ab
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !423
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0248.1466, i64 40
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !176
  %i.dy = fcmp olt double %.sroa.4.0.copyload, %i.dx
  br i1 %i.dy, label %bb.ac, label %thread-pre-split

bb.ac:                                            ; preds = %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit, %bb.ab
  %i.dz = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb14PlanEnumerator8EmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %thread-pre-split unwind label %bb.ad

.body178:                                         ; preds = %bb.aa
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.body178
  %.pn73 = phi { ptr, i32 } [ %i.eb, %bb.ad ], [ %i.ea, %.body178 ] ; 2 uses
  %i.ec = load ptr, ptr %8, align 8, !tbaa !161   ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i102, label %.body99, label %.body99.sink.split

thread-pre-split:                                 ; preds = %bb.ac, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit
  %.2303.ph = phi i64 [ %.1302464, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit ], [ %.047476, %bb.ac ]
  %.2.ph = phi i64 [ %.1465, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit ], [ %.046467, %bb.ac ]
  %.sroa.0248.2.ph = phi ptr [ %.sroa.0248.1466, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit ], [ %i.dz, %bb.ac ]
  %.pr = load ptr, ptr %8, align 8, !tbaa !161
  br label %bb.af

bb.af:                                            ; preds = %thread-pre-split, %bb.z
  %i.ed = phi ptr [ %.pr, %thread-pre-split ], [ %i.ds, %bb.z ] ; 2 uses
  %.2303 = phi i64 [ %.2303.ph, %thread-pre-split ], [ %.1302464, %bb.z ] ; 2 uses
  %.2 = phi i64 [ %.2.ph, %thread-pre-split ], [ %.1465, %bb.z ] ; 2 uses
  %.sroa.0248.2 = phi ptr [ %.sroa.0248.2.ph, %thread-pre-split ], [ %.sroa.0248.1466, %bb.z ] ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdlPv(ptr noundef nonnull %i.ed) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.ee = add nuw i64 %.046467, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ee, %i.be
  br i1 %exitcond.not, label %.loopexit324, label %bb.k, !llvm.loop !998

.body99.sink.split:                               ; preds = %bb.ae, %_ZNSt14_Function_baseD2Ev.exit8.i
  %.sink = phi ptr [ %i.dr, %_ZNSt14_Function_baseD2Ev.exit8.i ], [ %i.ec, %bb.ae ]
  %.pn73.pn.ph = phi { ptr, i32 } [ %eh.lpad-body176, %_ZNSt14_Function_baseD2Ev.exit8.i ], [ %.pn73, %bb.ae ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #27
  br label %.body99

.body99:                                          ; preds = %.body99.sink.split, %bb.ae, %_ZNSt14_Function_baseD2Ev.exit8.i
  %.pn73.pn = phi { ptr, i32 } [ %eh.lpad-body176, %_ZNSt14_Function_baseD2Ev.exit8.i ], [ %.pn73, %bb.ae ], [ %.pn73.pn.ph, %.body99.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body

.split:                                           ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false), !tbaa !443
  %i.ef = load ptr, ptr %.sroa.0259.1512, align 8, !tbaa !342 ; 3 uses
  %i.eg = ptrtoint ptr %i.ef to i64               ; 4 uses
  %i.eh = load i64, ptr %i.p, align 8, !tbaa !287 ; 4 uses
  %i.ei = urem i64 %i.eg, %i.eh                   ; 3 uses
  %i.ej = load ptr, ptr %i.o, align 8, !tbaa !286 ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i184, label %.loopexit.i, label %bb.ah

bb.ah:                                            ; preds = %.split
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !95 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !347
  %i.eq = icmp eq i64 %i.ep, %i.eg
  %i.er = load ptr, ptr %i.en, align 8
  %i.es = icmp eq ptr %i.ef, %i.er
  %i.et = select i1 %i.eq, i1 %i.es, i1 false
  br i1 %i.et, label %.loopexit323, label %.lr.ph.i.i.i

bb.ai:                                            ; preds = %bb.aj
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.ev = icmp eq i64 %i.fb, %i.eg
  %i.ew = load ptr, ptr %i.eu, align 8
  %i.ex = icmp eq ptr %i.ef, %i.ew
  %i.ey = select i1 %i.ev, i1 %i.ex, i1 false
  br i1 %i.ey, label %.loopexit323, label %.lr.ph.i.i.i, !llvm.loop !28

.lr.ph.i.i.i:                                     ; preds = %bb.ah, %bb.ai
  %.020.i.i.i = phi ptr [ %i.ez, %bb.ai ], [ %i.em, %bb.ah ]
  %i.ez = load ptr, ptr %.020.i.i.i, align 8, !tbaa !95 ; 5 uses
  %.not18.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not18.i.i.i, label %.loopexit.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !347 ; 2 uses
  %i.fc = urem i64 %i.fb, %i.eh
  %.not19.i.i.i = icmp eq i64 %i.fc, %i.ei
  br i1 %.not19.i.i.i, label %bb.ai, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !28

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.aj
  br label %.loopexit.i, !llvm.loop !28

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.o, ptr %4, align 8, !tbaa !447
  %i.fd = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %.noexc185 unwind label %bb.ao ; 5 uses

.noexc185:                                        ; preds = %.loopexit.i
  store ptr null, ptr %i.fd, align 8, !tbaa !95
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i64, ptr %.sroa.0259.1512, align 8
  store i64 %i.ff, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store ptr null, ptr %i.fg, align 8, !tbaa !449
  store ptr %i.fd, ptr %i.q, align 8, !tbaa !450
  %i.fh = invoke ptr @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 noundef %i.ei, i64 noundef %i.eg, ptr noundef nonnull %i.fd, i64 noundef 1)
          to label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i unwind label %bb.ak

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %.noexc185
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.pre = load i64, ptr %i.p, align 8, !tbaa !287
  %.pre590 = load ptr, ptr %i.o, align 8, !tbaa !286
  br label %.loopexit323

bb.ak:                                            ; preds = %.noexc185.1, %.noexc185
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.body112

.loopexit323:                                     ; preds = %bb.ai, %bb.ah, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i
  %i.fj = phi ptr [ %.pre590, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.ej, %bb.ah ], [ %i.ej, %bb.ai ]
  %i.fk = phi i64 [ %.pre, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.eh, %bb.ah ], [ %i.eh, %bb.ai ] ; 2 uses
  %.pn.i = phi ptr [ %i.fh, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.em, %bb.ah ], [ %i.ez, %bb.ai ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.fl = load ptr, ptr %.1.i, align 8, !tbaa !290
  %i.fm = ptrtoint ptr %i.fl to i64
  store i64 %i.fm, ptr %9, align 16, !tbaa !290
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0259.1512, i64 8 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !342 ; 3 uses
  %i.fp = ptrtoint ptr %i.fo to i64               ; 4 uses
  %i.fq = urem i64 %i.fp, %i.fk                   ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i184.1 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i184.1, label %.loopexit.i.1, label %bb.al

bb.al:                                            ; preds = %.loopexit323
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !95 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !347
  %i.fx = icmp eq i64 %i.fw, %i.fp
  %i.fy = load ptr, ptr %i.fu, align 8
  %i.fz = icmp eq ptr %i.fo, %i.fy
  %i.ga = select i1 %i.fx, i1 %i.fz, i1 false
  br i1 %i.ga, label %.loopexit323.1, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.al, %bb.an
  %.020.i.i.i.1 = phi ptr [ %i.gb, %bb.an ], [ %i.ft, %bb.al ]
  %i.gb = load ptr, ptr %.020.i.i.i.1, align 8, !tbaa !95 ; 5 uses
  %.not18.i.i.i.1 = icmp eq ptr %i.gb, null
  br i1 %.not18.i.i.i.1, label %.loopexit.i.1, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !347 ; 2 uses
  %i.ge = urem i64 %i.gd, %i.fk
  %.not19.i.i.i.1 = icmp eq i64 %i.ge, %i.fq
  br i1 %.not19.i.i.i.1, label %bb.an, label %..loopexit_crit_edge21.i.i.i.1, !llvm.loop !28

..loopexit_crit_edge21.i.i.i.1:                   ; preds = %bb.am
  br label %.loopexit.i.1, !llvm.loop !28

bb.an:                                            ; preds = %bb.am
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gg = icmp eq i64 %i.gd, %i.fp
  %i.gh = load ptr, ptr %i.gf, align 8
  %i.gi = icmp eq ptr %i.fo, %i.gh
  %i.gj = select i1 %i.gg, i1 %i.gi, i1 false
  br i1 %i.gj, label %.loopexit323.1, label %.lr.ph.i.i.i.1, !llvm.loop !28

.loopexit.i.1:                                    ; preds = %.lr.ph.i.i.i.1, %..loopexit_crit_edge21.i.i.i.1, %.loopexit323
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.o, ptr %4, align 8, !tbaa !447
  %i.gk = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %.noexc185.1 unwind label %bb.ao ; 5 uses

.noexc185.1:                                      ; preds = %.loopexit.i.1
  store ptr null, ptr %i.gk, align 8, !tbaa !95
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load i64, ptr %i.fn, align 8
  store i64 %i.gm, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store ptr null, ptr %i.gn, align 8, !tbaa !449
  store ptr %i.gk, ptr %i.q, align 8, !tbaa !450
  %i.go = invoke ptr @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 noundef %i.fq, i64 noundef %i.fp, ptr noundef nonnull %i.gk, i64 noundef 1)
          to label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.1 unwind label %bb.ak

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.1: ; preds = %.noexc185.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit323.1

.loopexit323.1:                                   ; preds = %bb.an, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.1, %bb.al
  %.pn.i.1 = phi ptr [ %i.go, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.1 ], [ %i.ft, %bb.al ], [ %i.gb, %bb.an ]
  %.1.i.1 = getelementptr inbounds nuw i8, ptr %.pn.i.1, i64 16
  %i.gp = load ptr, ptr %.1.i.1, align 8, !tbaa !290 ; 2 uses
  %i.gq = ptrtoint ptr %i.gp to i64
  store i64 %i.gq, ptr %i.s, align 8, !tbaa !290
  %i.gr = icmp ugt i64 %i.be, 2
  br i1 %i.gr, label %.lr.ph509, label %._crit_edge

bb.ao:                                            ; preds = %.loopexit.i.1, %.loopexit.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %.body112

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre591 = load ptr, ptr %i.s, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit323.1
  %i.gt = phi ptr [ %i.gp, %.loopexit323.1 ], [ %.pre591, %._crit_edge.loopexit ]
  %.sroa.6.1.lcssa = phi i64 [ 1, %.loopexit323.1 ], [ %.sroa.6.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.030.1.lcssa = phi i64 [ 0, %.loopexit323.1 ], [ %.sroa.030.2, %._crit_edge.loopexit ] ; 2 uses
  %i.gu = load ptr, ptr %9, align 16, !tbaa !443
  %.not316 = icmp eq ptr %i.gu, null
  %.not317 = icmp eq ptr %i.gt, null
  %or.cond = select i1 %.not316, i1 true, i1 %.not317
  br i1 %or.cond, label %bb.az, label %bb.be

.lr.ph509:                                        ; preds = %.loopexit323.1, %.loopexit
  %.051522 = phi i64 [ %i.it, %.loopexit ], [ 2, %.loopexit323.1 ] ; 4 uses
  %.sroa.030.1520 = phi i64 [ %.sroa.030.2, %.loopexit ], [ 0, %.loopexit323.1 ] ; 2 uses
  %.044508 = phi i64 [ %.sroa.6.2, %.loopexit ], [ 1, %.loopexit323.1 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1512, i64 %.051522 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !342 ; 3 uses
  %i.gx = ptrtoint ptr %i.gw to i64               ; 4 uses
  %i.gy = load i64, ptr %i.p, align 8, !tbaa !287 ; 2 uses
  %i.gz = urem i64 %i.gx, %i.gy                   ; 3 uses
  %i.ha = load ptr, ptr %i.o, align 8, !tbaa !286
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gz
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i192, label %.loopexit.i198, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph509
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !95 ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !347
  %i.hh = icmp eq i64 %i.hg, %i.gx
  %i.hi = load ptr, ptr %i.he, align 8
  %i.hj = icmp eq ptr %i.gw, %i.hi
  %i.hk = select i1 %i.hh, i1 %i.hj, i1 false
  br i1 %i.hk, label %.loopexit322, label %.lr.ph.i.i.i193

bb.aq:                                            ; preds = %bb.ar
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hm = icmp eq i64 %i.hs, %i.gx
  %i.hn = load ptr, ptr %i.hl, align 8
  %i.ho = icmp eq ptr %i.gw, %i.hn
  %i.hp = select i1 %i.hm, i1 %i.ho, i1 false
  br i1 %i.hp, label %.loopexit322, label %.lr.ph.i.i.i193, !llvm.loop !28

.lr.ph.i.i.i193:                                  ; preds = %bb.ap, %bb.aq
  %.020.i.i.i194 = phi ptr [ %i.hq, %bb.aq ], [ %i.hd, %bb.ap ]
  %i.hq = load ptr, ptr %.020.i.i.i194, align 8, !tbaa !95 ; 5 uses
  %.not18.i.i.i195 = icmp eq ptr %i.hq, null
  br i1 %.not18.i.i.i195, label %.loopexit.i198, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i193
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !347 ; 2 uses
  %i.ht = urem i64 %i.hs, %i.gy
  %.not19.i.i.i196 = icmp eq i64 %i.ht, %i.gz
  br i1 %.not19.i.i.i196, label %bb.aq, label %..loopexit_crit_edge21.i.i.i197, !llvm.loop !28

..loopexit_crit_edge21.i.i.i197:                  ; preds = %bb.ar
  br label %.loopexit.i198, !llvm.loop !28

.loopexit.i198:                                   ; preds = %.lr.ph.i.i.i193, %..loopexit_crit_edge21.i.i.i197, %.lr.ph509
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.o, ptr %3, align 8, !tbaa !447
  %i.hu = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %.noexc202 unwind label %bb.at ; 5 uses

.noexc202:                                        ; preds = %.loopexit.i198
  store ptr null, ptr %i.hu, align 8, !tbaa !95
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load i64, ptr %i.gv, align 8
  store i64 %i.hw, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store ptr null, ptr %i.hx, align 8, !tbaa !449
  store ptr %i.hu, ptr %i.r, align 8, !tbaa !450
  %i.hy = invoke ptr @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 noundef %i.gz, i64 noundef %i.gx, ptr noundef nonnull %i.hu, i64 noundef 1)
          to label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i199 unwind label %bb.as

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i199: ; preds = %.noexc202
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit322

bb.as:                                            ; preds = %.noexc202
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.body112

.loopexit322:                                     ; preds = %bb.aq, %bb.ap, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i199
  %.pn.i200 = phi ptr [ %i.hy, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i199 ], [ %i.hd, %bb.ap ], [ %i.hq, %bb.aq ]
  %.1.i201 = getelementptr inbounds nuw i8, ptr %.pn.i200, i64 16
  %i.ia = load ptr, ptr %.1.i201, align 8, !tbaa !290
  %.fr = freeze ptr %i.ia                         ; 3 uses
  %.not.i216 = icmp eq ptr %.fr, null
  %i.ib = getelementptr inbounds nuw i8, ptr %.fr, i64 40
  %i.ic = load ptr, ptr %9, align 16, !tbaa !443  ; 2 uses
  %.not318.us = icmp eq ptr %i.ic, null           ; 2 uses
  br i1 %.not.i216, label %.split479.us, label %.split479.preheader

.split479.preheader:                              ; preds = %.loopexit322
  br i1 %.not318.us, label %.split481.us, label %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129

.split479.us:                                     ; preds = %.loopexit322
  br i1 %.not318.us, label %.split481.us, label %.split484.us

bb.at:                                            ; preds = %.loopexit.i198
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.body112

_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129: ; preds = %.split479.preheader
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.if = load double, ptr %i.ie, align 8, !tbaa !176
  %i.ig = load double, ptr %i.ib, align 8, !tbaa !176 ; 2 uses
  %i.ih = fcmp ogt double %i.if, %i.ig
  br i1 %i.ih, label %.split481.us, label %.split479.1

.split484.us:                                     ; preds = %.split479.us
  %i.ii = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.au unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i217

bb.au:                                            ; preds = %.split484.us
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_throw(ptr nonnull %i.ii, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ay unwind label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i217: ; preds = %.split484.us
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0.i220 = phi i1 [ false, %bb.av ], [ true, %bb.au ] ; 2 uses
  %i.ik = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.il = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221: ; preds = %bb.aw
  call void @_ZdlPv(ptr noundef %i.il) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i220, label %bb.ax, label %.body112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i220, label %bb.ax, label %.body112

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i217
  %.pn9.i218 = phi { ptr, i32 } [ %i.ij, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i217 ], [ %i.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222 ], [ %i.ik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221 ]
  call void @__cxa_free_exception(ptr %i.ii) #28
  br label %.body112

bb.ay:                                            ; preds = %bb.av
  unreachable

.split481.us:                                     ; preds = %.split479.preheader, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129, %.split479.1, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1, %.split479.us
  %.sroa.idx1 = phi i1 [ false, %.split479.us ], [ false, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129 ], [ false, %.split479.preheader ], [ true, %.split479.1 ], [ true, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1 ] ; 2 uses
  %.us-phi.sroa.phi853 = phi ptr [ %9, %.split479.us ], [ %9, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129 ], [ %9, %.split479.preheader ], [ %.us-phi.sroa.gep856, %.split479.1 ], [ %.us-phi.sroa.gep857, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1 ]
  %i.io = ptrtoint ptr %.fr to i64
  store i64 %i.io, ptr %.us-phi.sroa.phi853, align 8, !tbaa !290
  %.051..sroa.6.1 = select i1 %.sroa.idx1, i64 %.051522, i64 %.044508
  %.sroa.030.1..051 = select i1 %.sroa.idx1, i64 %.sroa.030.1520, i64 %.051522
  br label %.loopexit

.split479.1:                                      ; preds = %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129
  %i.ip = load ptr, ptr %i.s, align 8, !tbaa !443 ; 2 uses
  %.not318.1 = icmp eq ptr %i.ip, null
  br i1 %.not318.1, label %.split481.us, label %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1

_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1: ; preds = %.split479.1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !176
  %i.is = fcmp ogt double %i.ir, %i.ig
  br i1 %i.is, label %.split481.us, label %.loopexit

.loopexit:                                        ; preds = %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1, %.split481.us
  %.sroa.6.2 = phi i64 [ %.051..sroa.6.1, %.split481.us ], [ %.044508, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1 ] ; 2 uses
  %.sroa.030.2 = phi i64 [ %.sroa.030.1..051, %.split481.us ], [ %.sroa.030.1520, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1 ] ; 2 uses
  %i.it = add nuw i64 %.051522, 1                 ; 2 uses
  %exitcond589.not = icmp eq i64 %i.it, %i.be
  br i1 %exitcond589.not, label %._crit_edge.loopexit, label %.lr.ph509, !llvm.loop !999

bb.az:                                            ; preds = %._crit_edge
  %i.iu = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ba unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.iu, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @__cxa_throw(ptr nonnull %i.iu, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.cg unwind label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.az
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.041 = phi i1 [ false, %bb.bb ], [ true, %bb.ba ] ; 2 uses
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ix = load ptr, ptr %10, align 8, !tbaa !90   ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.ix) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %.041, label %bb.bd, label %.body112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %.041, label %bb.bd, label %.body112

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn308 = phi { ptr, i32 } [ %i.iv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.iw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.iu) #28
  br label %.body112

bb.be:                                            ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_10DPJoinNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.ja = load ptr, ptr %9, align 16, !tbaa !443
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !428, !nonnull !268, !align !269 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10DPJoinNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.jc = load ptr, ptr %i.s, align 8, !tbaa !443
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !428, !nonnull !268, !align !269 ; 4 uses
  %i.je = load ptr, ptr %i.b, align 8, !tbaa !338, !nonnull !268, !align !269
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 272 ; 2 uses
  invoke void @_ZN6duckdb15QueryGraphEdges10CreateEdgeERNS_15JoinRelationSetES2_NS_12optional_ptrINS_10FilterInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.jf, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, ptr noundef nonnull align 8 dereferenceable(16) %i.jd, ptr null)
          to label %.noexc136 unwind label %bb.bk

.noexc136:                                        ; preds = %bb.bg
  invoke void @_ZN6duckdb15QueryGraphEdges10CreateEdgeERNS_15JoinRelationSetES2_NS_12optional_ptrINS_10FilterInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.jf, ptr noundef nonnull align 8 dereferenceable(16) %i.jd, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, ptr null)
          to label %_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit unwind label %bb.bk

_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit: ; preds = %.noexc136
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.jg = load ptr, ptr %0, align 8, !tbaa !430, !nonnull !268, !align !269
  invoke void @_ZNK6duckdb15QueryGraphEdges14GetConnectionsERNS_15JoinRelationSetES2_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.63") align 8 %12, ptr noundef nonnull align 8 dereferenceable(80) %i.jg, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, ptr noundef nonnull align 8 dereferenceable(16) %i.jd)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit
  %i.jh = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb14PlanEnumerator8EmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, ptr noundef nonnull align 8 dereferenceable(16) %i.jd, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.bi unwind label %bb.bm     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %spec.select = call i64 @llvm.umin.i64(i64 %.sroa.030.1.lcssa, i64 %.sroa.6.1.lcssa)
  %spec.select315 = call i64 @llvm.umax.i64(i64 %.sroa.030.1.lcssa, i64 %.sroa.6.1.lcssa)
  %i.ji = load ptr, ptr %12, align 8, !tbaa !161  ; 2 uses
  %.not.i.i.i140 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141, label %bb.bo

bb.bj:                                            ; preds = %bb.be
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.body112

bb.bk:                                            ; preds = %.noexc136, %bb.bg, %bb.bf
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body112

bb.bl:                                            ; preds = %_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139

bb.bm:                                            ; preds = %bb.bh
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jn = load ptr, ptr %12, align 8, !tbaa !161  ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef nonnull %i.jn) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139

bb.bo:                                            ; preds = %bb.bi
  call void @_ZdlPv(ptr noundef nonnull %i.ji) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141: ; preds = %bb.bi, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bp

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139: ; preds = %bb.bn, %bb.bm, %bb.bl
  %.pn63 = phi { ptr, i32 } [ %i.jl, %bb.bl ], [ %i.jm, %bb.bm ], [ %i.jm, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.body112

.body112:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.at, %bb.as, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221, %bb.ak, %bb.ao, %bb.bj, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bd
  %.pn69 = phi { ptr, i32 } [ %i.jk, %bb.bk ], [ %i.fi, %bb.ak ], [ %i.iw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn308, %bb.bd ], [ %i.jj, %bb.bj ], [ %.pn63, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139 ], [ %i.ik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221 ], [ %.pn9.i218, %bb.ax ], [ %i.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222 ], [ %i.gs, %bb.ao ], [ %i.hz, %bb.as ], [ %i.id, %bb.at ], [ %i.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body

bb.bp:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141, %bb.i
  %.4305 = phi i64 [ %.1302.lcssa, %bb.i ], [ %spec.select, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141 ] ; 3 uses
  %.4 = phi i64 [ %.1.lcssa, %bb.i ], [ %spec.select315, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141 ] ; 3 uses
  %i.jo = load ptr, ptr %i.b, align 8, !tbaa !338, !nonnull !268, !align !269
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 144
  %.not.i.i142 = icmp ult i64 %.4305, %i.be
  br i1 %.not.i.i142, label %bb.bq, label %.invoke

.invoke:                                          ; preds = %bb.bq, %bb.bp
  %i.jq = phi i64 [ %.4305, %bb.bp ], [ %.4, %bb.bq ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.jq, i64 noundef %i.be) #29
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bq:                                            ; preds = %bb.bp
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1512, i64 %.4305 ; 4 uses
  %.not.i.i144 = icmp ult i64 %.4, %i.be
  br i1 %.not.i.i144, label %bb.br, label %.invoke

bb.br:                                            ; preds = %bb.bq
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !342
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1512, i64 %.4 ; 4 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !342
  %i.jv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %i.js, ptr noundef nonnull align 8 dereferenceable(16) %i.ju)
          to label %bb.bs unwind label %.body.thread640 ; 2 uses

bb.bs:                                            ; preds = %bb.br
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 4 uses
  %.not.i.i147 = icmp eq ptr %i.jw, %.sroa.24.1511
  br i1 %.not.i.i147, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = sub i64 %i.bg, %i.jx                    ; 3 uses
  %i.jz = icmp sgt i64 %i.jy, 8
  br i1 %i.jz, label %bb.bu, label %bb.bv, !prof !105

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jt, ptr nonnull align 8 %i.jw, i64 %i.jy, i1 false)
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  %i.ka = icmp eq i64 %i.jy, 8
  br i1 %i.ka, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kb = load i64, ptr %i.jw, align 8
  store i64 %i.kb, ptr %i.jt, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bs
  %i.kc = getelementptr inbounds i8, ptr %.sroa.24.1511, i64 -8 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 4 uses
  %.not.i.i148 = icmp eq ptr %i.kd, %i.kc
  br i1 %.not.i.i148, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = ptrtoint ptr %i.kd to i64
  %i.kg = sub i64 %i.ke, %i.kf                    ; 3 uses
  %i.kh = icmp sgt i64 %i.kg, 8
  br i1 %i.kh, label %bb.bz, label %bb.ca, !prof !105

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jr, ptr nonnull align 8 %i.kd, i64 %i.kg, i1 false)
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.ki = icmp eq i64 %i.kg, 8
  br i1 %i.ki, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.kj = load i64, ptr %i.kd, align 8
  store i64 %i.kj, ptr %i.jr, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  %i.kk = getelementptr inbounds i8, ptr %.sroa.24.1511, i64 -16 ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.kk, %.sroa.48.1510
  br i1 %.not.i.i150, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kl = ptrtoint ptr %i.jv to i64
  store i64 %i.kl, ptr %i.kk, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165

bb.ce:                                            ; preds = %bb.cc
  %i.km = ptrtoint ptr %.sroa.48.1510 to i64
  %i.kn = sub i64 %i.km, %i.bf                    ; 3 uses
  %i.ko = icmp eq i64 %i.kn, 9223372036854775800
  br i1 %i.ko, label %bb.cf, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc163 unwind label %.body.thread.loopexit.split-lp

.noexc163:                                        ; preds = %bb.cf
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151: ; preds = %bb.ce
  %i.kp = ashr exact i64 %i.kn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i152 = call i64 @llvm.umax.i64(i64 %i.kp, i64 1)
  %i.kq = add nsw i64 %.sroa.speculated.i.i.i.i152, %i.kp ; 2 uses
  %i.kr = icmp ult i64 %i.kq, %i.kp
  %i.ks = call i64 @llvm.umin.i64(i64 %i.kq, i64 1152921504606846975)
  %i.kt = select i1 %i.kr, i64 1152921504606846975, i64 %i.ks ; 3 uses
  %.not.i.i.i.i153 = icmp ne i64 %i.kt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i153)
  %i.ku = shl nuw nsw i64 %i.kt, 3
  %i.kv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ku) #30
          to label %.noexc164 unwind label %.body.thread.loopexit ; 5 uses

.noexc164:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kn
  %i.kx = ptrtoint ptr %i.jv to i64
  store i64 %i.kx, ptr %i.kw, align 8
  %.not10.i.i.i.i.i.i.i154 = icmp eq ptr %.sroa.0259.1512, %.sroa.48.1510
  br i1 %.not10.i.i.i.i.i.i.i154, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, label %.lr.ph.i.i.i.i.i.i.i155

.lr.ph.i.i.i.i.i.i.i155:                          ; preds = %.noexc164, %.lr.ph.i.i.i.i.i.i.i155
  %.012.i.i.i.i.i.i.i156 = phi ptr [ %i.la, %.lr.ph.i.i.i.i.i.i.i155 ], [ %i.kv, %.noexc164 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i157 = phi ptr [ %i.kz, %.lr.ph.i.i.i.i.i.i.i155 ], [ %.sroa.0259.1512, %.noexc164 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.ky = load i64, ptr %.0911.i.i.i.i.i.i.i157, align 8, !alias.scope !1008
  store i64 %i.ky, ptr %.012.i.i.i.i.i.i.i156, align 8, !alias.scope !1007
  %i.kz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i157, i64 8 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i156, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i158 = icmp eq ptr %i.kz, %.sroa.48.1510
  br i1 %.not.i.i.i.i.i.i.i158, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, label %.lr.ph.i.i.i.i.i.i.i155, !llvm.loop !39

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162: ; preds = %.lr.ph.i.i.i.i.i.i.i155, %.noexc164
  %.0.lcssa.i.i.i.i.i.i.i160 = phi ptr [ %i.kv, %.noexc164 ], [ %i.la, %.lr.ph.i.i.i.i.i.i.i155 ]
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i160, i64 8
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.1512) #27
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.kt
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, %bb.cd
  %.sroa.48.3 = phi ptr [ %i.lc, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162 ], [ %.sroa.48.1510, %bb.cd ]
  %.sroa.24.3 = phi ptr [ %i.lb, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162 ], [ %i.kc, %bb.cd ] ; 2 uses
  %.sroa.0259.4 = phi ptr [ %i.kv, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162 ], [ %.sroa.0259.1512, %bb.cd ] ; 3 uses
  %i.ld = ptrtoint ptr %.sroa.24.3 to i64         ; 2 uses
  %i.le = ptrtoint ptr %.sroa.0259.4 to i64       ; 2 uses
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = ashr exact i64 %i.lf, 3                 ; 2 uses
  %i.lh = icmp ugt i64 %i.lg, 1
  br i1 %i.lh, label %.preheader325, label %._crit_edge514.thread, !llvm.loop !1003

.body.thread640:                                  ; preds = %bb.br
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body.thread.loopexit:                            ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread.loopexit.split-lp:                   ; preds = %bb.cf
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

._crit_edge514:                                   ; preds = %.preheader326
  %.not.i.i.i166 = icmp eq ptr %.sroa.0259.0.lcssa, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit, label %._crit_edge514.thread

._crit_edge514.thread:                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165, %._crit_edge514
  %.sroa.0259.1.lcssa639 = phi ptr [ %.sroa.0259.0.lcssa, %._crit_edge514 ], [ %.sroa.0259.4, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.1.lcssa639) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit: ; preds = %._crit_edge514, %._crit_edge514.thread
  ret void

.body:                                            ; preds = %.loopexit.split-lp, %.loopexit331, %.loopexit.split-lp332, %.body112, %.body99, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i, %bb.c
  %.sroa.0259.2 = phi ptr [ %.sroa.0259.1512, %.body99 ], [ %.sroa.0259.0460, %bb.c ], [ %.sroa.0259.0460, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i ], [ %.sroa.0259.1512, %.body112 ], [ %.sroa.0259.0460, %.loopexit.split-lp332 ], [ %.sroa.0259.0460, %.loopexit331 ], [ %.sroa.0259.1512, %.loopexit.split-lp ] ; 2 uses
  %.pn79 = phi { ptr, i32 } [ %.pn73.pn, %.body99 ], [ %i.z, %bb.c ], [ %i.z, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i ], [ %.pn69, %.body112 ], [ %lpad.loopexit.split-lp334, %.loopexit.split-lp332 ], [ %lpad.loopexit333, %.loopexit331 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i167 = icmp eq ptr %.sroa.0259.2, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit168, label %.body.thread

.body.thread:                                     ; preds = %.body.thread640, %.body.thread.loopexit, %.body.thread.loopexit.split-lp, %.body
  %.pn79313 = phi { ptr, i32 } [ %.pn79, %.body ], [ %lpad.loopexit328, %.body.thread.loopexit ], [ %lpad.loopexit.split-lp329, %.body.thread.loopexit.split-lp ], [ %lpad.loopexit, %.body.thread640 ]
  %.sroa.0259.2312 = phi ptr [ %.sroa.0259.2, %.body ], [ %.sroa.0259.1512, %.body.thread.loopexit ], [ %.sroa.0259.1512, %.body.thread.loopexit.split-lp ], [ %.sroa.0259.1512, %.body.thread640 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.2312) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit168

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit168: ; preds = %.body, %.body.thread
  %.pn79314 = phi { ptr, i32 } [ %.pn79, %.body ], [ %.pn79313, %.body.thread ]
end_hunk_1
