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
  %i.t = call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30, !noalias !1006 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !86
  %i.u = ptrtoint ptr %i.t to i64
  store i64 %i.u, ptr %1, align 8, !tbaa !102
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull %1, i64 noundef 1)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN6duckdb22JoinRelationSetManager15GetJoinRelationEm.exit, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.w) #27
  br label %_ZN6duckdb22JoinRelationSetManager15GetJoinRelationEm.exit

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
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
  store ptr %i.g, ptr %2, align 8, !tbaa !150
  store i64 1, ptr %i.h, align 8, !tbaa !151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.aa = invoke noundef zeroext i1 @_ZN6duckdb14PlanEnumerator21EnumerateCSGRecursiveERNS_15JoinRelationSetERSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

thread-pre-split:                                 ; preds = %.loopexit
  %.pr = load i64, ptr %i.l, align 8, !tbaa !167
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.f
  %i.ab = phi i64 [ %.pr, %thread-pre-split ], [ 0, %bb.f ]
  %storemerge27 = phi i64 [ %i.ba, %thread-pre-split ], [ 0, %bb.f ] ; 8 uses
  %.not.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.not.i, label %.preheader, label %.thread34.i

.thread34.i:                                      ; preds = %bb.h
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !151 ; 2 uses
  %i.ad = urem i64 %storemerge27, %i.ac           ; 5 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !150
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %.critedge.i, label %bb.k

.preheader:                                       ; preds = %bb.h, %bb.i
  %.sroa.028.0.in.i = phi ptr [ %.sroa.028.0.i, %bb.i ], [ %i.i, %bb.h ]
  %.sroa.028.0.i = load ptr, ptr %.sroa.028.0.in.i, align 8, !tbaa !93 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.028.0.i, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !86
  %i.aj = icmp eq i64 %storemerge27, %i.ai
  br i1 %i.aj, label %.loopexit, label %.preheader, !llvm.loop !40

bb.j:                                             ; preds = %.preheader
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !151
  %i.al = urem i64 %storemerge27, %i.ak
  br label %.critedge.i

bb.k:                                             ; preds = %.thread34.i
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !93 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !86
  %i.ap = icmp eq i64 %storemerge27, %i.ao
  br i1 %i.ap, label %.loopexit, label %.lr.ph.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.aq = icmp eq i64 %storemerge27, %i.at
  br i1 %i.aq, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !41

.lr.ph.i.i.i:                                     ; preds = %bb.k, %bb.l
  %.020.i.i.i = phi ptr [ %i.ar, %bb.l ], [ %i.am, %bb.k ]
  %i.ar = load ptr, ptr %.020.i.i.i, align 8, !tbaa !93 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not18.i.i.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !86 ; 2 uses
  %i.au = urem i64 %i.at, %i.ac
  %.not19.i.i.i = icmp eq i64 %i.au, %i.ad
  br i1 %.not19.i.i.i, label %bb.l, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !41

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.m
  br label %.critedge.i, !llvm.loop !41

.critedge.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %bb.j, %.thread34.i
  %i.av = phi i64 [ %i.al, %bb.j ], [ %i.ad, %.thread34.i ], [ %i.ad, %..loopexit_crit_edge21.i.i.i ], [ %i.ad, %.lr.ph.i.i.i ]
  %i.aw = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %.critedge.i
  store ptr null, ptr %i.aw, align 8, !tbaa !93
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %storemerge27, ptr %i.ax, align 8, !tbaa !86
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
  br i1 %exitcond.not, label %bb.g, label %thread-pre-split, !llvm.loop !1005

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge.i, %bb.g
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !154 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %i.bb, %bb.n ] ; 2 uses
  %i.bc = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !93 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.n
  %i.bd = load ptr, ptr %2, align 8, !tbaa !150
  %i.be = load i64, ptr %i.h, align 8, !tbaa !151
  %i.bf = shl i64 %i.be, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bd, i8 0, i64 %i.bf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.bg = load ptr, ptr %2, align 8, !tbaa !150   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.g
  br i1 %i.bh, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.bg) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %i.aa, label %bb.b, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit..critedge_crit_edge, !llvm.loop !1002

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i
  %.pn = phi { ptr, i32 } [ %i.az, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ], [ %lpad.loopexit.split-lp59, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit..critedge_crit_edge: ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  br label %.critedge, !llvm.loop !1002

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !336, !nonnull !266, !align !267 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !331
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !332
  %.not511 = icmp eq ptr %i.f, %i.g
  %.us-phi.sroa.gep865 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.us-phi.sroa.gep866 = getelementptr inbounds nuw i8, ptr %9, i64 8
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
  %i.t = phi ptr [ %i.bh, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ %i.c, %bb.a ]
  %.0458 = phi i64 [ %i.bg, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0259.0457 = phi ptr [ %.sroa.0259.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 11 uses
  %.sroa.24.0456 = phi ptr [ %.sroa.24.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 6 uses
  %.sroa.48.0455 = phi ptr [ %.sroa.48.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.u = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30
          to label %.noexc unwind label %.loopexit.split-lp339.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store i64 %.0458, ptr %i.u, align 8, !tbaa !86
  %i.w = ptrtoint ptr %i.u to i64
  store i64 %i.w, ptr %7, align 8, !tbaa !102
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull %7, i64 noundef 1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %7, align 8, !tbaa !102    ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #27
  br label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
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
  %i.ac = ptrtoint ptr %.sroa.24.0456 to i64      ; 2 uses
  %i.ad = ptrtoint ptr %.sroa.0259.0457 to i64    ; 3 uses
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
          to label %.noexc83 unwind label %.loopexit.split-lp339.loopexit.split-lp ; 8 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = ptrtoint ptr %i.x to i64
  store i64 %i.ao, ptr %i.an, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0259.0457, %.sroa.24.0456
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc83
  %i.ap = ptrtoaddr ptr %i.am to i64
  %i.aq = add i64 %i.ac, -8
  %i.ar = sub i64 %i.aq, %i.ad                    ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 24
  %i.au = sub i64 %i.ad, %i.ap
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond793 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond793, label %.lr.ph.i.i.i.i.i.i.i.preheader849, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %.sroa.0259.0457, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.ay ; 2 uses
  %next.gep769 = getelementptr i8, ptr %.sroa.0259.0457, i64 %i.ay ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %i.az = getelementptr i8, ptr %next.gep769, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep769, align 8, !alias.scope !1025
  %wide.load770 = load <2 x i64>, ptr %i.az, align 8, !alias.scope !1025
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1024
  store <2 x i64> %wide.load770, ptr %i.ba, align 8, !alias.scope !1024
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1010

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader849

.lr.ph.i.i.i.i.i.i.i.preheader849:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0259.0457, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader849, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader849 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader849 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1025
  store i64 %i.bc, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1024
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %.sroa.24.0456
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1011

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc83
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.am, %.noexc83 ], [ %i.aw, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0259.0457, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.0457) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.e
  %.sroa.48.2 = phi ptr [ %i.bf, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.48.0455, %bb.e ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.24.0456, %bb.e ]
  %.sroa.0259.3 = phi ptr [ %i.am, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0259.0457, %bb.e ] ; 2 uses
  %.sroa.24.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.bg = add nuw i64 %.0458, 1                   ; 2 uses
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !336, !nonnull !266, !align !267 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !331
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !332
  %i.bm = ptrtoint ptr %i.bk to i64
end_hunk_0
begin_hunk_1_@_ZN6duckdb14PlanEnumerator27SolveJoinOrderApproximatelyEv:bb.a
  br label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i, !llvm.loop !4

_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i: ; preds = %bb.p, %bb.m, %bb.o
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.m ], [ %i.cw, %bb.o ], [ %i.db, %bb.p ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !105 ; 2 uses
  %.not.i = icmp eq ptr %i.dg, null
  br i1 %.not.i, label %.noexc.i227, label %.noexc.i, !prof !101

.noexc.i227:                                      ; preds = %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i
  %i.dh = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.di, ptr %5, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 49, ptr %i.a, align 8, !tbaa !86
  %i.dj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc228 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc228:                                        ; preds = %.noexc.i227
  store ptr %i.dj, ptr %5, align 8, !tbaa !88
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !86  ; 3 uses
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.dj, ptr noundef nonnull align 1 dereferenceable(49) @.str.33, i64 49, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !83
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  store i8 0, ptr %i.dm, align 1, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc228
  invoke void @__cxa_throw(ptr nonnull %i.dh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.u unwind label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i227
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %.noexc228
  %.0.i.i = phi i1 [ false, %bb.r ], [ true, %.noexc228 ] ; 2 uses
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dp = load ptr, ptr %5, align 8, !tbaa !88    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.di
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.dp) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i, label %bb.t, label %.body175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0.i.i, label %bb.t, label %.body175

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.dh) #28
  br label %.body175

bb.u:                                             ; preds = %bb.r
  unreachable

.noexc.i:                                         ; preds = %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i
  %i.dr = add nuw i64 %.017.i.i, 1
  invoke void @_ZNK6duckdb15QueryGraphEdges21EnumerateNeighborsDFSERNS_15JoinRelationSetESt17reference_wrapperINS0_9QueryEdgeEEmRKSt8functionIFbRNS_12NeighborInfoEEE(ptr noundef nonnull readonly align 8 dereferenceable(80) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bw, ptr nonnull %i.dg, i64 noundef %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc5.i unwind label %bb.w

.noexc5.i:                                        ; preds = %.noexc.i
  %.pre.i.i = load i64, ptr %i.bz, align 8, !tbaa !116, !noalias !1026
  br label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i

_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.preheader.i, %.noexc5.i, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.n
  %i.ds = phi i64 [ %i.cj, %.preheader.i ], [ %.pre.i.i, %.noexc5.i ], [ %i.cj, %bb.n ], [ %i.cj, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ %i.cj, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.dt = add nuw i64 %.017.i.i, 1                ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  br i1 %i.du, label %bb.l, label %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.i, !llvm.loop !8

_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.i: ; preds = %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i
  %.pr.i = load ptr, ptr %i.m, align 8, !tbaa !146, !noalias !1026 ; 2 uses
  %.not.i6.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i6.i, label %bb.z, label %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.thread.i

_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.thread.i: ; preds = %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.i, %bb.k
  %i.dv = phi ptr [ %.pr.i, %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.i ], [ @"_ZNSt17_Function_handlerIFbRN6duckdb12NeighborInfoEEZNKS0_15QueryGraphEdges14GetConnectionsERNS0_15JoinRelationSetES6_E3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", %bb.k ]
  %i.dw = invoke noundef zeroext i1 %i.dv(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %bb.z unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.thread.i
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #31
  unreachable

bb.w:                                             ; preds = %.noexc.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body175

.body175:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.t, %bb.w
  %eh.lpad-body176 = phi { ptr, i32 } [ %i.dz, %bb.w ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.t ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 2 uses
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !146, !noalias !1026 ; 2 uses
  %.not.i7.i97 = icmp eq ptr %i.ea, null
  br i1 %.not.i7.i97, label %_ZNSt14_Function_baseD2Ev.exit8.i, label %bb.x

bb.x:                                             ; preds = %.body175
  %i.eb = invoke noundef zeroext i1 %i.ea(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8.i unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit8.i:                ; preds = %bb.x, %.body175
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1026
  %i.ee = load ptr, ptr %8, align 8, !tbaa !159, !alias.scope !1026 ; 2 uses
  %.not.i.i.i9.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i9.i, label %.body99, label %.body99.sink.split

bb.z:                                             ; preds = %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.thread.i, %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1026
  %i.ef = load ptr, ptr %8, align 8, !tbaa !427   ; 2 uses
  %i.eg = load ptr, ptr %i.n, align 8, !tbaa !427
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb14PlanEnumerator8EmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.not319 = icmp eq ptr %.sroa.0248.1463, null
  br i1 %.not319, label %bb.ac, label %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit

_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit: ; preds = %bb.ab
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !421
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0248.1463, i64 40
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !174
  %i.el = fcmp olt double %.sroa.4.0.copyload, %i.ek
  br i1 %i.el, label %bb.ac, label %thread-pre-split

bb.ac:                                            ; preds = %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit, %bb.ab
  %i.em = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb14PlanEnumerator8EmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %thread-pre-split unwind label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %8, align 8, !tbaa !159   ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i102, label %.body99, label %.body99.sink.split

thread-pre-split:                                 ; preds = %bb.ac, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit
  %.2303.ph = phi i64 [ %.1302461, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit ], [ %.047473, %bb.ac ]
  %.2.ph = phi i64 [ %.1462, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit ], [ %.046464, %bb.ac ]
  %.sroa.0248.2.ph = phi ptr [ %.sroa.0248.1463, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit ], [ %i.em, %bb.ac ]
  %.pr = load ptr, ptr %8, align 8, !tbaa !159
  br label %bb.ae

bb.ae:                                            ; preds = %thread-pre-split, %bb.z
  %i.ep = phi ptr [ %.pr, %thread-pre-split ], [ %i.ef, %bb.z ] ; 2 uses
  %.2303 = phi i64 [ %.2303.ph, %thread-pre-split ], [ %.1302461, %bb.z ] ; 2 uses
  %.2 = phi i64 [ %.2.ph, %thread-pre-split ], [ %.1462, %bb.z ] ; 2 uses
  %.sroa.0248.2 = phi ptr [ %.sroa.0248.2.ph, %thread-pre-split ], [ %.sroa.0248.1463, %bb.z ] ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef nonnull %i.ep) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.eq = add i64 %.046464, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.eq, %i.br
  br i1 %exitcond.not, label %.loopexit324, label %bb.k, !llvm.loop !1016

.body99.sink.split:                               ; preds = %bb.ad, %_ZNSt14_Function_baseD2Ev.exit8.i
  %.sink = phi ptr [ %i.ee, %_ZNSt14_Function_baseD2Ev.exit8.i ], [ %i.eo, %bb.ad ]
  %.pn73.pn.ph = phi { ptr, i32 } [ %eh.lpad-body176, %_ZNSt14_Function_baseD2Ev.exit8.i ], [ %i.en, %bb.ad ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #27
  br label %.body99

.body99:                                          ; preds = %.body99.sink.split, %bb.ad, %_ZNSt14_Function_baseD2Ev.exit8.i
  %.pn73.pn = phi { ptr, i32 } [ %eh.lpad-body176, %_ZNSt14_Function_baseD2Ev.exit8.i ], [ %i.en, %bb.ad ], [ %.pn73.pn.ph, %.body99.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body

.split:                                           ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false), !tbaa !441
  %i.er = load ptr, ptr %.sroa.0259.1507, align 8, !tbaa !340 ; 3 uses
  %i.es = ptrtoint ptr %i.er to i64               ; 4 uses
  %i.et = load i64, ptr %i.p, align 8, !tbaa !285 ; 4 uses
  %i.eu = urem i64 %i.es, %i.et                   ; 3 uses
  %i.ev = load ptr, ptr %i.o, align 8, !tbaa !284 ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.eu
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i184 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i184, label %.loopexit.i, label %bb.ag

bb.ag:                                            ; preds = %.split
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !93 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !345
  %i.fc = icmp eq i64 %i.fb, %i.es
  %i.fd = load ptr, ptr %i.ez, align 8
  %i.fe = icmp eq ptr %i.er, %i.fd
  %i.ff = select i1 %i.fc, i1 %i.fe, i1 false
  br i1 %i.ff, label %.loopexit323, label %.lr.ph.i.i.i

bb.ah:                                            ; preds = %bb.ai
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fh = icmp eq i64 %i.fn, %i.es
  %i.fi = load ptr, ptr %i.fg, align 8
  %i.fj = icmp eq ptr %i.er, %i.fi
  %i.fk = select i1 %i.fh, i1 %i.fj, i1 false
  br i1 %i.fk, label %.loopexit323, label %.lr.ph.i.i.i, !llvm.loop !27

.lr.ph.i.i.i:                                     ; preds = %bb.ag, %bb.ah
  %.020.i.i.i = phi ptr [ %i.fl, %bb.ah ], [ %i.ey, %bb.ag ]
  %i.fl = load ptr, ptr %.020.i.i.i, align 8, !tbaa !93 ; 5 uses
  %.not18.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not18.i.i.i, label %.loopexit.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !345 ; 2 uses
  %i.fo = urem i64 %i.fn, %i.et
  %.not19.i.i.i = icmp eq i64 %i.fo, %i.eu
  br i1 %.not19.i.i.i, label %bb.ah, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !27

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.ai
  br label %.loopexit.i, !llvm.loop !27

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.o, ptr %4, align 8, !tbaa !445
  %i.fp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %.noexc185 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc185:                                        ; preds = %.loopexit.i
  store ptr null, ptr %i.fp, align 8, !tbaa !93
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i64, ptr %.sroa.0259.1507, align 8
  store i64 %i.fr, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store ptr null, ptr %i.fs, align 8, !tbaa !447
  store ptr %i.fp, ptr %i.q, align 8, !tbaa !448
  %i.ft = invoke ptr @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 noundef %i.eu, i64 noundef %i.es, ptr noundef nonnull %i.fp, i64 noundef 1)
          to label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i unwind label %bb.aj

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i: ; preds = %.noexc185
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.pre = load i64, ptr %i.p, align 8, !tbaa !285
  %.pre580 = load ptr, ptr %i.o, align 8, !tbaa !284
  br label %.loopexit323

bb.aj:                                            ; preds = %.noexc185.1, %.noexc185
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.body112

.loopexit323:                                     ; preds = %bb.ah, %bb.ag, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i
  %i.fv = phi ptr [ %.pre580, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.ev, %bb.ag ], [ %i.ev, %bb.ah ]
  %i.fw = phi i64 [ %.pre, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.et, %bb.ag ], [ %i.et, %bb.ah ] ; 2 uses
  %.pn.i = phi ptr [ %i.ft, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i ], [ %i.ey, %bb.ag ], [ %i.fl, %bb.ah ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.fx = load ptr, ptr %.1.i, align 8, !tbaa !288
  %i.fy = ptrtoint ptr %i.fx to i64
  store i64 %i.fy, ptr %9, align 16, !tbaa !288
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0259.1507, i64 8 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !340 ; 3 uses
  %i.gb = ptrtoint ptr %i.ga to i64               ; 4 uses
  %i.gc = urem i64 %i.gb, %i.fw                   ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i184.1 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i184.1, label %.loopexit.i.1, label %bb.ak

bb.ak:                                            ; preds = %.loopexit323
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !93 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !345
  %i.gj = icmp eq i64 %i.gi, %i.gb
  %i.gk = load ptr, ptr %i.gg, align 8
  %i.gl = icmp eq ptr %i.ga, %i.gk
  %i.gm = select i1 %i.gj, i1 %i.gl, i1 false
  br i1 %i.gm, label %.loopexit323.1, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.ak, %bb.am
  %.020.i.i.i.1 = phi ptr [ %i.gn, %bb.am ], [ %i.gf, %bb.ak ]
  %i.gn = load ptr, ptr %.020.i.i.i.1, align 8, !tbaa !93 ; 5 uses
  %.not18.i.i.i.1 = icmp eq ptr %i.gn, null
  br i1 %.not18.i.i.i.1, label %.loopexit.i.1, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.1
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !345 ; 2 uses
  %i.gq = urem i64 %i.gp, %i.fw
  %.not19.i.i.i.1 = icmp eq i64 %i.gq, %i.gc
  br i1 %.not19.i.i.i.1, label %bb.am, label %..loopexit_crit_edge21.i.i.i.1, !llvm.loop !27

..loopexit_crit_edge21.i.i.i.1:                   ; preds = %bb.al
  br label %.loopexit.i.1, !llvm.loop !27

bb.am:                                            ; preds = %bb.al
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gs = icmp eq i64 %i.gp, %i.gb
  %i.gt = load ptr, ptr %i.gr, align 8
  %i.gu = icmp eq ptr %i.ga, %i.gt
  %i.gv = select i1 %i.gs, i1 %i.gu, i1 false
  br i1 %i.gv, label %.loopexit323.1, label %.lr.ph.i.i.i.1, !llvm.loop !27

.loopexit.i.1:                                    ; preds = %.lr.ph.i.i.i.1, %..loopexit_crit_edge21.i.i.i.1, %.loopexit323
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.o, ptr %4, align 8, !tbaa !445
  %i.gw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %.noexc185.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc185.1:                                      ; preds = %.loopexit.i.1
  store ptr null, ptr %i.gw, align 8, !tbaa !93
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i64, ptr %i.fz, align 8
  store i64 %i.gy, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store ptr null, ptr %i.gz, align 8, !tbaa !447
  store ptr %i.gw, ptr %i.q, align 8, !tbaa !448
  %i.ha = invoke ptr @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 noundef %i.gc, i64 noundef %i.gb, ptr noundef nonnull %i.gw, i64 noundef 1)
          to label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.1 unwind label %bb.aj

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.1: ; preds = %.noexc185.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit323.1

.loopexit323.1:                                   ; preds = %bb.am, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.1, %bb.ak
  %.pn.i.1 = phi ptr [ %i.ha, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.1 ], [ %i.gf, %bb.ak ], [ %i.gn, %bb.am ]
  %.1.i.1 = getelementptr inbounds nuw i8, ptr %.pn.i.1, i64 16
  %i.hb = load ptr, ptr %.1.i.1, align 8, !tbaa !288 ; 2 uses
  %i.hc = ptrtoint ptr %i.hb to i64
  store i64 %i.hc, ptr %i.s, align 8, !tbaa !288
  %i.hd = icmp ugt i64 %i.br, 2
  br i1 %i.hd, label %.lr.ph504, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre581 = load ptr, ptr %i.s, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit323.1
  %i.he = phi ptr [ %i.hb, %.loopexit323.1 ], [ %.pre581, %._crit_edge.loopexit ]
  %.sroa.028.1.lcssa = phi i64 [ 0, %.loopexit323.1 ], [ %.sroa.028.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.6.1.lcssa = phi i64 [ 1, %.loopexit323.1 ], [ %.sroa.6.2, %._crit_edge.loopexit ] ; 2 uses
  %i.hf = load ptr, ptr %9, align 16, !tbaa !441
  %.not316 = icmp eq ptr %i.hf, null
  %.not317 = icmp eq ptr %i.he, null
  %or.cond = select i1 %.not316, i1 true, i1 %.not317
  br i1 %or.cond, label %bb.aw, label %bb.bb

.lr.ph504:                                        ; preds = %.loopexit323.1, %.loopexit
  %.052518 = phi i64 [ %i.jd, %.loopexit ], [ 2, %.loopexit323.1 ] ; 4 uses
  %.sroa.6.1516 = phi i64 [ %.sroa.6.2, %.loopexit ], [ 1, %.loopexit323.1 ] ; 2 uses
  %.044503 = phi i64 [ %.sroa.028.2, %.loopexit ], [ 0, %.loopexit323.1 ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1507, i64 %.052518 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !340 ; 3 uses
  %i.hi = ptrtoint ptr %i.hh to i64               ; 4 uses
  %i.hj = load i64, ptr %i.p, align 8, !tbaa !285 ; 2 uses
  %i.hk = urem i64 %i.hi, %i.hj                   ; 3 uses
  %i.hl = load ptr, ptr %i.o, align 8, !tbaa !284
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.hk
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i192, label %.loopexit.i198, label %bb.an

bb.an:                                            ; preds = %.lr.ph504
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !93 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !345
  %i.hs = icmp eq i64 %i.hr, %i.hi
  %i.ht = load ptr, ptr %i.hp, align 8
  %i.hu = icmp eq ptr %i.hh, %i.ht
  %i.hv = select i1 %i.hs, i1 %i.hu, i1 false
  br i1 %i.hv, label %.loopexit322, label %.lr.ph.i.i.i193

bb.ao:                                            ; preds = %bb.ap
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.hx = icmp eq i64 %i.id, %i.hi
  %i.hy = load ptr, ptr %i.hw, align 8
  %i.hz = icmp eq ptr %i.hh, %i.hy
  %i.ia = select i1 %i.hx, i1 %i.hz, i1 false
  br i1 %i.ia, label %.loopexit322, label %.lr.ph.i.i.i193, !llvm.loop !27

.lr.ph.i.i.i193:                                  ; preds = %bb.an, %bb.ao
  %.020.i.i.i194 = phi ptr [ %i.ib, %bb.ao ], [ %i.ho, %bb.an ]
  %i.ib = load ptr, ptr %.020.i.i.i194, align 8, !tbaa !93 ; 5 uses
  %.not18.i.i.i195 = icmp eq ptr %i.ib, null
  br i1 %.not18.i.i.i195, label %.loopexit.i198, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i193
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !345 ; 2 uses
  %i.ie = urem i64 %i.id, %i.hj
  %.not19.i.i.i196 = icmp eq i64 %i.ie, %i.hk
  br i1 %.not19.i.i.i196, label %bb.ao, label %..loopexit_crit_edge21.i.i.i197, !llvm.loop !27

..loopexit_crit_edge21.i.i.i197:                  ; preds = %bb.ap
  br label %.loopexit.i198, !llvm.loop !27

.loopexit.i198:                                   ; preds = %.lr.ph.i.i.i193, %..loopexit_crit_edge21.i.i.i197, %.lr.ph504
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.o, ptr %3, align 8, !tbaa !445
  %i.if = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %.noexc202 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc202:                                        ; preds = %.loopexit.i198
  store ptr null, ptr %i.if, align 8, !tbaa !93
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i64, ptr %i.hg, align 8
  store i64 %i.ih, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store ptr null, ptr %i.ii, align 8, !tbaa !447
  store ptr %i.if, ptr %i.r, align 8, !tbaa !448
  %i.ij = invoke ptr @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 noundef %i.hk, i64 noundef %i.hi, ptr noundef nonnull %i.if, i64 noundef 1)
          to label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i199 unwind label %bb.aq

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i199: ; preds = %.noexc202
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit322

bb.aq:                                            ; preds = %.noexc202
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.body112

.loopexit322:                                     ; preds = %bb.ao, %bb.an, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i199
  %.pn.i200 = phi ptr [ %i.ij, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb15JoinRelationSetEESt4pairIKS3_NS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS7_ELb1EEEESaISB_ENSt8__detail10_Select1stENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i199 ], [ %i.ho, %bb.an ], [ %i.ib, %bb.ao ]
  %.1.i201 = getelementptr inbounds nuw i8, ptr %.pn.i200, i64 16
  %i.il = load ptr, ptr %.1.i201, align 8, !tbaa !288
  %.fr = freeze ptr %i.il                         ; 3 uses
  %.not.i216 = icmp eq ptr %.fr, null
  %i.im = getelementptr inbounds nuw i8, ptr %.fr, i64 40
  %i.in = load ptr, ptr %9, align 16, !tbaa !441  ; 2 uses
  %.not318.us = icmp eq ptr %i.in, null           ; 2 uses
  br i1 %.not.i216, label %.split476.us, label %.split476.preheader

.split476.preheader:                              ; preds = %.loopexit322
  br i1 %.not318.us, label %.split478.us, label %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129

.split476.us:                                     ; preds = %.loopexit322
  br i1 %.not318.us, label %.split478.us, label %.split481.us

_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129: ; preds = %.split476.preheader
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 40
  %i.ip = load double, ptr %i.io, align 8, !tbaa !174
  %i.iq = load double, ptr %i.im, align 8, !tbaa !174 ; 2 uses
  %i.ir = fcmp ogt double %i.ip, %i.iq
  br i1 %i.ir, label %.split478.us, label %.split476.1

.split481.us:                                     ; preds = %.split476.us
  %i.is = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i217

bb.ar:                                            ; preds = %.split481.us
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.is, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.is, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.av unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i217: ; preds = %.split481.us
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0.i220 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.iu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.iv = load ptr, ptr %1, align 8, !tbaa !88    ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.iv) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i220, label %bb.au, label %.body112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i220, label %bb.au, label %.body112

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i217
  %.pn9.i218 = phi { ptr, i32 } [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i217 ], [ %i.iu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222 ], [ %i.iu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221 ]
  call void @__cxa_free_exception(ptr %i.is) #28
  br label %.body112

bb.av:                                            ; preds = %bb.as
  unreachable

.split478.us:                                     ; preds = %.split476.preheader, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129, %.split476.1, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1, %.split476.us
  %.sroa.idx24 = phi i1 [ false, %.split476.us ], [ false, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129 ], [ false, %.split476.preheader ], [ true, %.split476.1 ], [ true, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1 ] ; 2 uses
  %.us-phi.sroa.phi862 = phi ptr [ %9, %.split476.us ], [ %9, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129 ], [ %9, %.split476.preheader ], [ %.us-phi.sroa.gep865, %.split476.1 ], [ %.us-phi.sroa.gep866, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1 ]
  %i.iy = ptrtoint ptr %.fr to i64
  store i64 %i.iy, ptr %.us-phi.sroa.phi862, align 8, !tbaa !288
  %.sroa.028.1..052 = select i1 %.sroa.idx24, i64 %.044503, i64 %.052518
  %.052..sroa.6.1 = select i1 %.sroa.idx24, i64 %.052518, i64 %.sroa.6.1516
  br label %.loopexit

.split476.1:                                      ; preds = %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129
  %i.iz = load ptr, ptr %i.s, align 8, !tbaa !441 ; 2 uses
  %.not318.1 = icmp eq ptr %i.iz, null
  br i1 %.not318.1, label %.split478.us, label %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1

_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1: ; preds = %.split476.1
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !174
  %i.jc = fcmp ogt double %i.jb, %i.iq
  br i1 %i.jc, label %.split478.us, label %.loopexit

.loopexit:                                        ; preds = %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1, %.split478.us
  %.sroa.028.2 = phi i64 [ %.sroa.028.1..052, %.split478.us ], [ %.044503, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1 ] ; 2 uses
  %.sroa.6.2 = phi i64 [ %.052..sroa.6.1, %.split478.us ], [ %.sroa.6.1516, %_ZN6duckdb12optional_ptrINS_10DPJoinNodeELb1EEptEv.exit129.1 ] ; 2 uses
  %i.jd = add nuw i64 %.052518, 1                 ; 2 uses
  %exitcond579.not = icmp eq i64 %i.jd, %i.br
  br i1 %exitcond579.not, label %._crit_edge.loopexit, label %.lr.ph504, !llvm.loop !1017

bb.aw:                                            ; preds = %._crit_edge
  %i.je = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ax unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.je, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_throw(ptr nonnull %i.je, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.cb unwind label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aw
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.041 = phi i1 [ false, %bb.ay ], [ true, %bb.ax ] ; 2 uses
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jh = load ptr, ptr %10, align 8, !tbaa !88   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.az
  call void @_ZdlPv(ptr noundef %i.jh) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %.041, label %bb.ba, label %.body112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %.041, label %bb.ba, label %.body112

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn308 = phi { ptr, i32 } [ %i.jf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.je) #28
  br label %.body112

bb.bb:                                            ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_10DPJoinNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  %i.jk = load ptr, ptr %9, align 16, !tbaa !441
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !426, !nonnull !266, !align !267 ; 4 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10DPJoinNodeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.jm = load ptr, ptr %i.s, align 8, !tbaa !441
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !426, !nonnull !266, !align !267 ; 4 uses
  %i.jo = load ptr, ptr %i.b, align 8, !tbaa !336, !nonnull !266, !align !267
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 272 ; 2 uses
  invoke void @_ZN6duckdb15QueryGraphEdges10CreateEdgeERNS_15JoinRelationSetES2_NS_12optional_ptrINS_10FilterInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr null)
          to label %.noexc136 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc136:                                        ; preds = %bb.bd
  invoke void @_ZN6duckdb15QueryGraphEdges10CreateEdgeERNS_15JoinRelationSetES2_NS_12optional_ptrINS_10FilterInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr null)
          to label %_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit: ; preds = %.noexc136
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.jq = load ptr, ptr %0, align 8, !tbaa !428, !nonnull !266, !align !267
  invoke void @_ZNK6duckdb15QueryGraphEdges14GetConnectionsERNS_15JoinRelationSetES2_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.63") align 8 %12, ptr noundef nonnull align 8 dereferenceable(80) %i.jq, ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull align 8 dereferenceable(16) %i.jn)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit
  %i.jr = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb14PlanEnumerator8EmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.bf unwind label %bb.bh     ; 0 uses

bb.bf:                                            ; preds = %bb.be
  %spec.select = call i64 @llvm.umin.i64(i64 %.sroa.028.1.lcssa, i64 %.sroa.6.1.lcssa)
  %spec.select315 = call i64 @llvm.umax.i64(i64 %.sroa.028.1.lcssa, i64 %.sroa.6.1.lcssa)
  %i.js = load ptr, ptr %12, align 8, !tbaa !159  ; 2 uses
  %.not.i.i.i140 = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141, label %bb.bj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit.i198, %bb.bb, %bb.bc, %bb.bd, %.noexc136, %.loopexit.i.1, %.loopexit.i
  %lpad.loopexit.split-lp798 = landingpad { ptr, i32 }
          cleanup
  br label %.body112

bb.bg:                                            ; preds = %_ZN6duckdb17QueryGraphManager28CreateQueryGraphCrossProductERNS_15JoinRelationSetES2_.exit
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139

bb.bh:                                            ; preds = %bb.be
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jv = load ptr, ptr %12, align 8, !tbaa !159  ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZdlPv(ptr noundef nonnull %i.jv) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139

bb.bj:                                            ; preds = %bb.bf
  call void @_ZdlPv(ptr noundef nonnull %i.js) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141: ; preds = %bb.bf, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bk

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139: ; preds = %bb.bi, %bb.bh, %bb.bg
  %.pn63 = phi { ptr, i32 } [ %i.jt, %bb.bg ], [ %i.ju, %bb.bh ], [ %i.ju, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.body112

.body112:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222, %bb.au, %bb.aq, %bb.aj, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ba
  %.pn69 = phi { ptr, i32 } [ %.pn63, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit139 ], [ %i.fu, %bb.aj ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn308, %bb.ba ], [ %i.ik, %bb.aq ], [ %.pn9.i218, %bb.au ], [ %i.iu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i222 ], [ %i.iu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221 ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp798, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body

bb.bk:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141, %bb.i
  %.4305 = phi i64 [ %.1302.lcssa, %bb.i ], [ %spec.select, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141 ] ; 3 uses
  %.4 = phi i64 [ %.1.lcssa, %bb.i ], [ %spec.select315, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit141 ] ; 3 uses
  %i.jw = load ptr, ptr %i.b, align 8, !tbaa !336, !nonnull !266, !align !267
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 144
  %.not.i.i142 = icmp ult i64 %.4305, %i.br
  br i1 %.not.i.i142, label %bb.bl, label %.invoke

.invoke:                                          ; preds = %bb.bl, %bb.bk
  %i.jy = phi i64 [ %.4305, %bb.bk ], [ %.4, %bb.bl ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.jy, i64 noundef %i.br) #29
          to label %.cont unwind label %.loopexit.split-lp332

.cont:                                            ; preds = %.invoke
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1507, i64 %.4305 ; 4 uses
  %.not.i.i144 = icmp ult i64 %.4, %i.br
  br i1 %.not.i.i144, label %bb.bm, label %.invoke

bb.bm:                                            ; preds = %bb.bl
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !340
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1507, i64 %.4 ; 4 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !340
  %i.kd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %i.jx, ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull align 8 dereferenceable(16) %i.kc)
          to label %bb.bn unwind label %.body.thread.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 4 uses
  %.not.i.i147 = icmp eq ptr %i.ke, %.sroa.24.1506
  br i1 %.not.i.i147, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = sub i64 %i.bt, %i.kf                    ; 3 uses
  %i.kh = icmp sgt i64 %i.kg, 8
  br i1 %i.kh, label %bb.bp, label %bb.bq, !prof !103

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kb, ptr nonnull align 8 %i.ke, i64 %i.kg, i1 false)
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.ki = icmp eq i64 %i.kg, 8
  br i1 %i.ki, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.kj = load i64, ptr %i.ke, align 8
  store i64 %i.kj, ptr %i.kb, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bn
  %i.kk = getelementptr inbounds i8, ptr %.sroa.24.1506, i64 -8 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 4 uses
  %.not.i.i148 = icmp eq ptr %i.kl, %i.kk
  br i1 %.not.i.i148, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn                    ; 3 uses
  %i.kp = icmp sgt i64 %i.ko, 8
  br i1 %i.kp, label %bb.bu, label %bb.bv, !prof !103

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jz, ptr nonnull align 8 %i.kl, i64 %i.ko, i1 false)
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  %i.kq = icmp eq i64 %i.ko, 8
  br i1 %i.kq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kr = load i64, ptr %i.kl, align 8
  store i64 %i.kr, ptr %i.jz, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bs
  %i.ks = getelementptr inbounds i8, ptr %.sroa.24.1506, i64 -16 ; 2 uses
  %.not.i.i150 = icmp eq ptr %i.ks, %.sroa.48.1505
  br i1 %.not.i.i150, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kt = ptrtoint ptr %i.kd to i64
  store i64 %i.kt, ptr %i.ks, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165

bb.bz:                                            ; preds = %bb.bx
  %i.ku = ptrtoint ptr %.sroa.48.1505 to i64      ; 2 uses
  %i.kv = sub i64 %i.ku, %i.bs                    ; 3 uses
  %i.kw = icmp eq i64 %i.kv, 9223372036854775800
  br i1 %i.kw, label %bb.ca, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc163 unwind label %.body.thread.loopexit.split-lp.loopexit.split-lp

.noexc163:                                        ; preds = %bb.ca
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151: ; preds = %bb.bz
  %i.kx = ashr exact i64 %i.kv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i152 = call i64 @llvm.umax.i64(i64 %i.kx, i64 1)
  %i.ky = add nsw i64 %.sroa.speculated.i.i.i.i152, %i.kx ; 2 uses
  %i.kz = icmp ult i64 %i.ky, %i.kx
  %i.la = call i64 @llvm.umin.i64(i64 %i.ky, i64 1152921504606846975)
  %i.lb = select i1 %i.kz, i64 1152921504606846975, i64 %i.la ; 3 uses
  %.not.i.i.i.i153 = icmp ne i64 %i.lb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i153)
  %i.lc = shl nuw nsw i64 %i.lb, 3
  %i.ld = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lc) #30
          to label %.noexc164 unwind label %.body.thread.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc164:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i151
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.kv
  %i.lf = ptrtoint ptr %i.kd to i64
  store i64 %i.lf, ptr %i.le, align 8
  %.not10.i.i.i.i.i.i.i154 = icmp eq ptr %.sroa.0259.1507, %.sroa.48.1505
  br i1 %.not10.i.i.i.i.i.i.i154, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, label %.lr.ph.i.i.i.i.i.i.i155.preheader

.lr.ph.i.i.i.i.i.i.i155.preheader:                ; preds = %.noexc164
  %i.lg = ptrtoaddr ptr %i.ld to i64
  %i.lh = add i64 %i.ku, -8
  %i.li = sub i64 %i.lh, %.sroa.0259.1507775      ; 2 uses
  %i.lj = lshr i64 %i.li, 3
  %i.lk = add nuw nsw i64 %i.lj, 1                ; 2 uses
  %min.iters.check777 = icmp ult i64 %i.li, 24
  %i.ll = sub i64 %.sroa.0259.1507775, %i.lg
  %diff.check779 = icmp ugt i64 %i.ll, -32
  %or.cond794 = or i1 %min.iters.check777, %diff.check779
  br i1 %or.cond794, label %.lr.ph.i.i.i.i.i.i.i155.preheader797, label %vector.ph780

vector.ph780:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i155.preheader
  %n.vec781 = and i64 %i.lk, 4611686018427387900  ; 3 uses
  %i.lm = shl i64 %n.vec781, 3                    ; 2 uses
  %i.ln = getelementptr i8, ptr %i.ld, i64 %i.lm  ; 2 uses
  %i.lo = getelementptr i8, ptr %.sroa.0259.1507, i64 %i.lm
  br label %vector.body782

vector.body782:                                   ; preds = %vector.body782, %vector.ph780
  %index783 = phi i64 [ 0, %vector.ph780 ], [ %index.next788, %vector.body782 ] ; 2 uses
  %i.lp = shl i64 %index783, 3                    ; 2 uses
  %next.gep784 = getelementptr i8, ptr %i.ld, i64 %i.lp ; 2 uses
  %next.gep785 = getelementptr i8, ptr %.sroa.0259.1507, i64 %i.lp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.lq = getelementptr i8, ptr %next.gep785, i64 16
  %wide.load786 = load <2 x i64>, ptr %next.gep785, align 8, !alias.scope !1028
  %wide.load787 = load <2 x i64>, ptr %i.lq, align 8, !alias.scope !1028
  %i.lr = getelementptr i8, ptr %next.gep784, i64 16
  store <2 x i64> %wide.load786, ptr %next.gep784, align 8, !alias.scope !1027
  store <2 x i64> %wide.load787, ptr %i.lr, align 8, !alias.scope !1027
  %index.next788 = add nuw i64 %index783, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next788, %n.vec781
  br i1 %i.ls, label %middle.block789, label %vector.body782, !llvm.loop !1021

middle.block789:                                  ; preds = %vector.body782
  %cmp.n790 = icmp eq i64 %i.lk, %n.vec781
  br i1 %cmp.n790, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, label %.lr.ph.i.i.i.i.i.i.i155.preheader797

.lr.ph.i.i.i.i.i.i.i155.preheader797:             ; preds = %.lr.ph.i.i.i.i.i.i.i155.preheader, %middle.block789
  %.012.i.i.i.i.i.i.i156.ph = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i.i.i155.preheader ], [ %i.ln, %middle.block789 ]
  %.0911.i.i.i.i.i.i.i157.ph = phi ptr [ %.sroa.0259.1507, %.lr.ph.i.i.i.i.i.i.i155.preheader ], [ %i.lo, %middle.block789 ]
  br label %.lr.ph.i.i.i.i.i.i.i155

.lr.ph.i.i.i.i.i.i.i155:                          ; preds = %.lr.ph.i.i.i.i.i.i.i155.preheader797, %.lr.ph.i.i.i.i.i.i.i155
  %.012.i.i.i.i.i.i.i156 = phi ptr [ %i.lv, %.lr.ph.i.i.i.i.i.i.i155 ], [ %.012.i.i.i.i.i.i.i156.ph, %.lr.ph.i.i.i.i.i.i.i155.preheader797 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i157 = phi ptr [ %i.lu, %.lr.ph.i.i.i.i.i.i.i155 ], [ %.0911.i.i.i.i.i.i.i157.ph, %.lr.ph.i.i.i.i.i.i.i155.preheader797 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.lt = load i64, ptr %.0911.i.i.i.i.i.i.i157, align 8, !alias.scope !1028
  store i64 %i.lt, ptr %.012.i.i.i.i.i.i.i156, align 8, !alias.scope !1027
  %i.lu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i157, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i156, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i158 = icmp eq ptr %i.lu, %.sroa.48.1505
  br i1 %.not.i.i.i.i.i.i.i158, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, label %.lr.ph.i.i.i.i.i.i.i155, !llvm.loop !1022

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162: ; preds = %.lr.ph.i.i.i.i.i.i.i155, %middle.block789, %.noexc164
  %.0.lcssa.i.i.i.i.i.i.i160 = phi ptr [ %i.ld, %.noexc164 ], [ %i.ln, %middle.block789 ], [ %i.lv, %.lr.ph.i.i.i.i.i.i.i155 ]
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i160, i64 8
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.1507) #27
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.lb
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162, %bb.by
  %.sroa.48.3 = phi ptr [ %i.lx, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162 ], [ %.sroa.48.1505, %bb.by ]
  %.sroa.24.3 = phi ptr [ %i.lw, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162 ], [ %i.kk, %bb.by ] ; 2 uses
  %.sroa.0259.4 = phi ptr [ %i.ld, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i162 ], [ %.sroa.0259.1507, %bb.by ] ; 3 uses
  %i.ly = ptrtoint ptr %.sroa.24.3 to i64         ; 2 uses
  %i.lz = ptrtoint ptr %.sroa.0259.4 to i64       ; 2 uses
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = ashr exact i64 %i.ma, 3                 ; 2 uses
  %i.mc = icmp ugt i64 %i.mb, 1
  br i1 %i.mc, label %.preheader329, label %._crit_edge509.thread, !llvm.loop !1023

.loopexit.split-lp332:                            ; preds = %.invoke
end_hunk_1
