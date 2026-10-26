Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_optimizer_join_order?download=true
inline.NumInlined: 7873
inline.NumDeleted: 3418
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6duckdb14PlanEnumerator21SolveJoinOrderExactlyEv:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.s = add i64 %.01153, -1                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.t = call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30, !noalias !990 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !88
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
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

thread-pre-split:                                 ; preds = %.loopexit
  %.pr = load i64, ptr %i.l, align 8, !tbaa !169
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.f
  %i.ab = phi i64 [ %.pr, %thread-pre-split ], [ 0, %bb.f ]
  %storemerge27 = phi i64 [ %i.ba, %thread-pre-split ], [ 0, %bb.f ] ; 8 uses
  %.not.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.not.i, label %.preheader, label %.thread34.i

.thread34.i:                                      ; preds = %bb.h
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !153 ; 2 uses
  %i.ad = urem i64 %storemerge27, %i.ac           ; 5 uses
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
  %i.aj = icmp eq i64 %storemerge27, %i.ai
  br i1 %i.aj, label %.loopexit, label %.preheader, !llvm.loop !42

bb.j:                                             ; preds = %.preheader
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !153
  %i.al = urem i64 %storemerge27, %i.ak
  br label %.critedge.i

bb.k:                                             ; preds = %.thread34.i
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !95 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !88
  %i.ap = icmp eq i64 %storemerge27, %i.ao
  br i1 %i.ap, label %.loopexit, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.aq = icmp eq i64 %storemerge27, %i.at
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
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %.critedge.i
  store ptr null, ptr %i.aw, align 8, !tbaa !95
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %storemerge27, ptr %i.ax, align 8, !tbaa !88
  %i.ay = invoke ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %2, i64 noundef %i.av, i64 noundef %storemerge27, ptr noundef nonnull %i.aw, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ; 0 uses

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i: ; preds = %.noexc
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #27
  br label %.body

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.noexc
  %i.ba = add nuw i64 %storemerge27, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %umax54
  br i1 %exitcond.not, label %bb.g, label %thread-pre-split, !llvm.loop !989

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge.i, %bb.g
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !156 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %i.bb, %bb.n ] ; 2 uses
  %i.bc = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !95 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !10

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.n
  %i.bd = load ptr, ptr %2, align 8, !tbaa !152
  %i.be = load i64, ptr %i.h, align 8, !tbaa !153
  %i.bf = shl i64 %i.be, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bd, i8 0, i64 %i.bf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.bg = load ptr, ptr %2, align 8, !tbaa !152   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.g
  br i1 %i.bh, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.bg) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %i.aa, label %bb.b, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit..critedge_crit_edge, !llvm.loop !986

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i
  %.pn = phi { ptr, i32 } [ %i.az, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ], [ %lpad.loopexit.split-lp59, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
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
  %.sroa.0 = alloca i64, align 16                 ; 8 uses
  %.sroa.8 = alloca i64, align 8                  ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.duckdb::vector.63", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !338, !nonnull !268, !align !269 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !333
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !334
  %.not511 = icmp eq ptr %i.f, %i.g
  %.us-phi.sroa.gep837 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.us-phi.sroa.gep838 = getelementptr inbounds nuw i8, ptr %9, i64 8
  br i1 %.not511, label %.preheader330, label %.lr.ph

.preheader330:                                    ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit, %bb.a
  %.sroa.48.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.48.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.24.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.24.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %.sroa.0259.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0259.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ] ; 4 uses
  %i.h = ptrtoint ptr %.sroa.24.0.lcssa to i64    ; 2 uses
  %i.i = ptrtoint ptr %.sroa.0259.0.lcssa to i64  ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %.preheader329.lr.ph, label %._crit_edge509

.preheader329.lr.ph:                              ; preds = %.preheader330
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  br label %.preheader329

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit
  %i.t = phi ptr [ %i.au, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ %i.c, %bb.a ]
  %.0458 = phi i64 [ %i.at, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0259.0457 = phi ptr [ %.sroa.0259.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 9 uses
  %.sroa.24.0456 = phi ptr [ %.sroa.24.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 6 uses
  %.sroa.48.0455 = phi ptr [ %.sroa.48.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.u = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30
          to label %.noexc unwind label %.loopexit.split-lp339.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store i64 %.0458, ptr %i.u, align 8, !tbaa !88
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
  %.not.i.i81 = icmp eq ptr %.sroa.24.0456, %.sroa.48.0455
  br i1 %.not.i.i81, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.x to i64
  store i64 %i.ab, ptr %.sroa.24.0456, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = ptrtoint ptr %.sroa.24.0456 to i64
  %i.ad = ptrtoint ptr %.sroa.0259.0457 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.g, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc82 unwind label %.loopexit.split-lp339.loopexit.split-lp

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
          to label %.noexc83 unwind label %.loopexit.split-lp339.loopexit.split-lp ; 5 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = ptrtoint ptr %i.x to i64
  store i64 %i.ao, ptr %i.an, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0259.0457, %.sroa.24.0456
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc83, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %i.am, %.noexc83 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0259.0457, %.noexc83 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.ap = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1005
  store i64 %i.ap, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1004
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %.sroa.24.0456
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !39

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc83
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.am, %.noexc83 ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0259.0457, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.0457) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.e
  %.sroa.48.2 = phi ptr [ %i.as, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.48.0455, %bb.e ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.24.0456, %bb.e ]
  %.sroa.0259.3 = phi ptr [ %i.am, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0259.0457, %bb.e ] ; 2 uses
  %.sroa.24.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.at = add nuw i64 %.0458, 1                   ; 2 uses
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
  br i1 %i.bd, label %.lr.ph, label %.preheader330, !llvm.loop !994

.loopexit.split-lp339.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph, %bb.g
  %lpad.loopexit.split-lp823 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader329:                                    ; preds = %.preheader329.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165
  %i.be = phi i64 [ %i.k, %.preheader329.lr.ph ], [ %i.lb, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 8 uses
  %i.bf = phi i64 [ %i.i, %.preheader329.lr.ph ], [ %i.kz, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ]
  %i.bg = phi i64 [ %i.h, %.preheader329.lr.ph ], [ %i.ky, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ]
  %.sroa.0259.1507 = phi ptr [ %.sroa.0259.0.lcssa, %.preheader329.lr.ph ], [ %.sroa.0259.4, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 16 uses
  %.sroa.24.1506 = phi ptr [ %.sroa.24.0.lcssa, %.preheader329.lr.ph ], [ %.sroa.24.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 3 uses
  %.sroa.48.1505 = phi ptr [ %.sroa.48.0.lcssa, %.preheader329.lr.ph ], [ %.sroa.48.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 5 uses
  br label %bb.j

.loopexit324:                                     ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104, %bb.j
  %.1302.lcssa = phi i64 [ %.0301470, %bb.j ], [ %.2303, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0300471, %bb.j ], [ %.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %.sroa.0248.1.lcssa = phi ptr [ %.sroa.0248.0472, %bb.j ], [ %.sroa.0248.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %exitcond578.not = icmp eq i64 %i.bk, %i.be
  br i1 %exitcond578.not, label %bb.i, label %bb.j, !llvm.loop !995

bb.i:                                             ; preds = %.loopexit324
  %.not = icmp eq ptr %.sroa.0248.1.lcssa, null
  br i1 %.not, label %.split, label %bb.bk

bb.j:                                             ; preds = %.preheader329, %.loopexit324
  %.047473 = phi i64 [ 0, %.preheader329 ], [ %i.bk, %.loopexit324 ] ; 3 uses
  %.sroa.0248.0472 = phi ptr [ null, %.preheader329 ], [ %.sroa.0248.1.lcssa, %.loopexit324 ] ; 2 uses
  %.0300471 = phi i64 [ 0, %.preheader329 ], [ %.1.lcssa, %.loopexit324 ] ; 2 uses
  %.0301470 = phi i64 [ 0, %.preheader329 ], [ %.1302.lcssa, %.loopexit324 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1507, i64 %.047473
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = inttoptr i64 %i.bi to ptr               ; 5 uses
  %i.bk = add nuw i64 %.047473, 1                 ; 4 uses
  %i.bl = icmp ult i64 %i.bk, %i.be
  br i1 %i.bl, label %.lr.ph466, label %.loopexit324

.lr.ph466:                                        ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb14PlanEnumerator27SolveJoinOrderApproximatelyEv:bb.a
  br label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i, !llvm.loop !4

_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i: ; preds = %bb.p, %bb.m, %bb.o
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.m ], [ %i.cj, %bb.o ], [ %i.co, %bb.p ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !107 ; 2 uses
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %.noexc.i227, label %.noexc.i, !prof !103

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
  br i1 %i.du, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb14PlanEnumerator8EmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.not319 = icmp eq ptr %.sroa.0248.1463, null
  br i1 %.not319, label %bb.ac, label %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit

_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit: ; preds = %bb.ab
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !423
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0248.1463, i64 40
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !176
  %i.dy = fcmp olt double %.sroa.4.0.copyload, %i.dx
  br i1 %i.dy, label %bb.ac, label %thread-pre-split

bb.ac:                                            ; preds = %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit, %bb.ab
  %i.dz = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb14PlanEnumerator8EmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %thread-pre-split unwind label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %8, align 8, !tbaa !161   ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i102, label %.body99, label %.body99.sink.split

thread-pre-split:                                 ; preds = %bb.ac, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit
  %.2303.ph = phi i64 [ %.1302461, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit ], [ %.047473, %bb.ac ]
  %.2.ph = phi i64 [ %.1462, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit ], [ %.046464, %bb.ac ]
  %.sroa.0248.2.ph = phi ptr [ %.sroa.0248.1463, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit ], [ %i.dz, %bb.ac ]
  %.pr = load ptr, ptr %8, align 8, !tbaa !161
  br label %bb.ae

bb.ae:                                            ; preds = %thread-pre-split, %bb.z
  %i.ec = phi ptr [ %.pr, %thread-pre-split ], [ %i.ds, %bb.z ] ; 2 uses
  %.2303 = phi i64 [ %.2303.ph, %thread-pre-split ], [ %.1302461, %bb.z ] ; 2 uses
  %.2 = phi i64 [ %.2.ph, %thread-pre-split ], [ %.1462, %bb.z ] ; 2 uses
  %.sroa.0248.2 = phi ptr [ %.sroa.0248.2.ph, %thread-pre-split ], [ %.sroa.0248.1463, %bb.z ] ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef nonnull %i.ec) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.ed = add nuw i64 %.046464, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ed, %i.be
  br i1 %exitcond.not, label %.loopexit324, label %bb.k, !llvm.loop !998

.body99.sink.split:                               ; preds = %bb.ad, %_ZNSt14_Function_baseD2Ev.exit8.i
  %.sink = phi ptr [ %i.dr, %_ZNSt14_Function_baseD2Ev.exit8.i ], [ %i.eb, %bb.ad ]
  %.pn73.pn.ph = phi { ptr, i32 } [ %eh.lpad-body176, %_ZNSt14_Function_baseD2Ev.exit8.i ], [ %i.ea, %bb.ad ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #27
  br label %.body99

.body99:                                          ; preds = %.body99.sink.split, %bb.ad, %_ZNSt14_Function_baseD2Ev.exit8.i
  %.pn73.pn = phi { ptr, i32 } [ %eh.lpad-body176, %_ZNSt14_Function_baseD2Ev.exit8.i ], [ %i.ea, %bb.ad ], [ %.pn73.pn.ph, %.body99.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body

.split:                                           ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false), !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.ee = load ptr, ptr %.sroa.0259.1507, align 8, !tbaa !342 ; 3 uses
  %i.ef = ptrtoint ptr %i.ee to i64               ; 4 uses
  %i.eg = load i64, ptr %i.p, align 8, !tbaa !287 ; 4 uses
  %i.eh = urem i64 %i.ef, %i.eg                   ; 3 uses
  %i.ei = load ptr, ptr %i.o, align 8, !tbaa !286 ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i184, label %.loopexit.i, label %bb.ag

bb.ag:                                            ; preds = %.split
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !95 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !347
  %i.ep = icmp eq i64 %i.eo, %i.ef
  %i.eq = load ptr, ptr %i.em, align 8
  %i.er = icmp eq ptr %i.ee, %i.eq
  %i.es = select i1 %i.ep, i1 %i.er, i1 false
  br i1 %i.es, label %.loopexit323, label %.lr.ph.i.i.i

bb.ah:                                            ; preds = %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.eu = icmp eq i64 %i.fa, %i.ef
  %i.ev = load ptr, ptr %i.et, align 8
  %i.ew = icmp eq ptr %i.ee, %i.ev
  %i.ex = select i1 %i.eu, i1 %i.ew, i1 false
  br i1 %i.ex, label %.loopexit323, label %.lr.ph.i.i.i, !llvm.loop !28

.lr.ph.i.i.i:                                     ; preds = %bb.ag, %bb.ah
  %.020.i.i.i = phi ptr [ %i.ey, %bb.ah ], [ %i.el, %bb.ag ]
  %i.ey = load ptr, ptr %.020.i.i.i, align 8, !tbaa !95 ; 5 uses
  %.not18.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not18.i.i.i, label %.loopexit.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !347 ; 2 uses
  %i.fb = urem i64 %i.fa, %i.eg
  %.not19.i.i.i = icmp eq i64 %i.fb, %i.eh
  br i1 %.not19.i.i.i, label %bb.ah, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !28

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.ai
  br label %.loopexit.i, !llvm.loop !28

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.o, ptr %4, align 8, !tbaa !447
  %i.fc = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %.noexc185 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc185:                                        ; preds = %.loopexit.i
  store ptr null, ptr %i.fc, align 8, !tbaa !95
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i64, ptr %.sroa.0259.1507, align 8
  store i64 %i.fe, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store ptr null, ptr %i.ff, align 8, !tbaa !449
  store ptr %i.fc, ptr %i.q, align 8, !tbaa !450
  %i.fg = invoke ptr @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 noundef %i.eh, i64 noundef %i.ef, ptr noundef nonnull %i.fc, i64 noundef 1)
          to label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i unwind label %bb.aj

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %.noexc185
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.pre = load i64, ptr %i.p, align 8, !tbaa !287
  %.pre580 = load ptr, ptr %i.o, align 8, !tbaa !286
  br label %.loopexit323

bb.aj:                                            ; preds = %.noexc185.1, %.noexc185
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.body112

.loopexit323:                                     ; preds = %bb.ah, %bb.ag, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i
  %i.fi = phi ptr [ %.pre580, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.ei, %bb.ag ], [ %i.ei, %bb.ah ]
  %i.fj = phi i64 [ %.pre, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.eg, %bb.ag ], [ %i.eg, %bb.ah ] ; 2 uses
  %.pn.i = phi ptr [ %i.fg, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.el, %bb.ag ], [ %i.ey, %bb.ah ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.fk = load ptr, ptr %.1.i, align 8, !tbaa !290
  %i.fl = ptrtoint ptr %i.fk to i64
  store i64 %i.fl, ptr %9, align 16, !tbaa !290
  store i64 0, ptr %.sroa.0, align 16, !tbaa !88
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0259.1507, i64 8 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !342 ; 3 uses
  %i.fo = ptrtoint ptr %i.fn to i64               ; 4 uses
  %i.fp = urem i64 %i.fo, %i.fj                   ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i184.1 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i184.1, label %.loopexit.i.1, label %bb.ak

bb.ak:                                            ; preds = %.loopexit323
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !95 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !347
  %i.fw = icmp eq i64 %i.fv, %i.fo
  %i.fx = load ptr, ptr %i.ft, align 8
  %i.fy = icmp eq ptr %i.fn, %i.fx
  %i.fz = select i1 %i.fw, i1 %i.fy, i1 false
  br i1 %i.fz, label %.loopexit323.1, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.ak, %bb.am
  %.020.i.i.i.1 = phi ptr [ %i.ga, %bb.am ], [ %i.fs, %bb.ak ]
  %i.ga = load ptr, ptr %.020.i.i.i.1, align 8, !tbaa !95 ; 5 uses
  %.not18.i.i.i.1 = icmp eq ptr %i.ga, null
  br i1 %.not18.i.i.i.1, label %.loopexit.i.1, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !347 ; 2 uses
  %i.gd = urem i64 %i.gc, %i.fj
  %.not19.i.i.i.1 = icmp eq i64 %i.gd, %i.fp
  br i1 %.not19.i.i.i.1, label %bb.am, label %..loopexit_crit_edge21.i.i.i.1, !llvm.loop !28

..loopexit_crit_edge21.i.i.i.1:                   ; preds = %bb.al
  br label %.loopexit.i.1, !llvm.loop !28

bb.am:                                            ; preds = %bb.al
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gf = icmp eq i64 %i.gc, %i.fo
  %i.gg = load ptr, ptr %i.ge, align 8
  %i.gh = icmp eq ptr %i.fn, %i.gg
  %i.gi = select i1 %i.gf, i1 %i.gh, i1 false
  br i1 %i.gi, label %.loopexit323.1, label %.lr.ph.i.i.i.1, !llvm.loop !28

.loopexit.i.1:                                    ; preds = %.lr.ph.i.i.i.1, %..loopexit_crit_edge21.i.i.i.1, %.loopexit323
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.o, ptr %4, align 8, !tbaa !447
  %i.gj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %.noexc185.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc185.1:                                      ; preds = %.loopexit.i.1
  store ptr null, ptr %i.gj, align 8, !tbaa !95
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i64, ptr %i.fm, align 8
  store i64 %i.gl, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store ptr null, ptr %i.gm, align 8, !tbaa !449
  store ptr %i.gj, ptr %i.q, align 8, !tbaa !450
  %i.gn = invoke ptr @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 noundef %i.fp, i64 noundef %i.fo, ptr noundef nonnull %i.gj, i64 noundef 1)
          to label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.1 unwind label %bb.aj

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.1: ; preds = %.noexc185.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit323.1

.loopexit323.1:                                   ; preds = %bb.am, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.1, %bb.ak
  %.pn.i.1 = phi ptr [ %i.gn, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.1 ], [ %i.fs, %bb.ak ], [ %i.ga, %bb.am ]
  %.1.i.1 = getelementptr inbounds nuw i8, ptr %.pn.i.1, i64 16
  %i.go = load ptr, ptr %.1.i.1, align 8, !tbaa !290 ; 2 uses
  %i.gp = ptrtoint ptr %i.go to i64
  store i64 %i.gp, ptr %i.s, align 8, !tbaa !290
  store i64 1, ptr %.sroa.8, align 8, !tbaa !88
  %i.gq = icmp ugt i64 %i.be, 2
  br i1 %i.gq, label %.lr.ph504, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre581 = load ptr, ptr %i.s, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit323.1
  %i.gr = phi ptr [ %.pre581, %._crit_edge.loopexit ], [ %i.go, %.loopexit323.1 ]
  %i.gs = load ptr, ptr %9, align 16, !tbaa !443
  %.not316 = icmp eq ptr %i.gs, null
  %.not317 = icmp eq ptr %i.gr, null
  %or.cond = select i1 %.not316, i1 true, i1 %.not317
  br i1 %or.cond, label %bb.aw, label %bb.bb

.lr.ph504:                                        ; preds = %.loopexit323.1, %.loopexit
  %.044503 = phi i64 [ %i.iq, %.loopexit ], [ 2, %.loopexit323.1 ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1507, i64 %.044503 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !342 ; 3 uses
  %i.gv = ptrtoint ptr %i.gu to i64               ; 4 uses
  %i.gw = load i64, ptr %i.p, align 8, !tbaa !287 ; 2 uses
  %i.gx = urem i64 %i.gv, %i.gw                   ; 3 uses
  %i.gy = load ptr, ptr %i.o, align 8, !tbaa !286
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gx
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !127 ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i192, label %.loopexit.i198, label %bb.an

bb.an:                                            ; preds = %.lr.ph504
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !95 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !347
  %i.hf = icmp eq i64 %i.he, %i.gv
  %i.hg = load ptr, ptr %i.hc, align 8
  %i.hh = icmp eq ptr %i.gu, %i.hg
  %i.hi = select i1 %i.hf, i1 %i.hh, i1 false
  br i1 %i.hi, label %.loopexit322, label %.lr.ph.i.i.i193

bb.ao:                                            ; preds = %bb.ap
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hk = icmp eq i64 %i.hq, %i.gv
  %i.hl = load ptr, ptr %i.hj, align 8
  %i.hm = icmp eq ptr %i.gu, %i.hl
  %i.hn = select i1 %i.hk, i1 %i.hm, i1 false
  br i1 %i.hn, label %.loopexit322, label %.lr.ph.i.i.i193, !llvm.loop !28

.lr.ph.i.i.i193:                                  ; preds = %bb.an, %bb.ao
  %.020.i.i.i194 = phi ptr [ %i.ho, %bb.ao ], [ %i.hb, %bb.an ]
  %i.ho = load ptr, ptr %.020.i.i.i194, align 8, !tbaa !95 ; 5 uses
  %.not18.i.i.i195 = icmp eq ptr %i.ho, null
  br i1 %.not18.i.i.i195, label %.loopexit.i198, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i193
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !347 ; 2 uses
  %i.hr = urem i64 %i.hq, %i.gw
  %.not19.i.i.i196 = icmp eq i64 %i.hr, %i.gx
  br i1 %.not19.i.i.i196, label %bb.ao, label %..loopexit_crit_edge21.i.i.i197, !llvm.loop !28

..loopexit_crit_edge21.i.i.i197:                  ; preds = %bb.ap
  br label %.loopexit.i198, !llvm.loop !28

.loopexit.i198:                                   ; preds = %.lr.ph.i.i.i193, %..loopexit_crit_edge21.i.i.i197, %.lr.ph504
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.o, ptr %3, align 8, !tbaa !447
  %i.hs = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %.noexc202 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc202:                                        ; preds = %.loopexit.i198
  store ptr null, ptr %i.hs, align 8, !tbaa !95
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load i64, ptr %i.gt, align 8
  store i64 %i.hu, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store ptr null, ptr %i.hv, align 8, !tbaa !449
  store ptr %i.hs, ptr %i.r, align 8, !tbaa !450
  %i.hw = invoke ptr @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 noundef %i.gx, i64 noundef %i.gv, ptr noundef nonnull %i.hs, i64 noundef 1)
          to label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i199 unwind label %bb.aq

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i199: ; preds = %.noexc202
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit322

bb.aq:                                            ; preds = %.noexc202
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.body112

.loopexit322:                                     ; preds = %bb.ao, %bb.an, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i199
  %.pn.i200 = phi ptr [ %i.hw, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i199 ], [ %i.hb, %bb.an ], [ %i.ho, %bb.ao ]
  %.1.i201 = getelementptr inbounds nuw i8, ptr %.pn.i200, i64 16
  %i.hy = load ptr, ptr %.1.i201, align 8, !tbaa !290
  %.fr = freeze ptr %i.hy                         ; 3 uses
  %.not.i216 = icmp eq ptr %.fr, null
  %i.hz = getelementptr inbounds nuw i8, ptr %.fr, i64 40
  %i.ia = load ptr, ptr %9, align 16, !tbaa !443  ; 2 uses
  %.not318.us = icmp eq ptr %i.ia, null           ; 2 uses
  br i1 %.not.i216, label %.split476.us, label %.split476.preheader

.split476.preheader:                              ; preds = %.loopexit322
  br i1 %.not318.us, label %.split478.us, label %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129

.split476.us:                                     ; preds = %.loopexit322
  br i1 %.not318.us, label %.split478.us, label %.split481.us

_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129: ; preds = %.split476.preheader
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !176
  %i.id = load double, ptr %i.hz, align 8, !tbaa !176 ; 2 uses
  %i.ie = fcmp ogt double %i.ic, %i.id
  br i1 %i.ie, label %.split478.us, label %.split476.1

.split481.us:                                     ; preds = %.split476.us
  %i.if = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i217

bb.ar:                                            ; preds = %.split481.us
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.if, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.if, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.av unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i217: ; preds = %.split481.us
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0.i220 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ii = load ptr, ptr %1, align 8, !tbaa !90    ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.ii) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i220, label %bb.au, label %.body112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i220, label %bb.au, label %.body112

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i217
  %.pn9.i218 = phi { ptr, i32 } [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i217 ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222 ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221 ]
  call void @__cxa_free_exception(ptr %i.if) #28
  br label %.body112

bb.av:                                            ; preds = %bb.as
  unreachable

.split478.us:                                     ; preds = %.split476.preheader, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129, %.split476.1, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1, %.split476.us
  %.us-phi.sroa.phi = phi ptr [ %.sroa.0, %.split476.us ], [ %.sroa.0, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129 ], [ %.sroa.0, %.split476.preheader ], [ %.sroa.8, %.split476.1 ], [ %.sroa.8, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1 ]
  %.us-phi.sroa.phi834 = phi ptr [ %9, %.split476.us ], [ %9, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129 ], [ %9, %.split476.preheader ], [ %.us-phi.sroa.gep837, %.split476.1 ], [ %.us-phi.sroa.gep838, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1 ]
  %i.il = ptrtoint ptr %.fr to i64
  store i64 %i.il, ptr %.us-phi.sroa.phi834, align 8, !tbaa !290
  store i64 %.044503, ptr %.us-phi.sroa.phi, align 8, !tbaa !88
  br label %.loopexit

.split476.1:                                      ; preds = %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129
  %i.im = load ptr, ptr %i.s, align 8, !tbaa !443 ; 2 uses
  %.not318.1 = icmp eq ptr %i.im, null
  br i1 %.not318.1, label %.split478.us, label %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1

_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1: ; preds = %.split476.1
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 40
  %i.io = load double, ptr %i.in, align 8, !tbaa !176
  %i.ip = fcmp ogt double %i.io, %i.id
  br i1 %i.ip, label %.split478.us, label %.loopexit

.loopexit:                                        ; preds = %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1, %.split478.us
  %i.iq = add nuw i64 %.044503, 1                 ; 2 uses
  %exitcond579.not = icmp eq i64 %i.iq, %i.be
  br i1 %exitcond579.not, label %._crit_edge.loopexit, label %.lr.ph504, !llvm.loop !999

bb.aw:                                            ; preds = %._crit_edge
  %i.ir = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ax unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_throw(ptr nonnull %i.ir, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.cb unwind label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aw
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.041 = phi i1 [ false, %bb.ay ], [ true, %bb.ax ] ; 2 uses
  %i.it = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.iu = load ptr, ptr %10, align 8, !tbaa !90   ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.az
  call void @_ZdlPv(ptr noundef %i.iu) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %.041, label %bb.ba, label %.body112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %.041, label %bb.ba, label %.body112

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn308 = phi { ptr, i32 } [ %i.is, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ir) #28
  br label %.body112

bb.bb:                                            ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_10DPJoinNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  %i.ix = load ptr, ptr %9, align 16, !tbaa !443
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !428, !nonnull !268, !align !269 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10DPJoinNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.iz = load ptr, ptr %i.s, align 8, !tbaa !443
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !428, !nonnull !268, !align !269 ; 4 uses
  %i.jb = load ptr, ptr %i.b, align 8, !tbaa !338, !nonnull !268, !align !269
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 272 ; 2 uses
  invoke void @_ZN6duckdb15QueryGraphEdges10CreateEdgeERNS_15JoinRelationSetES2_NS_12optional_ptrINS_10FilterInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.jc, ptr noundef nonnull align 8 dereferenceable(16) %i.iy, ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr null)
          to label %.noexc136 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc136:                                        ; preds = %bb.bd
  invoke void @_ZN6duckdb15QueryGraphEdges10CreateEdgeERNS_15JoinRelationSetES2_NS_12optional_ptrINS_10FilterInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.jc, ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(16) %i.iy, ptr null)
          to label %_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit: ; preds = %.noexc136
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.jd = load ptr, ptr %0, align 8, !tbaa !430, !nonnull !268, !align !269
  invoke void @_ZNK6duckdb15QueryGraphEdges14GetConnectionsERNS_15JoinRelationSetES2_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.63") align 8 %12, ptr noundef nonnull align 8 dereferenceable(80) %i.jd, ptr noundef nonnull align 8 dereferenceable(16) %i.iy, ptr noundef nonnull align 8 dereferenceable(16) %i.ja)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit
  %i.je = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb14PlanEnumerator8EmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.iy, ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.bf unwind label %bb.bh     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %.sroa.0.0..sroa.0.0. = load i64, ptr %.sroa.0, align 16, !tbaa !88 ; 2 uses
  %.sroa.8.0..sroa.8.8. = load i64, ptr %.sroa.8, align 8, !tbaa !88 ; 2 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %.sroa.0.0..sroa.0.0., i64 %.sroa.8.0..sroa.8.8.)
  %spec.select315 = call i64 @llvm.umax.i64(i64 %.sroa.0.0..sroa.0.0., i64 %.sroa.8.0..sroa.8.8.)
  %i.jf = load ptr, ptr %12, align 8, !tbaa !161  ; 2 uses
  %.not.i.i.i140 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141, label %bb.bj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i198, %bb.bb, %bb.bc, %bb.bd, %.noexc136, %.loopexit.i.1, %.loopexit.i
  %lpad.loopexit.split-lp771 = landingpad { ptr, i32 }
          cleanup
  br label %.body112

bb.bg:                                            ; preds = %_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139

bb.bh:                                            ; preds = %bb.be
  %i.jh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ji = load ptr, ptr %12, align 8, !tbaa !161  ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdlPv(ptr noundef nonnull %i.ji) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139

bb.bj:                                            ; preds = %bb.bf
  call void @_ZdlPv(ptr noundef nonnull %i.jf) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141: ; preds = %bb.bf, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bk

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139: ; preds = %bb.bi, %bb.bh, %bb.bg
  %.pn63 = phi { ptr, i32 } [ %i.jg, %bb.bg ], [ %i.jh, %bb.bh ], [ %i.jh, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.body112

.body112:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222, %bb.au, %bb.aq, %bb.aj, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ba
  %.pn69 = phi { ptr, i32 } [ %.pn63, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139 ], [ %i.fh, %bb.aj ], [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn308, %bb.ba ], [ %i.hx, %bb.aq ], [ %.pn9.i218, %bb.au ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222 ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221 ], [ %i.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp771, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body

bb.bk:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141, %bb.i
  %.4305 = phi i64 [ %.1302.lcssa, %bb.i ], [ %spec.select, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141 ] ; 3 uses
  %.4 = phi i64 [ %.1.lcssa, %bb.i ], [ %spec.select315, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141 ] ; 3 uses
  %i.jj = load ptr, ptr %i.b, align 8, !tbaa !338, !nonnull !268, !align !269
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 144
  %.not.i.i142 = icmp ult i64 %.4305, %i.be
  br i1 %.not.i.i142, label %bb.bl, label %.invoke

.invoke:                                          ; preds = %bb.bl, %bb.bk
  %i.jl = phi i64 [ %.4305, %bb.bk ], [ %.4, %bb.bl ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.jl, i64 noundef %i.be) #29
          to label %.cont unwind label %.loopexit.split-lp332

.cont:                                            ; preds = %.invoke
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1507, i64 %.4305 ; 4 uses
  %.not.i.i144 = icmp ult i64 %.4, %i.be
  br i1 %.not.i.i144, label %bb.bm, label %.invoke

bb.bm:                                            ; preds = %bb.bl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !342
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1507, i64 %.4 ; 4 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !342
  %i.jq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %i.jk, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(16) %i.jp)
          to label %bb.bn unwind label %.body.thread.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 4 uses
  %.not.i.i147 = icmp eq ptr %i.jr, %.sroa.24.1506
  br i1 %.not.i.i147, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = sub i64 %i.bg, %i.js                    ; 3 uses
  %i.ju = icmp sgt i64 %i.jt, 8
  br i1 %i.ju, label %bb.bp, label %bb.bq, !prof !105

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jo, ptr nonnull align 8 %i.jr, i64 %i.jt, i1 false)
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.jv = icmp eq i64 %i.jt, 8
  br i1 %i.jv, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i64, ptr %i.jr, align 8
  store i64 %i.jw, ptr %i.jo, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bn
  %i.jx = getelementptr inbounds i8, ptr %.sroa.24.1506, i64 -8 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 4 uses
  %.not.i.i148 = icmp eq ptr %i.jy, %i.jx
  br i1 %.not.i.i148, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka                    ; 3 uses
  %i.kc = icmp sgt i64 %i.kb, 8
  br i1 %i.kc, label %bb.bu, label %bb.bv, !prof !105

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jm, ptr nonnull align 8 %i.jy, i64 %i.kb, i1 false)
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  %i.kd = icmp eq i64 %i.kb, 8
  br i1 %i.kd, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ke = load i64, ptr %i.jy, align 8
  store i64 %i.ke, ptr %i.jm, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bs
  %i.kf = getelementptr inbounds i8, ptr %.sroa.24.1506, i64 -16 ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.kf, %.sroa.48.1505
  br i1 %.not.i.i150, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kg = ptrtoint ptr %i.jq to i64
  store i64 %i.kg, ptr %i.kf, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165

bb.bz:                                            ; preds = %bb.bx
  %i.kh = ptrtoint ptr %.sroa.48.1505 to i64
  %i.ki = sub i64 %i.kh, %i.bf                    ; 3 uses
  %i.kj = icmp eq i64 %i.ki, 9223372036854775800
  br i1 %i.kj, label %bb.ca, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc163 unwind label %.body.thread.loopexit.split-lp.loopexit.split-lp

.noexc163:                                        ; preds = %bb.ca
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151: ; preds = %bb.bz
  %i.kk = ashr exact i64 %i.ki, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i152 = call i64 @llvm.umax.i64(i64 %i.kk, i64 1)
  %i.kl = add nsw i64 %.sroa.speculated.i.i.i.i152, %i.kk ; 2 uses
  %i.km = icmp ult i64 %i.kl, %i.kk
  %i.kn = call i64 @llvm.umin.i64(i64 %i.kl, i64 1152921504606846975)
  %i.ko = select i1 %i.km, i64 1152921504606846975, i64 %i.kn ; 3 uses
  %.not.i.i.i.i153 = icmp ne i64 %i.ko, 0
  call void @llvm.assume(i1 %.not.i.i.i.i153)
  %i.kp = shl nuw nsw i64 %i.ko, 3
  %i.kq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kp) #30
          to label %.noexc164 unwind label %.body.thread.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc164:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.ki
  %i.ks = ptrtoint ptr %i.jq to i64
  store i64 %i.ks, ptr %i.kr, align 8
  %.not10.i.i.i.i.i.i.i154 = icmp eq ptr %.sroa.0259.1507, %.sroa.48.1505
  br i1 %.not10.i.i.i.i.i.i.i154, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, label %.lr.ph.i.i.i.i.i.i.i155

.lr.ph.i.i.i.i.i.i.i155:                          ; preds = %.noexc164, %.lr.ph.i.i.i.i.i.i.i155
  %.012.i.i.i.i.i.i.i156 = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i.i.i155 ], [ %i.kq, %.noexc164 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i157 = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i.i.i155 ], [ %.sroa.0259.1507, %.noexc164 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.kt = load i64, ptr %.0911.i.i.i.i.i.i.i157, align 8, !alias.scope !1008
  store i64 %i.kt, ptr %.012.i.i.i.i.i.i.i156, align 8, !alias.scope !1007
  %i.ku = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i157, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i156, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i158 = icmp eq ptr %i.ku, %.sroa.48.1505
  br i1 %.not.i.i.i.i.i.i.i158, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, label %.lr.ph.i.i.i.i.i.i.i155, !llvm.loop !39

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162: ; preds = %.lr.ph.i.i.i.i.i.i.i155, %.noexc164
  %.0.lcssa.i.i.i.i.i.i.i160 = phi ptr [ %i.kq, %.noexc164 ], [ %i.kv, %.lr.ph.i.i.i.i.i.i.i155 ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i160, i64 8
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.1507) #27
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.ko
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, %bb.by
  %.sroa.48.3 = phi ptr [ %i.kx, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162 ], [ %.sroa.48.1505, %bb.by ]
  %.sroa.24.3 = phi ptr [ %i.kw, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162 ], [ %i.jx, %bb.by ] ; 2 uses
  %.sroa.0259.4 = phi ptr [ %i.kq, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162 ], [ %.sroa.0259.1507, %bb.by ] ; 3 uses
  %i.ky = ptrtoint ptr %.sroa.24.3 to i64         ; 2 uses
  %i.kz = ptrtoint ptr %.sroa.0259.4 to i64       ; 2 uses
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = ashr exact i64 %i.la, 3                 ; 2 uses
  %i.lc = icmp ugt i64 %i.lb, 1
  br i1 %i.lc, label %.preheader329, label %._crit_edge509.thread, !llvm.loop !1003

.loopexit.split-lp332:                            ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body.thread.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151, %bb.bm, %bb.ca
  %lpad.loopexit.split-lp773 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

._crit_edge509:                                   ; preds = %.preheader330
  %.not.i.i.i166 = icmp eq ptr %.sroa.0259.0.lcssa, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit, label %._crit_edge509.thread

._crit_edge509.thread:                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165, %._crit_edge509
  %.sroa.0259.1.lcssa629 = phi ptr [ %.sroa.0259.0.lcssa, %._crit_edge509 ], [ %.sroa.0259.4, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.1.lcssa629) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit: ; preds = %._crit_edge509, %._crit_edge509.thread
  ret void

.body:                                            ; preds = %.loopexit.split-lp332, %.loopexit.split-lp339.loopexit.split-lp, %.body112, %.body99, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i, %bb.c
  %.sroa.0259.2 = phi ptr [ %.sroa.0259.1507, %.body99 ], [ %.sroa.0259.0457, %bb.c ], [ %.sroa.0259.0457, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i ], [ %.sroa.0259.1507, %.body112 ], [ %.sroa.0259.0457, %.loopexit.split-lp339.loopexit.split-lp ], [ %.sroa.0259.1507, %.loopexit.split-lp332 ] ; 2 uses
  %.pn79 = phi { ptr, i32 } [ %.pn73.pn, %.body99 ], [ %i.z, %bb.c ], [ %i.z, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i ], [ %.pn69, %.body112 ], [ %lpad.loopexit.split-lp823, %.loopexit.split-lp339.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp332 ] ; 2 uses
  %.not.i.i.i167 = icmp eq ptr %.sroa.0259.2, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit168, label %.body.thread

.body.thread:                                     ; preds = %.body.thread.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn79313 = phi { ptr, i32 } [ %.pn79, %.body ], [ %lpad.loopexit.split-lp773, %.body.thread.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0259.2312 = phi ptr [ %.sroa.0259.2, %.body ], [ %.sroa.0259.1507, %.body.thread.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.2312) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit168

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EED2Ev.exit168: ; preds = %.body, %.body.thread
  %.pn79314 = phi { ptr, i32 } [ %.pn79, %.body ], [ %.pn79313, %.body.thread ]
  resume { ptr, i32 } %.pn79314

bb.cb:                                            ; preds = %bb.ay
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb17QueryGraphManager17GetFilterBindingsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(352) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
end_hunk_1
