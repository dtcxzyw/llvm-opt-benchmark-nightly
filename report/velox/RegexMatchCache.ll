inline.NumInlined: 9148
inline.NumDeleted: 3321
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5folly15RegexMatchCache11RegexObjectclESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::match_results", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !19863
  %i.b = icmp eq ptr %2, null
  %i.c = icmp ne i64 %1, 0
  %or.cond.i.i.i = and i1 %i.c, %i.b
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #44
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 15
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #44
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i64 %1, 1                        ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !19748

.noexc9.i.i.i:                                    ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #44
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #45 ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !19733
  store i64 %1, ptr %i.a, align 8, !tbaa !19747
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.b
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  switch i64 %1, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !19747
  store i8 %i.j, ptr %i.i, align 1, !tbaa !19747
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %2, i64 %1, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %1, ptr %i.k, align 8, !tbaa !19738
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %1
  store i8 0, ptr %i.l, align 1, !tbaa !19747
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(77) %3, i8 0, i64 49, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.m, i8 0, i64 20, i1 false)
  store i8 1, ptr %i.n, align 4, !tbaa !19953
  %i.o = load ptr, ptr %4, align 8, !tbaa !19733  ; 2 uses
  %i.p = load i64, ptr %i.k, align 8, !tbaa !19738
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = invoke noundef zeroext i1 @_ZN5boost11regex_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEbT_SJ_RNS_13match_resultsISJ_T0_EERKNS_11basic_regexIT1_T2_EENS_15regex_constants12_match_flagsE(ptr %i.o, ptr %i.q, ptr noundef nonnull align 8 dereferenceable(77) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1024)
          to label %bb.h unwind label %.body

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19943 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !19946
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !19948
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #41, !call_target !16646, !inline_history !19966
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #41, !call_target !16647, !inline_history !19966
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19747
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.n, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !19748

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #41
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j, %bb.h
  %i.aj = load ptr, ptr %3, align 8, !tbaa !19967 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19968
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #42
  br label %bb.p

.body:                                            ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.aq = load ptr, ptr %4, align 8, !tbaa !19733 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.a
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

bb.p:                                             ; preds = %bb.o, %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.as = load ptr, ptr %4, align 8, !tbaa !19733 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.au = load i64, ptr %i.a, align 8, !tbaa !19747
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  ret i1 %i.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.body
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !19747
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.ax) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8__detail12_Insert_baseIN5folly18RegexMatchCacheKeyESt4pairIKS2_NS1_15RegexMatchCache11RegexObjectEESaIS7_ENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEEE11try_emplaceIRS4_JSt17basic_string_viewIcSt11char_traitsIcEEEEES3_INS_14_Node_iteratorIS7_Lb0ELb0EEEbENS_20_Node_const_iteratorIS7_Lb0ELb0EEEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<folly::RegexMatchCacheKey, std::pair<const folly::RegexMatchCacheKey, folly::RegexMatchCache::RegexObject>, std::allocator<std::pair<const folly::RegexMatchCacheKey, folly::RegexMatchCache::RegexObject>>, std::__detail::_Select1st, std::equal_to<folly::RegexMatchCacheKey>, std::hash< ::folly::RegexMatchCacheKey>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = load i64, ptr %2, align 8, !tbaa !19741  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19939 ; 2 uses
  %i.d = urem i64 %i.a, %i.c                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !19932
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19969 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19942 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i256, ptr %2, align 8
  %i.k = load i256, ptr %i.i, align 8
  %i.l = icmp ne i256 %i.j, %i.k
  %i.m = zext i1 %i.l to i32
  %.not9.i.i.i.i.i.i.i.i.i21.i.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i21.i.i, label %_ZNKSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.n = load i256, ptr %2, align 8
  %i.o = load i256, ptr %i.s, align 8
  %i.p = icmp ne i256 %i.n, %i.o
  %i.q = zext i1 %i.p to i32
  %.not9.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %.lr.ph.i.i, !llvm.loop !19970

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.022.i.i = phi ptr [ %i.r, %bb.c ], [ %i.h, %bb.b ]
  %i.r = load ptr, ptr %.022.i.i, align 8, !tbaa !19942 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.r, null
  br i1 %.not18.i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19741
  %i.u = urem i64 %i.t, %i.c
  %.not19.i.i = icmp eq i64 %i.u, %i.d
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge23.i.i, !llvm.loop !19970

..loopexit_crit_edge23.i.i:                       ; preds = %bb.d
  br label %.critedge, !llvm.loop !19970

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge23.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store ptr %0, ptr %4, align 8, !tbaa !19971
  %i.v = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #45 ; 6 uses
  store ptr null, ptr %i.v, align 8, !tbaa !19942
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %3, align 8, !tbaa !19741
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !19975
  invoke void @_ZN5folly15RegexMatchCache11RegexObjectC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN5folly18RegexMatchCacheKeyENS3_15RegexMatchCache11RegexObjectEELb0EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESG_IJOSt17basic_string_viewIcSt11char_traitsIcEEEEEEEPS9_DpOT_.exit unwind label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #41 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 56) #42
  invoke void @__cxa_rethrow() #44
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.g

common.resume:                                    ; preds = %bb.f, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.ab, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #43
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN5folly18RegexMatchCacheKeyENS3_15RegexMatchCache11RegexObjectEELb0EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESG_IJOSt17basic_string_viewIcSt11char_traitsIcEEEEEEEPS9_DpOT_.exit: ; preds = %.critedge
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.v, ptr %i.ae, align 8, !tbaa !19976
  %i.af = invoke ptr @_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.d, i64 noundef %i.a, ptr noundef nonnull %i.v, i64 noundef 1)
          to label %_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.i

_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN5folly18RegexMatchCacheKeyENS3_15RegexMatchCache11RegexObjectEELb0EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESG_IJOSt17basic_string_viewIcSt11char_traitsIcEEEEEEEPS9_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %_ZNKSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit

bb.i:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN5folly18RegexMatchCacheKeyENS3_15RegexMatchCache11RegexObjectEELb0EEEEE16_M_allocate_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESG_IJOSt17basic_string_viewIcSt11char_traitsIcEEEEEEEPS9_DpOT_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %common.resume

_ZNKSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit: ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.024.0 = phi ptr [ %i.af, %_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.h, %bb.b ], [ %i.r, %bb.c ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.b ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.024.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19977
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19939
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19978
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #41 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !19977
  invoke void @__cxa_rethrow() #44
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
  tail call void @__clang_call_terminate(ptr %i.q) #43
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !19939
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !19932  ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19969 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19942
  store ptr %i.w, ptr %3, align 8, !tbaa !19942
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !19969
  store ptr %3, ptr %i.x, align 8, !tbaa !19942
  br label %_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19941
  store ptr %i.z, ptr %3, align 8, !tbaa !19942
  store ptr %3, ptr %i.y, align 8, !tbaa !19941
  %i.aa = load ptr, ptr %3, align 8, !tbaa !19942 ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !19939
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !19741
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !19969
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !19969
  br label %_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !19978
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !19978
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN5folly18RegexMatchCacheKeyESt4pairIKS1_NS0_15RegexMatchCache11RegexObjectEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19976 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19943 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN5folly18RegexMatchCacheKeyENS3_15RegexMatchCache11RegexObjectEELb0EEEEE18_M_deallocate_nodeEPS9_.exit, label %bb.c

end_hunk_0
begin_hunk_1_@_ZNK5folly15RegexMatchCache11consistencyERNS0_24ConsistencyReportMatcherERKNS0_6KeyMapENS_11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE:bb.a
  %i.ave = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.avf = load ptr, ptr %20, align 8, !tbaa !19733, !alias.scope !21416, !noalias !21413 ; 2 uses
  %i.avg = icmp eq ptr %i.avf, %i.fi
  br i1 %i.avg, label %.body1060, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1050

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1050: ; preds = %bb.eu
  %i.avh = load i64, ptr %i.fi, align 8, !tbaa !19747, !alias.scope !21416, !noalias !21413
  %i.avi = add i64 %i.avh, 1
  call void @_ZdlPvm(ptr noundef %i.avf, i64 noundef %i.avi) #42, !noalias !21413
  br label %.body1060

.noexc.i1054:                                     ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1049
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41, !noalias !21419
  %i.avj = load ptr, ptr %20, align 8, !tbaa !19733, !noalias !21413
  %i.avk = load i64, ptr %i.fj, align 8, !tbaa !19738, !noalias !21413
  store ptr %i.avj, ptr %19, align 16, !tbaa !19747, !noalias !21413
  store i64 %i.avk, ptr %i.fk, align 8, !tbaa !19747, !noalias !21413
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %94, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %19)
          to label %bb.ev unwind label %bb.ew

bb.ev:                                            ; preds = %.noexc.i1054
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41, !noalias !21419
  %i.avl = load ptr, ptr %20, align 8, !tbaa !19733, !noalias !21413 ; 2 uses
  %i.avm = icmp eq ptr %i.avl, %i.fi
  br i1 %i.avm, label %.noexc313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1058

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1058: ; preds = %bb.ev
  %i.avn = load i64, ptr %i.fi, align 8, !tbaa !19747, !noalias !21413
  %i.avo = add i64 %i.avn, 1
  call void @_ZdlPvm(ptr noundef %i.avl, i64 noundef %i.avo) #42
  br label %.noexc313

bb.ew:                                            ; preds = %.noexc.i1054
  %i.avp = landingpad { ptr, i32 }
          cleanup
  %i.avq = load ptr, ptr %20, align 8, !tbaa !19733, !noalias !21413 ; 2 uses
  %i.avr = icmp eq ptr %i.avq, %i.fi
  br i1 %i.avr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1056, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1055

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1055: ; preds = %bb.ew
  %i.avs = load i64, ptr %i.fi, align 8, !tbaa !19747, !noalias !21413
  %i.avt = add i64 %i.avs, 1
  call void @_ZdlPvm(ptr noundef %i.avq, i64 noundef %i.avt) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1056

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1056: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1055
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41, !noalias !21413
  br label %.body1060

.noexc313:                                        ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1058
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41, !noalias !21413
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #41, !noalias !21422
  %i.avu = load ptr, ptr %93, align 8, !tbaa !19733
  %i.avv = load i64, ptr %i.fl, align 8, !tbaa !19738
  store ptr %i.avu, ptr %61, align 16, !tbaa !19747
  store i64 %i.avv, ptr %i.fm, align 8, !tbaa !19747
  %i.avw = load ptr, ptr %94, align 8, !tbaa !19733
  %i.avx = load i64, ptr %i.fo, align 8, !tbaa !19738
  store ptr %i.avw, ptr %i.fn, align 16, !tbaa !19747
  store i64 %i.avx, ptr %i.fp, align 8, !tbaa !19747
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %92, ptr nonnull @.str.283, i64 40, i64 221, ptr nonnull %61)
          to label %bb.ex unwind label %bb.ey

bb.ex:                                            ; preds = %.noexc313
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #41, !noalias !21422
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit720 unwind label %bb.ez, !inline_history !21246

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit720: ; preds = %bb.ex
  %i.avy = load ptr, ptr %92, align 8, !tbaa !19733 ; 2 uses
  %i.avz = icmp eq ptr %i.avy, %i.fq
  br i1 %i.avz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i721

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i721: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit720
  %i.awa = load i64, ptr %i.fq, align 8, !tbaa !19747
  %i.awb = add i64 %i.awa, 1
  call void @_ZdlPvm(ptr noundef %i.avy, i64 noundef %i.awb) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit720, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i721
  %i.awc = load ptr, ptr %94, align 8, !tbaa !19733 ; 2 uses
  %i.awd = icmp eq ptr %i.awc, %i.fr
  br i1 %i.awd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit726, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i724

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i724: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723
  %i.awe = load i64, ptr %i.fr, align 8, !tbaa !19747
  %i.awf = add i64 %i.awe, 1
  call void @_ZdlPvm(ptr noundef %i.awc, i64 noundef %i.awf) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit726

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit726: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i724
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #41
  %i.awg = load ptr, ptr %93, align 8, !tbaa !19733 ; 2 uses
  %i.awh = icmp eq ptr %i.awg, %i.fs
  br i1 %i.awh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i727

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i727: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit726
  %i.awi = load i64, ptr %i.fs, align 8, !tbaa !19747
  %i.awj = add i64 %i.awi, 1
  call void @_ZdlPvm(ptr noundef %i.awg, i64 noundef %i.awj) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit726, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i727
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #41
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit363

bb.ey:                                            ; preds = %.noexc313
  %i.awk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732

bb.ez:                                            ; preds = %bb.ex
  %i.awl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.awm = load ptr, ptr %92, align 8, !tbaa !19733 ; 2 uses
  %i.awn = icmp eq ptr %i.awm, %i.fq
  br i1 %i.awn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730: ; preds = %bb.ez
  %i.awo = load i64, ptr %i.fq, align 8, !tbaa !19747
  %i.awp = add i64 %i.awo, 1
  call void @_ZdlPvm(ptr noundef %i.awm, i64 noundef %i.awp) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730, %bb.ey
  %.pn261 = phi { ptr, i32 } [ %i.awk, %bb.ey ], [ %i.awl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i730 ], [ %i.awl, %bb.ez ] ; 2 uses
  %i.awq = load ptr, ptr %94, align 8, !tbaa !19733 ; 2 uses
  %i.awr = icmp eq ptr %i.awq, %i.fr
  br i1 %i.awr, label %.body1060, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732
  %i.aws = load i64, ptr %i.fr, align 8, !tbaa !19747
  %i.awt = add i64 %i.aws, 1
  call void @_ZdlPvm(ptr noundef %i.awq, i64 noundef %i.awt) #42
  br label %.body1060

.body1060:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732, %bb.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1056, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1050
  %.pn261.pn = phi { ptr, i32 } [ %i.ave, %bb.eu ], [ %.pn261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i733 ], [ %i.avp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1056 ], [ %i.ave, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1050 ], [ %.pn261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit732 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #41
  %i.awu = load ptr, ptr %93, align 8, !tbaa !19733 ; 2 uses
  %i.awv = icmp eq ptr %i.awu, %i.fs
  br i1 %i.awv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit738, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i736

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i736: ; preds = %.body1060
  %i.aww = load i64, ptr %i.fs, align 8, !tbaa !19747
  %i.awx = add i64 %i.aww, 1
  call void @_ZdlPvm(ptr noundef %i.awu, i64 noundef %i.awx) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit738

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit738: ; preds = %.body1060, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i736
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #41
  br label %common.resume

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit363: ; preds = %bb.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit729, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit706
  br i1 %.not2551340, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit746, label %bb.fa

bb.fa:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit363
  %i.awy = load i64, ptr %i.ame, align 8, !tbaa !19741 ; 2 uses
  %i.awz = icmp slt i64 %i.awy, 0
  br i1 %i.awz, label %bb.fb, label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i739

bb.fb:                                            ; preds = %bb.fa
  %i.axa = shl i64 %i.awy, 1
  %i.axb = inttoptr i64 %i.axa to ptr             ; 2 uses
  %.sroa.0.0.copyload.i.i743 = load ptr, ptr %i.axb, align 8, !tbaa !19871
  %.sroa.3.0..sroa_idx.i.i744 = getelementptr inbounds nuw i8, ptr %i.axb, i64 8
  %.sroa.3.0.copyload.i.i745 = load i64, ptr %.sroa.3.0..sroa_idx.i.i744, align 8, !tbaa !19741
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i739

_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i739: ; preds = %bb.fb, %bb.fa
  %.sroa.3.0.i.i740 = phi i64 [ %.sroa.3.0.copyload.i.i745, %bb.fb ], [ 64, %bb.fa ]
  %.sroa.0.0.i.i741 = phi ptr [ %.sroa.0.0.copyload.i.i743, %bb.fb ], [ %i.ame, %bb.fa ]
  %i.axc = icmp ult i64 %.sroa.7.01754, %.sroa.3.0.i.i740
  br i1 %i.axc, label %bb.fc, label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit746

bb.fc:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i739
  %i.axd = lshr i64 %.sroa.7.01754, 6
  %i.axe = and i64 %.sroa.7.01754, 63
  %i.axf = shl nuw i64 1, %i.axe
  %i.axg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i741, i64 %i.axd
  %i.axh = load i64, ptr %i.axg, align 8, !tbaa !19741
  %i.axi = and i64 %i.axh, %i.axf
  %i.axj = icmp ne i64 %i.axi, 0
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit746

_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit746: ; preds = %bb.fc, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i739, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit363
  %i.axk = phi i1 [ false, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit363 ], [ %i.axj, %bb.fc ], [ false, %_ZNK5folly28RegexMatchCacheDynamicBitset13get_bit_span_Ev.exit.i739 ] ; 2 uses
  %i.axl = load i64, ptr %i.b, align 8, !tbaa !19762 ; 2 uses
  %i.axm = lshr i64 %i.axl, 8
  switch i64 %i.axm, label %bb.fe [
    i64 0, label %_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_.exit.thread
    i64 1, label %bb.fd
  ]

bb.fd:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit746
  %i.axn = load i64, ptr %i.an, align 8, !tbaa !19849
  %i.axo = and i64 %i.axn, -8
  %i.axp = inttoptr i64 %i.axo to ptr
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !19808 ; 2 uses
  %i.axr = load i256, ptr %i.apg, align 8
  %i.axs = load i256, ptr %i.axq, align 8
  %i.axt = icmp ne i256 %i.axr, %i.axs
  %i.axu = zext i1 %i.axt to i32
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.axu, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %.loopexit1442, label %_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_.exit.thread

bb.fe:                                            ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit746
  %i.axv = load i64, ptr %i.apg, align 8, !tbaa !19741 ; 2 uses
  %i.axw = lshr i64 %i.axv, 56
  %i.axx = or i64 %i.axw, 128                     ; 2 uses
  %i.axy = shl nuw nsw i64 %i.axx, 1
  %i.axz = or disjoint i64 %i.axy, 1
  %i.aya = trunc nuw i64 %i.axx to i8
  %i.ayb = insertelement <16 x i8> poison, i8 %i.aya, i64 0
  %i.ayc = shufflevector <16 x i8> %i.ayb, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ayd = and i64 %i.axl, 255                    ; 2 uses
  %i.aye = shl nuw i64 1, %i.ayd
  %i.ayf = load ptr, ptr %i.a, align 8, !tbaa !19803
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fi, %bb.fe
  %.0.i60.i = phi i64 [ %i.axv, %bb.fe ], [ %i.azd, %bb.fi ] ; 2 uses
  %.023.i59.i = phi i64 [ %i.aye, %bb.fe ], [ %i.azc, %bb.fi ]
  %i.ayg = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i60.i, i64 range(i64 0, 256) %i.ayd)
  %i.ayh = getelementptr inbounds nuw [128 x i8], ptr %i.ayf, i64 %i.ayg ; 4 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 16
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayh, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.ayj, i32 0, i32 3, i32 1)
  %i.ayk = load <16 x i8>, ptr %i.ayh, align 16   ; 2 uses
  %i.ayl = icmp eq <16 x i8> %i.ayk, %i.ayc
  %i.aym = bitcast <16 x i1> %i.ayl to i16
  %i.ayn = and i16 %i.aym, 16383
  %i.ayo = zext nneg i16 %i.ayn to i32
  %i.ayp = icmp ne ptr %i.ayh, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ayq = extractelement <16 x i8> %i.ayk, i64 15
  br label %.critedge.i.i747

.critedge.i.i747:                                 ; preds = %bb.fg, %bb.ff
  %.sroa.019.0.i748 = phi i32 [ %i.ayo, %bb.ff ], [ %i.ayt, %bb.fg ] ; 4 uses
  %.not.i749 = icmp eq i32 %.sroa.019.0.i748, 0
  br i1 %.not.i749, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %.critedge.i.i747
  %i.ayr = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.i748, i1 true)
  %i.ays = add nsw i32 %.sroa.019.0.i748, -1
  %i.ayt = and i32 %i.ays, %.sroa.019.0.i748
  %i.ayu = zext nneg i32 %i.ayr to i64
  call void @llvm.assume(i1 %i.ayp)
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %i.ayi, i64 %i.ayu
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !19808 ; 2 uses
  %i.ayx = load i256, ptr %i.apg, align 8
  %i.ayy = load i256, ptr %i.ayw, align 8
  %i.ayz = icmp ne i256 %i.ayx, %i.ayy
  %i.aza = zext i1 %i.ayz to i32
  %.not9.i.i.i.i.i.i.i.i11.i = icmp eq i32 %i.aza, 0
  br i1 %.not9.i.i.i.i.i.i.i.i11.i, label %.loopexit1442, label %.critedge.i.i747, !prof !19751, !llvm.loop !21425

bb.fh:                                            ; preds = %.critedge.i.i747
  %i.azb = icmp eq i8 %i.ayq, 0
  br i1 %i.azb, label %_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_.exit.thread, label %bb.fi, !prof !19751

bb.fi:                                            ; preds = %bb.fh
  %i.azc = add i64 %.023.i59.i, -1                ; 2 uses
  %i.azd = add i64 %i.axz, %.0.i60.i
  %.not.i.i750 = icmp eq i64 %i.azc, 0
  br i1 %.not.i.i750, label %_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_.exit.thread, label %bb.ff, !llvm.loop !21426

_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_.exit.thread: ; preds = %bb.fi, %bb.fh, %bb.fd, %_ZNK5folly28RegexMatchCacheDynamicBitset9get_valueEm.exit746
  br i1 %i.axk, label %.critedge, label %bb.fz

.loopexit1442:                                    ; preds = %bb.fg, %bb.fd
  %i.aze = phi ptr [ %i.axq, %bb.fd ], [ %i.ayw, %bb.fg ] ; 3 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 40
  %i.azg = getelementptr inbounds nuw i8, ptr %i.aze, i64 56
  %i.azh = load i64, ptr %i.azg, align 8, !tbaa !19762 ; 2 uses
  %i.azi = icmp ult i64 %i.azh, 256
  br i1 %i.azi, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit432, label %bb.fj

bb.fj:                                            ; preds = %.loopexit1442
  %i.azj = load ptr, ptr %.sroa.01185.01759, align 8, !tbaa !19858 ; 2 uses
  %i.azk = ptrtoint ptr %i.azj to i64             ; 2 uses
  %i.azl = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.azk) ; 2 uses
  %i.azm = lshr i64 %i.azl, 24
  %i.azn = or i64 %i.azm, 128                     ; 2 uses
  %i.azo = add i64 %i.azl, %i.azk
  %i.azp = shl nuw nsw i64 %i.azn, 1
  %i.azq = or disjoint i64 %i.azp, 1
  %i.azr = trunc nuw i64 %i.azn to i8
  %i.azs = insertelement <16 x i8> poison, i8 %i.azr, i64 0
  %i.azt = shufflevector <16 x i8> %i.azs, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.azu = and i64 %i.azh, 255                    ; 2 uses
  %i.azv = shl nuw i64 1, %i.azu
  %i.azw = getelementptr inbounds nuw i8, ptr %i.aze, i64 48
  %i.azx = load ptr, ptr %i.azw, align 8, !tbaa !19786
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fn
  %.0.i4181752 = phi i64 [ %i.azo, %bb.fj ], [ %i.bav, %bb.fn ] ; 2 uses
  %.022.i4171751 = phi i64 [ %i.azv, %bb.fj ], [ %i.bau, %bb.fn ]
  %i.azy = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i4181752, i64 range(i64 0, 256) %i.azu)
  %i.azz = getelementptr inbounds nuw [64 x i8], ptr %i.azx, i64 %i.azy ; 3 uses
  %i.baa = load <16 x i8>, ptr %i.azz, align 16   ; 2 uses
  %i.bab = icmp eq <16 x i8> %i.baa, %i.azt
  %i.bac = bitcast <16 x i1> %i.bab to i16
  %i.bad = and i16 %i.bac, 4095
  %i.bae = zext nneg i16 %i.bad to i32
  %i.baf = icmp ne ptr %i.azz, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bag = getelementptr inbounds nuw i8, ptr %i.azz, i64 16
  %i.bah = extractelement <16 x i8> %i.baa, i64 15
  br label %.critedge.i420

.critedge.i420:                                   ; preds = %bb.fl, %bb.fk
  %.sroa.01299.0 = phi i32 [ %i.bae, %bb.fk ], [ %i.bak, %bb.fl ] ; 4 uses
  %.not1433 = icmp eq i32 %.sroa.01299.0, 0
  br i1 %.not1433, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %.critedge.i420
  %i.bai = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.01299.0, i1 true)
  %i.baj = add nsw i32 %.sroa.01299.0, -1
  %i.bak = and i32 %i.baj, %.sroa.01299.0
  %i.bal = zext nneg i32 %i.bai to i64
  call void @llvm.assume(i1 %i.baf)
  %i.bam = getelementptr inbounds nuw [4 x i8], ptr %i.bag, i64 %i.bal
  %i.ban = load ptr, ptr %i.azf, align 8, !tbaa !21251
  %i.bao = load i32, ptr %i.bam, align 4, !tbaa !7
  %i.bap = zext i32 %i.bao to i64
  %i.baq = getelementptr inbounds nuw [8 x i8], ptr %i.ban, i64 %i.bap
  %i.bar = load ptr, ptr %i.baq, align 8, !tbaa !19858
  %i.bas = icmp eq ptr %i.azj, %i.bar
  br i1 %i.bas, label %.critedge, label %.critedge.i420, !prof !19751, !llvm.loop !21252

bb.fm:                                            ; preds = %.critedge.i420
  %i.bat = icmp eq i8 %i.bah, 0
  br i1 %i.bat, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit432, label %bb.fn, !prof !19751

bb.fn:                                            ; preds = %bb.fm
  %i.bau = add i64 %.022.i4171751, -1             ; 2 uses
  %i.bav = add i64 %i.azq, %.0.i4181752
  %.not.i419 = icmp eq i64 %i.bau, 0
  br i1 %.not.i419, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit432, label %bb.fk, !llvm.loop !21253

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit432: ; preds = %bb.fn, %bb.fm, %.loopexit1442
  br i1 %i.axk, label %.critedge, label %bb.fz

.critedge:                                        ; preds = %bb.fl, %_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_.exit.thread, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit432
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #41
  %i.baw = load ptr, ptr %.sroa.01185.01759, align 8, !tbaa !19858 ; 2 uses
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !19733 ; 2 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.baw, i64 8
  %i.baz = load i64, ptr %i.bay, align 8, !tbaa !19738
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41, !noalias !21427
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bax, i64 %i.baz
  store ptr %i.ga, ptr %18, align 8, !tbaa !19863, !alias.scope !21430, !noalias !21427
  store i64 0, ptr %i.gb, align 8, !tbaa !19738, !alias.scope !21430, !noalias !21427
  store i8 0, ptr %i.ga, align 8, !tbaa !19747, !alias.scope !21430, !noalias !21427
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.bax, ptr %i.bba, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %.noexc.i1067 unwind label %bb.fo, !noalias !21427

bb.fo:                                            ; preds = %.critedge
  %i.bbb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bbc = load ptr, ptr %18, align 8, !tbaa !19733, !alias.scope !21430, !noalias !21427 ; 2 uses
  %i.bbd = icmp eq ptr %i.bbc, %i.ga
  br i1 %i.bbd, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1063

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1063: ; preds = %bb.fo
  %i.bbe = load i64, ptr %i.ga, align 8, !tbaa !19747, !alias.scope !21430, !noalias !21427
  %i.bbf = add i64 %i.bbe, 1
  call void @_ZdlPvm(ptr noundef %i.bbc, i64 noundef %i.bbf) #42, !noalias !21427
  br label %common.resume

.noexc.i1067:                                     ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41, !noalias !21433
  %i.bbg = load ptr, ptr %18, align 8, !tbaa !19733, !noalias !21427
  %i.bbh = load i64, ptr %i.gb, align 8, !tbaa !19738, !noalias !21427
  store ptr %i.bbg, ptr %17, align 16, !tbaa !19747, !noalias !21427
  store i64 %i.bbh, ptr %i.gc, align 8, !tbaa !19747, !noalias !21427
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %96, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %17)
          to label %bb.fp unwind label %bb.fq

bb.fp:                                            ; preds = %.noexc.i1067
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41, !noalias !21433
  %i.bbi = load ptr, ptr %18, align 8, !tbaa !19733, !noalias !21427 ; 2 uses
  %i.bbj = icmp eq ptr %i.bbi, %i.ga
  br i1 %i.bbj, label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1073, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1071

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1071: ; preds = %bb.fp
  %i.bbk = load i64, ptr %i.ga, align 8, !tbaa !19747, !noalias !21427
  %i.bbl = add i64 %i.bbk, 1
  call void @_ZdlPvm(ptr noundef %i.bbi, i64 noundef %i.bbl) #42
  br label %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1073

bb.fq:                                            ; preds = %.noexc.i1067
  %i.bbm = landingpad { ptr, i32 }
          cleanup
  %i.bbn = load ptr, ptr %18, align 8, !tbaa !19733, !noalias !21427 ; 2 uses
  %i.bbo = icmp eq ptr %i.bbn, %i.ga
  br i1 %i.bbo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1069, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1068

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1068: ; preds = %bb.fq
  %i.bbp = load i64, ptr %i.ga, align 8, !tbaa !19747, !noalias !21427
  %i.bbq = add i64 %i.bbp, 1
  call void @_ZdlPvm(ptr noundef %i.bbn, i64 noundef %i.bbq) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1069

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1069: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1068
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41, !noalias !21427
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1073: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1071
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41, !noalias !21427
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01165, ptr noundef nonnull align 8 dereferenceable(32) %i.apg, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01165, i64 32, i1 false)
  %i.bbr = load ptr, ptr %2, align 8, !tbaa !14
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 16
  %i.bbt = load ptr, ptr %i.bbs, align 8
  %i.bbu = invoke { i64, ptr } %i.bbt(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %bb.fr unwind label %bb.fw, !inline_history !21247 ; 2 uses

bb.fr:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1073
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  %i.bbv = extractvalue { i64, ptr } %i.bbu, 0
  %i.bbw = extractvalue { i64, ptr } %i.bbu, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41, !noalias !21436
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbw, i64 %i.bbv
  store ptr %i.gd, ptr %16, align 8, !tbaa !19863, !alias.scope !21439, !noalias !21436
  store i64 0, ptr %i.ge, align 8, !tbaa !19738, !alias.scope !21439, !noalias !21436
  store i8 0, ptr %i.gd, align 8, !tbaa !19747, !alias.scope !21439, !noalias !21436
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.bbw, ptr %i.bbx, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %.noexc.i1078 unwind label %bb.fs, !noalias !21436

bb.fs:                                            ; preds = %bb.fr
  %i.bby = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bbz = load ptr, ptr %16, align 8, !tbaa !19733, !alias.scope !21439, !noalias !21436 ; 2 uses
  %i.bca = icmp eq ptr %i.bbz, %i.gd
  br i1 %i.bca, label %.body1084, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1074

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1074: ; preds = %bb.fs
  %i.bcb = load i64, ptr %i.gd, align 8, !tbaa !19747, !alias.scope !21439, !noalias !21436
  %i.bcc = add i64 %i.bcb, 1
  call void @_ZdlPvm(ptr noundef %i.bbz, i64 noundef %i.bcc) #42, !noalias !21436
  br label %.body1084

.noexc.i1078:                                     ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41, !noalias !21442
  %i.bcd = load ptr, ptr %16, align 8, !tbaa !19733, !noalias !21436
  %i.bce = load i64, ptr %i.ge, align 8, !tbaa !19738, !noalias !21436
  store ptr %i.bcd, ptr %15, align 16, !tbaa !19747, !noalias !21436
  store i64 %i.bce, ptr %i.gf, align 8, !tbaa !19747, !noalias !21436
end_hunk_1
begin_hunk_2_@_ZNK5folly15RegexMatchCache11consistencyERNS0_24ConsistencyReportMatcherERKNS0_6KeyMapENS_11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE:bb.a
  %i.brh = add i64 %i.brg, 1
  call void @_ZdlPvm(ptr noundef %i.bre, i64 noundef %i.brh) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1128: ; preds = %bb.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1127
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41, !noalias !21481
  br label %common.resume

_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1132: ; preds = %bb.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1130
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41, !noalias !21481
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #41
  %i.bri = load ptr, ptr %i.bgn, align 8, !tbaa !19733 ; 2 uses
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bgn, i64 8
  %i.brk = load i64, ptr %i.brj, align 8, !tbaa !19738
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41, !noalias !21490
  %i.brl = getelementptr inbounds nuw i8, ptr %i.bri, i64 %i.brk
  store ptr %i.ajc, ptr %6, align 8, !tbaa !19863, !alias.scope !21493, !noalias !21490
  store i64 0, ptr %i.ajd, align 8, !tbaa !19738, !alias.scope !21493, !noalias !21490
  store i8 0, ptr %i.ajc, align 8, !tbaa !19747, !alias.scope !21493, !noalias !21490
  invoke void @_ZN5folly7cEscapeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvNS_5RangeIPKcEERT_(ptr %i.bri, ptr %i.brl, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i1137 unwind label %bb.hy, !noalias !21490

bb.hy:                                            ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1132
  %i.brm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.brn = load ptr, ptr %6, align 8, !tbaa !19733, !alias.scope !21493, !noalias !21490 ; 2 uses
  %i.bro = icmp eq ptr %i.brn, %i.ajc
  br i1 %i.bro, label %.body1143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1133: ; preds = %bb.hy
  %i.brp = load i64, ptr %i.ajc, align 8, !tbaa !19747, !alias.scope !21493, !noalias !21490
  %i.brq = add i64 %i.brp, 1
  call void @_ZdlPvm(ptr noundef %i.brn, i64 noundef %i.brq) #42, !noalias !21490
  br label %.body1143

.noexc.i1137:                                     ; preds = %_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit1132
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41, !noalias !21496
  %i.brr = load ptr, ptr %6, align 8, !tbaa !19733, !noalias !21490
  %i.brs = load i64, ptr %i.ajd, align 8, !tbaa !19738, !noalias !21490
  store ptr %i.brr, ptr %5, align 16, !tbaa !19747, !noalias !21490
  store i64 %i.brs, ptr %i.aje, align 8, !tbaa !19747, !noalias !21490
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %105, ptr nonnull @.str.8, i64 4, i64 13, ptr nonnull %5)
          to label %bb.hz unwind label %bb.ia

bb.hz:                                            ; preds = %.noexc.i1137
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41, !noalias !21496
  %i.brt = load ptr, ptr %6, align 8, !tbaa !19733, !noalias !21490 ; 2 uses
  %i.bru = icmp eq ptr %i.brt, %i.ajc
  br i1 %i.bru, label %.noexc302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1141: ; preds = %bb.hz
  %i.brv = load i64, ptr %i.ajc, align 8, !tbaa !19747, !noalias !21490
  %i.brw = add i64 %i.brv, 1
  call void @_ZdlPvm(ptr noundef %i.brt, i64 noundef %i.brw) #42
  br label %.noexc302

bb.ia:                                            ; preds = %.noexc.i1137
  %i.brx = landingpad { ptr, i32 }
          cleanup
  %i.bry = load ptr, ptr %6, align 8, !tbaa !19733, !noalias !21490 ; 2 uses
  %i.brz = icmp eq ptr %i.bry, %i.ajc
  br i1 %i.brz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1138: ; preds = %bb.ia
  %i.bsa = load i64, ptr %i.ajc, align 8, !tbaa !19747, !noalias !21490
  %i.bsb = add i64 %i.bsa, 1
  call void @_ZdlPvm(ptr noundef %i.bry, i64 noundef %i.bsb) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1139: ; preds = %bb.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i1138
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41, !noalias !21490
  br label %.body1143

.noexc302:                                        ; preds = %bb.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1141
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41, !noalias !21490
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #41, !noalias !21499
  %i.bsc = load ptr, ptr %104, align 8, !tbaa !19733
  %i.bsd = load i64, ptr %i.ajf, align 8, !tbaa !19738
  store ptr %i.bsc, ptr %64, align 16, !tbaa !19747
  store i64 %i.bsd, ptr %i.ajg, align 8, !tbaa !19747
  %i.bse = load ptr, ptr %105, align 8, !tbaa !19733
  %i.bsf = load i64, ptr %i.aji, align 8, !tbaa !19738
  store ptr %i.bse, ptr %i.ajh, align 16, !tbaa !19747
  store i64 %i.bsf, ptr %i.ajj, align 8, !tbaa !19747
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %103, ptr nonnull @.str.287, i64 39, i64 221, ptr nonnull %64)
          to label %bb.ib unwind label %bb.ic

bb.ib:                                            ; preds = %.noexc302
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #41, !noalias !21499
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %103, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit876 unwind label %bb.id, !inline_history !21246

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit876: ; preds = %bb.ib
  %i.bsg = load ptr, ptr %103, align 8, !tbaa !19733 ; 2 uses
  %i.bsh = icmp eq ptr %i.bsg, %i.ajk
  br i1 %i.bsh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit879, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i877

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i877: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit876
  %i.bsi = load i64, ptr %i.ajk, align 8, !tbaa !19747
  %i.bsj = add i64 %i.bsi, 1
  call void @_ZdlPvm(ptr noundef %i.bsg, i64 noundef %i.bsj) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit879

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit879: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit876, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i877
  %i.bsk = load ptr, ptr %105, align 8, !tbaa !19733 ; 2 uses
  %i.bsl = icmp eq ptr %i.bsk, %i.ajl
  br i1 %i.bsl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit882, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i880

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i880: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit879
  %i.bsm = load i64, ptr %i.ajl, align 8, !tbaa !19747
  %i.bsn = add i64 %i.bsm, 1
  call void @_ZdlPvm(ptr noundef %i.bsk, i64 noundef %i.bsn) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit882

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit882: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit879, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i880
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #41
  %i.bso = load ptr, ptr %104, align 8, !tbaa !19733 ; 2 uses
  %i.bsp = icmp eq ptr %i.bso, %i.ajm
  br i1 %i.bsp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit885, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i883

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i883: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit882
  %i.bsq = load i64, ptr %i.ajm, align 8, !tbaa !19747
  %i.bsr = add i64 %i.bsq, 1
  call void @_ZdlPvm(ptr noundef %i.bso, i64 noundef %i.bsr) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit885

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit885: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit882, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i883
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #41
  br label %bb.ie

bb.ic:                                            ; preds = %.noexc302
  %i.bss = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888

bb.id:                                            ; preds = %bb.ib
  %i.bst = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bsu = load ptr, ptr %103, align 8, !tbaa !19733 ; 2 uses
  %i.bsv = icmp eq ptr %i.bsu, %i.ajk
  br i1 %i.bsv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i886

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i886: ; preds = %bb.id
  %i.bsw = load i64, ptr %i.ajk, align 8, !tbaa !19747
  %i.bsx = add i64 %i.bsw, 1
  call void @_ZdlPvm(ptr noundef %i.bsu, i64 noundef %i.bsx) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888: ; preds = %bb.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i886, %bb.ic
  %.pn251 = phi { ptr, i32 } [ %i.bss, %bb.ic ], [ %i.bst, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i886 ], [ %i.bst, %bb.id ] ; 2 uses
  %i.bsy = load ptr, ptr %105, align 8, !tbaa !19733 ; 2 uses
  %i.bsz = icmp eq ptr %i.bsy, %i.ajl
  br i1 %i.bsz, label %.body1143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i889

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i889: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888
  %i.bta = load i64, ptr %i.ajl, align 8, !tbaa !19747
  %i.btb = add i64 %i.bta, 1
  call void @_ZdlPvm(ptr noundef %i.bsy, i64 noundef %i.btb) #42
  br label %.body1143

.body1143:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888, %bb.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i889, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1133
  %.pn251.pn = phi { ptr, i32 } [ %i.brm, %bb.hy ], [ %.pn251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i889 ], [ %i.brx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1139 ], [ %i.brm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1133 ], [ %.pn251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit888 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #41
  %i.btc = load ptr, ptr %104, align 8, !tbaa !19733 ; 2 uses
  %i.btd = icmp eq ptr %i.btc, %i.ajm
  br i1 %i.btd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit894, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i892

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i892: ; preds = %.body1143
  %i.bte = load i64, ptr %i.ajm, align 8, !tbaa !19747
  %i.btf = add i64 %i.bte, 1
  call void @_ZdlPvm(ptr noundef %i.btc, i64 noundef %i.btf) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit894

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit894: ; preds = %.body1143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i892
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #41
  br label %common.resume

bb.ie:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE4findISB_EENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit345, %bb.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit885
  %i.btg = icmp eq ptr %i.bge, %.sroa.01156.01765
  br i1 %i.btg, label %._crit_edge1767, label %.backedge, !prof !19748
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.c = lshr i64 %i.b, 8
  switch i64 %i.c, label %bb.c [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19849
  %i.f = and i64 %i.e, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19808 ; 2 uses
  %i.i = load i256, ptr %1, align 8
  %i.j = load i256, ptr %i.h, align 8
  %i.k = icmp ne i256 %i.i, %i.j
  %i.l = zext i1 %i.k to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread43, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.m = load i64, ptr %1, align 8, !tbaa !19741  ; 2 uses
  %i.n = lshr i64 %i.m, 56
  %i.o = or i64 %i.n, 128                         ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = or disjoint i64 %i.p, 1
  %i.r = trunc nuw i64 %i.o to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = and i64 %i.b, 255                        ; 2 uses
  %i.v = shl nuw i64 1, %i.u
  %i.w = load ptr, ptr %0, align 8, !tbaa !19803
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.g
  %.0.i60 = phi i64 [ %i.m, %bb.c ], [ %i.au, %bb.g ] ; 2 uses
  %.023.i59 = phi i64 [ %i.v, %bb.c ], [ %i.at, %bb.g ]
  %i.x = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i60, i64 range(i64 0, 256) %i.u)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %i.x ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aa, i32 0, i32 3, i32 1)
  %i.ab = load <16 x i8>, ptr %i.y, align 16      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.ab, %i.t
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = and i16 %i.ad, 16383
  %i.af = zext nneg i16 %i.ae to i32
  %i.ag = icmp ne ptr %i.y, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ah = extractelement <16 x i8> %i.ab, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %.sroa.019.0 = phi i32 [ %i.af, %bb.d ], [ %i.ak, %bb.e ] ; 4 uses
  %.not = icmp eq i32 %.sroa.019.0, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge.i
  %i.ai = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0, i1 true)
  %i.aj = add nsw i32 %.sroa.019.0, -1
  %i.ak = and i32 %i.aj, %.sroa.019.0
  %i.al = zext nneg i32 %i.ai to i64
  tail call void @llvm.assume(i1 %i.ag)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19808 ; 2 uses
  %i.ao = load i256, ptr %1, align 8
  %i.ap = load i256, ptr %i.an, align 8
  %i.aq = icmp ne i256 %i.ao, %i.ap
  %i.ar = zext i1 %i.aq to i32
  %.not9.i.i.i.i.i.i.i.i11 = icmp eq i32 %i.ar, 0
  br i1 %.not9.i.i.i.i.i.i.i.i11, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread43, label %.critedge.i, !prof !19751, !llvm.loop !21425

bb.f:                                             ; preds = %.critedge.i
  %i.as = icmp eq i8 %i.ah, 0
  br i1 %i.as, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread, label %bb.g, !prof !19751

bb.g:                                             ; preds = %bb.f
  %i.at = add i64 %.023.i59, -1                   ; 2 uses
  %i.au = add i64 %i.q, %.0.i60
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread, label %bb.d, !llvm.loop !21426

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread43: ; preds = %bb.e, %bb.b
  %i.av = phi ptr [ %i.h, %bb.b ], [ %i.an, %bb.e ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread: ; preds = %bb.f, %bb.g, %bb.b, %bb.a, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread43
  %i.ax = phi ptr [ %i.aw, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.thread43 ], [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.g ], [ null, %bb.f ]
  ret ptr %i.ax
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5folly15RegexMatchCache8hasRegexERKNS_18RegexMatchCacheKeyE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #32 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.c = lshr i64 %i.b, 8
  switch i64 %i.c, label %.noexc3 [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE8findImplIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.i
    i64 1, label %.noexc
  ]

.noexc:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19849
  %i.f = and i64 %i.e, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19808
  %i.i = load i256, ptr %1, align 8
  %i.j = load i256, ptr %i.h, align 8
  %i.k = icmp ne i256 %i.i, %i.j
  %i.l = zext i1 %i.k to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE8findImplIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.i

.noexc3:                                          ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i64, ptr %1, align 8, !tbaa !19741  ; 2 uses
  %i.o = lshr i64 %i.n, 56
  %i.p = or i64 %i.o, 128                         ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = or disjoint i64 %i.q, 1
  %i.s = trunc nuw i64 %i.p to i8
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.v = and i64 %i.b, 255                        ; 2 uses
  %i.w = shl nuw i64 1, %i.v
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !19803
  br label %.noexc5

.noexc5:                                          ; preds = %.noexc3, %.noexc9
  %.0.i.i36 = phi i64 [ %i.n, %.noexc3 ], [ %i.av, %.noexc9 ] ; 2 uses
  %.023.i.i35 = phi i64 [ %i.w, %.noexc3 ], [ %i.au, %.noexc9 ]
  %i.y = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i36, i64 range(i64 0, 256) %i.v)
  %i.z = getelementptr inbounds nuw [128 x i8], ptr %i.x, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ab, i32 0, i32 3, i32 1)
  %i.ac = load <16 x i8>, ptr %i.z, align 16      ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.ac, %i.u
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = and i16 %i.ae, 16383
  %i.ag = zext nneg i16 %i.af to i32
  %i.ah = icmp ne ptr %i.z, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ai = extractelement <16 x i8> %i.ac, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.noexc8, %.noexc5
  %.sroa.014.0 = phi i32 [ %i.ag, %.noexc5 ], [ %i.al, %.noexc8 ] ; 4 uses
  %.not = icmp eq i32 %.sroa.014.0, 0
  br i1 %.not, label %bb.b, label %.noexc8

.noexc8:                                          ; preds = %.critedge.i.i
  %i.aj = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.014.0, i1 true)
  %i.ak = add nsw i32 %.sroa.014.0, -1
  %i.al = and i32 %i.ak, %.sroa.014.0
  %i.am = zext nneg i32 %i.aj to i64
  tail call void @llvm.assume(i1 %i.ah)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19808
  %i.ap = load i256, ptr %1, align 8
  %i.aq = load i256, ptr %i.ao, align 8
  %i.ar = icmp ne i256 %i.ap, %i.aq
  %i.as = zext i1 %i.ar to i32
  %.not9.i.i.i.i.i.i.i.i11 = icmp eq i32 %i.as, 0
  br i1 %.not9.i.i.i.i.i.i.i.i11, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE8findImplIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.i, label %.critedge.i.i, !prof !19751, !llvm.loop !21425

bb.b:                                             ; preds = %.critedge.i.i
  %i.at = icmp eq i8 %i.ai, 0
  br i1 %i.at, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE8findImplIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.i, label %.noexc9, !prof !19751

.noexc9:                                          ; preds = %bb.b
  %i.au = add i64 %.023.i.i35, -1                 ; 2 uses
  %i.av = add i64 %i.r, %.0.i.i36
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE8findImplIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.i, label %.noexc5, !llvm.loop !21426

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE8findImplIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmERKT_NS8_8PrefetchE.exit.i: ; preds = %.noexc9, %bb.b, %.noexc8, %.noexc, %bb.a
  %.sroa.013.1 = phi i1 [ %.not9.i.i.i.i.i.i.i.i, %.noexc ], [ false, %bb.a ], [ true, %.noexc8 ], [ false, %bb.b ], [ false, %.noexc9 ]
  ret i1 %.sroa.013.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15RegexMatchCache8addRegexERKNS_18RegexMatchCacheKeyE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.456", align 8    ; 5 uses
  %3 = alloca %"class.std::tuple.419", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.227", align 1    ; 3 uses
  %5 = alloca %"struct.std::pair.388", align 8    ; 5 uses
  %6 = alloca %"class.std::tuple.160", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.227", align 1    ; 3 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %8 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41, !noalias !21502
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41, !noalias !21502
  store ptr %1, ptr %6, align 8, !tbaa !19879, !alias.scope !21505, !noalias !21502
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41, !noalias !21502
  %i.c = load i64, ptr %1, align 8, !tbaa !19741, !noalias !21508 ; 2 uses
  %i.d = lshr i64 %i.c, 56
  %i.e = or i64 %i.d, 128
  call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.388") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 %i.c, i64 %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7), !noalias !21502
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41, !noalias !21502
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41, !noalias !21502
  %.sroa.03.0.copyload.i = load ptr, ptr %5, align 8, !tbaa !21511, !noalias !21502
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !20925, !range !20413, !noalias !21513, !noundef !179
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41, !noalias !21502
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.ay

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.i = load ptr, ptr %.sroa.03.0.copyload.i, align 8, !tbaa !19808
  store ptr %i.i, ptr %i.a, align 8, !tbaa !19879
  %i.j = invoke { i64, i8 } @_ZN5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract = extractvalue { i64, i8 } %i.j, 0 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19762
  %i.m = icmp ult i64 %i.l, 256
  br i1 %i.m, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit52

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41, !noalias !21516
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41, !noalias !21516
  store ptr %i.a, ptr %3, align 8, !tbaa !21519, !alias.scope !21521, !noalias !21516
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !21516
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !19879, !noalias !21524
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.q) ; 2 uses
  %i.s = lshr i64 %i.r, 24
  %i.t = or i64 %i.s, 128
  %i.u = add i64 %i.r, %i.q
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNS_18RegexMatchCacheKeyENS_15RegexMatchCache23StringQueueReverseEntryEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS6_JRKSt21piecewise_construct_tSt5tupleIJRKS6_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.456") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 %i.u, i64 %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !21516
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41, !noalias !21516
  %i.v = load ptr, ptr %2, align 8, !tbaa !21527, !noalias !21516 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !19785, !noalias !21516, !nonnull !179, !noundef !179
  %i.y = load i32, ptr %i.v, align 4, !tbaa !7, !noalias !21516
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.z
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc
  %.sroa.0.0.i.i = phi ptr [ %i.aa, %bb.f ], [ null, %.noexc ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !20925, !range !20413, !noalias !21529, !noundef !179
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41, !noalias !21516
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.critedge, label %bb.h, !prof !19751

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  invoke void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull @.str.288, i32 noundef 301)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %8)
          to label %bb.j unwind label %bb.m       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.289, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.290, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #43
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit52

bb.l:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit52

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.j, %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #43
  unreachable

.critedge:                                        ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.am = load i64, ptr %i.al, align 8, !tbaa !19739 ; 2 uses
  %i.an = and i64 %i.am, -16                      ; 2 uses
  %.not85 = icmp eq i64 %i.an, 0
  br i1 %.not85, label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = and i64 %i.am, 15
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ar = icmp eq i64 %.fca.0.extract, 63
  %i.as = lshr i64 %.fca.0.extract, 6
  %i.at = and i64 %.fca.0.extract, 63
  %i.au = shl nuw i64 1, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ax = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.fca.0.extract, i1 false)
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = and i64 %i.ay, 63
  %i.ba = shl nuw i64 1, %i.az
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 128) ; 4 uses
  %i.bb = and i64 %.sroa.speculated.i, -8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16 ; 3 uses
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit

_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit: ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge, %.lr.ph
  %.sroa.9.087 = phi i64 [ %i.ap, %.lr.ph ], [ %.sroa.9.087.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge ] ; 3 uses
  %.sroa.055.086 = phi ptr [ %i.ao, %.lr.ph ], [ %.sroa.055.086.be, %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge ] ; 6 uses
  %i.be = load ptr, ptr %.sroa.055.086, align 8, !tbaa !19858, !noalias !21532 ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bg = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.bf) ; 2 uses
  %i.bh = lshr i64 %i.bg, 24
  %i.bi = or i64 %i.bh, 128                       ; 4 uses
  %i.bj = add i64 %i.bg, %i.bf                    ; 3 uses
  %i.bk = load i64, ptr %i.av, align 8, !tbaa !19762, !noalias !21537 ; 3 uses
  %i.bl = lshr i64 %i.bk, 8                       ; 3 uses
  %.not.i108 = icmp eq i64 %i.bl, 0
  %.pre.i = load ptr, ptr %i.aq, align 8, !tbaa !19793, !noalias !21537 ; 3 uses
  br i1 %.not.i108, label %.thread66.i, label %bb.n

bb.n:                                             ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit
  %i.bm = shl nuw nsw i64 %i.bi, 1
  %i.bn = or disjoint i64 %i.bm, 1
  %i.bo = trunc nuw i64 %i.bi to i8
  %i.bp = insertelement <16 x i8> poison, i8 %i.bo, i64 0
  %i.bq = shufflevector <16 x i8> %i.bp, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.br = and i64 %i.bk, 255                      ; 4 uses
  %i.bs = shl nuw i64 1, %i.br
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  %.0.i75.i = phi i64 [ %i.bj, %bb.n ], [ %i.cn, %bb.r ] ; 2 uses
  %.023.i74.i = phi i64 [ %i.bs, %bb.n ], [ %i.cm, %bb.r ]
  %i.bt = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i75.i, i64 range(i64 0, 256) %i.br)
end_hunk_2
begin_hunk_3_@_ZN5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS3_:bb.a
  %i.af = icmp ult i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.d, label %bb.e, !prof !19748

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly6detail16throw_exception_ISt12length_errorJPKcEEEvDpT0_(ptr noundef nonnull @.str.9) #20
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ag = ashr exact i64 %i.ab, 2                 ; 2 uses
  %i.ah = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.ag) ; 2 uses
  %i.ai = icmp ugt i64 %i.ag, 1152921504606846975
  br i1 %i.ai, label %bb.f, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.273) #44
          to label %.noexc13 unwind label %bb.i

.noexc13:                                         ; preds = %bb.f
  unreachable

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i: ; preds = %bb.e
  %i.aj = shl nuw nsw i64 %i.ah, 3
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #45
          to label %.noexc14 unwind label %bb.i   ; 5 uses

.noexc14:                                         ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i

bb.g:                                             ; preds = %.noexc14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.p, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i: ; preds = %bb.g, %.noexc14
  %.not.i8.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i8.i.i, label %_ZNK5folly19grow_capacity_by_fnclISt6vectorImSaImEEEEvRT_NS5_9size_typeE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #42
  br label %_ZNK5folly19grow_capacity_by_fnclISt6vectorImSaImEEEEvRT_NS5_9size_typeE.exit

_ZNK5folly19grow_capacity_by_fnclISt6vectorImSaImEEEEvRT_NS5_9size_typeE.exit: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i.i, %bb.h
  store ptr %i.ak, ptr %0, align 8, !tbaa !19776
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ab ; 2 uses
  store ptr %i.am, ptr %i.y, align 8, !tbaa !19778
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ah
  store ptr %i.an, ptr %i.n, align 8, !tbaa !21224
  br label %._crit_edge

bb.i:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.i, %bb.f, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

._crit_edge:                                      ; preds = %bb.b, %_ZNK5folly19grow_capacity_by_fnclISt6vectorImSaImEEEEvRT_NS5_9size_typeE.exit
  %i.ap = phi ptr [ %i.am, %_ZNK5folly19grow_capacity_by_fnclISt6vectorImSaImEEEEvRT_NS5_9size_typeE.exit ], [ %i.z, %bb.b ] ; 2 uses
  %i.aq = phi ptr [ %i.ak, %_ZNK5folly19grow_capacity_by_fnclISt6vectorImSaImEEEEvRT_NS5_9size_typeE.exit ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.ar = icmp ne ptr %i.aq, %i.ap                ; 2 uses
  %i.as = zext i1 %i.ar to i8
  store i8 %i.as, ptr %i.a, align 1, !tbaa !20925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.at = load i64, ptr %i.u, align 8, !tbaa !19762
  %i.au = lshr i64 %i.at, 8
  %i.av = add nsw i64 %i.au, -1
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !19741
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !19778
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink = phi i64 [ %i.ay, %bb.k ], [ %i.av, %bb.j ] ; 4 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !19741
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 8
  store i64 %.sink, ptr %i.az, align 8, !tbaa !21585
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store i8 0, ptr %9, align 8, !tbaa !21580, !alias.scope !21587
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.a, ptr %i.ba, align 8, !tbaa !21590
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21592
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19871
  %i.bb = load ptr, ptr %1, align 8, !tbaa !19879
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41, !noalias !21594
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41, !noalias !21594
  store ptr %i.b, ptr %3, align 8, !tbaa !19871, !alias.scope !21597, !noalias !21594
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !21594
  %i.bd = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %.sink) ; 2 uses
  %i.be = lshr i64 %i.bd, 24
  %i.bf = or i64 %i.be, 128
  %i.bg = add i64 %i.bd, %.sink
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE19tryEmplaceValueImplImJRKSt21piecewise_construct_tSt5tupleIJRKmEESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkISI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.440") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 %i.bg, i64 %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit16

_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !21594
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41, !noalias !21594
  %.sroa.03.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !21600, !noalias !21594
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41, !noalias !21594
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 8
  store ptr %i.bb, ptr %i.bh, align 8, !tbaa !19879
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.n

_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit16: ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EE7executeEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.m

bb.m:                                             ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit16, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.bi, %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit16 ], [ %i.ao, %bb.i ]
  call void @_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  resume { ptr, i32 } %.pn.pn

bb.n:                                             ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS5_EUlvE0_Lb1EED2Ev.exit, %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !19741
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %i.bk, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %i.k, 1
  ret { i64, i8 } %.fca.1.insert
}

declare void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #33

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.388") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19762 ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !19803 ; 3 uses
  br i1 %.not, label %.thread66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.0.i77 = phi i64 [ %2, %bb.b ], [ %i.ah, %bb.f ] ; 2 uses
  %.023.i76 = phi i64 [ %i.j, %bb.b ], [ %i.ag, %bb.f ]
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i77, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.w = add nsw i32 %.sroa.042.0, -1
  %i.x = and i32 %i.w, %.sroa.042.0
  %i.y = zext nneg i32 %i.v to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19808
  %i.ab = load i256, ptr %4, align 8
  %i.ac = load i256, ptr %i.aa, align 8
  %i.ad = icmp ne i256 %i.ab, %i.ac
  %i.ae = zext i1 %i.ad to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %bb.g, label %.critedge.i, !prof !19751, !llvm.loop !21425

bb.e:                                             ; preds = %.critedge.i
  %i.af = icmp eq i8 %i.u, 0
  br i1 %i.af, label %.thread66, label %bb.f, !prof !19751

bb.f:                                             ; preds = %bb.e
  %i.ag = add i64 %.023.i76, -1                   ; 2 uses
  %i.ah = add i64 %i.e, %.0.i77
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !21426

bb.g:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.o

.thread66:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi86 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !19747
  %i.al = and i8 %i.ak, 15
  %i.am = zext nneg i8 %i.al to i64               ; 2 uses
  %i.an = shl i64 %i.am, %.pre-phi86              ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.an
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread66
  %i.ao = shl nuw i64 1, %.pre-phi86
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ao, i64 noundef %i.am, i64 noundef %i.an)
  %.pre82 = load ptr, ptr %1, align 8, !tbaa !19803
  %.pre83 = load i64, ptr %i.a, align 8, !tbaa !19762
  %.pre84 = and i64 %.pre83, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi86, %.thread66 ], [ %.pre84, %bb.h ] ; 2 uses
  %i.ap = phi ptr [ %.pre, %.thread66 ], [ %.pre82, %bb.h ] ; 3 uses
  %i.aq = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ar = getelementptr inbounds nuw [128 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load <16 x i8>, ptr %i.ar, align 16, !tbaa !19747
  %i.at = icmp slt <16 x i8> %i.as, zeroinitializer
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = and i16 %i.au, 16383                    ; 2 uses
  %.not69 = icmp eq i16 %i.av, 16383
  br i1 %.not69, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit
  %i.aw = shl i64 %3, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.ay = phi i64 [ %i.aq, %bb.i ], [ %i.be, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.i ], [ %i.bd, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit ]
  %i.az = getelementptr inbounds nuw [128 x i8], ptr %i.ap, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 15 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !21602 ; 2 uses
  %.not.i33 = icmp eq i8 %i.bb, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !21602
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bd = add i64 %i.ax, %.030                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bd, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bf = getelementptr inbounds nuw [128 x i8], ptr %i.ap, i64 %i.be ; 3 uses
  %i.bg = load <16 x i8>, ptr %i.bf, align 16     ; 2 uses
  %i.bh = icmp slt <16 x i8> %i.bg, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = and i16 %i.bi, 16383                    ; 2 uses
  %.not70 = icmp eq i16 %i.bj, 16383
  br i1 %.not70, label %bb.j, label %bb.l, !llvm.loop !21603

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE25incrOutboundOverflowCountEv.exit
  %i.bk = extractelement <16 x i8> %i.bg, i64 14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  %i.bm = add i8 %i.bk, 16
  store i8 %i.bm, ptr %i.bl, align 2, !tbaa !19812
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.av, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bj, %bb.l ]
  %.1 = phi ptr [ %i.ar, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE16reserveForInsertEm.exit ], [ %i.bf, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 16383
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64              ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !19747
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.15) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit: ; preds = %bb.m
  %i.bs = trunc i64 %3 to i8
  store i8 %i.bs, ptr %i.bp, align 1, !tbaa !19747
  %i.bt = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bo ; 2 uses
  %i.bv = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bv)
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.bu, i64 %i.bo, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit
  %.sink99 = phi ptr [ %i.ai, %bb.g ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit ]
  %.lcssa97.sink = phi i64 [ %i.y, %bb.g ], [ %i.bo, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEEE6setTagEmm.exit ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !21511
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa97.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !19741
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bw, align 8, !tbaa !21604
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #45
          to label %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit unwind label %bb.b ; 5 uses

_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit: ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !19808
  %i.b = load i64, ptr %6, align 8, !tbaa !19879
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.e, align 8, !tbaa !19786
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.f, align 8, !tbaa !19762
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #41 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE14eraseBlankColdEPS8_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEESC_ImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S7_EEEEESD_ImmEEJSA_RSJ_RSK_ESL_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.c, !inline_history !21607

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S7_EEEEESD_ImmEEJSA_RSJ_RSK_ESL_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #43
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISE_S6_EEEEESK_ImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S7_EEEEESD_ImmEEJSA_RSJ_RSK_ESL_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit
  %i.m = and i64 %2, 255                          ; 2 uses
  %i.n = icmp samesign ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %i.o = lshr i64 %i.m, 1
  %i.p = ptrtoint ptr %1 to i64
  %i.q = or i64 %i.o, %i.p                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19849
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.f, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit

bb.f:                                             ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit
  store i64 %i.q, ptr %i.r, align 8, !tbaa !19741
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE29adjustSizeAndBeginAfterInsertENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEE.exit: ; preds = %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS5_EESE_IJEEEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISF_S7_EEEEESL_ImmEDpOT_EUlvE_PFvPS9_SQ_SR_EJSW_RSQ_RSR_EvEET2_OT_OT0_DpOT1_.exit, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !19762 ; 2 uses
  %i.w = and i64 %i.v, -256
  %i.x = add i64 %i.w, 256
  %i.y = and i64 %i.v, 255
  %i.z = or disjoint i64 %i.x, %i.y
  store i64 %i.z, ptr %i.u, align 8, !tbaa !19762
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmm:bb.a
bb.w:                                             ; preds = %.loopexit111
  br i1 %.not, label %bb.x, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61

bb.x:                                             ; preds = %bb.w
  call void @_ZdlPvm(ptr noundef nonnull %.0102, i64 noundef %4) #42
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  br label %.loopexit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.l, %bb.k
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bm) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  resume { ptr, i32 } %i.ew

.loopexit:                                        ; preds = %bb.h, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit61, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !20925
  %i.ex = load i64, ptr %i.d, align 8, !tbaa !19741 ; 2 uses
  %.not.i64 = icmp eq i64 %i.ex, 0
  br i1 %.not.i64, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !21717 ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i63, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62, label %bb.y

bb.y:                                             ; preds = %.noexc.i
  %i.ez = load i64, ptr %i.e, align 8, !tbaa !19741
  %i.fa = sub i64 0, %i.ez
  %i.fb = and i64 %i.fa, -8
  %i.fc = shl i64 %i.ex, 3
  %i.fd = sub i64 %i.fc, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fd) #41
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit62: ; preds = %.loopexit, %bb.y, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21791 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21793, !nonnull !179
  %i.d = load i8, ptr %i.c, align 1, !tbaa !20925, !range !20413, !noundef !179
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !19751

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21794, !nonnull !179, !align !19820
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19741 ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21795, !nonnull !179, !align !19820
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21717
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21796, !nonnull !179, !align !19820
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19741
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21797, !nonnull !179, !align !19820
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19975 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21798, !nonnull !179, !align !19820
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19741 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21795, !nonnull !179, !align !19820
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21717
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !19786
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21799, !nonnull !179, !align !19820
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !19741 ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 true)
  %i.ad = icmp eq i64 %i.ab, 0
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !19762
  %i.af = and i64 %i.ae, -256
  %i.ag = select i1 %i.ad, i64 4294967295, i64 %i.ac
  %i.ah = or i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.y, align 8, !tbaa !19762
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #41
  %.pre = load ptr, ptr %0, align 8, !tbaa !21793
  %.pre3 = load i8, ptr %.pre, align 1, !tbaa !20925, !range !20413
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre4 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21794
  %.pre5 = load i64, ptr %.pre4, align 8, !tbaa !19741
  %i.ai = trunc nuw i8 %.pre3 to i1
  br i1 %i.ai, label %.noexc, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21800, !nonnull !179, !align !19820
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !19741
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21801, !nonnull !179, !align !19820
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19741
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21802, !nonnull !179, !align !19820
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21747
  invoke void @_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE17afterFailedRehashEPSA_m(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.ao)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.010 = phi i64 [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ 0, %bb.b ], [ %i.n, %bb.c ]
  %.029 = phi ptr [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ null, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = phi i64 [ %.pre5, %bb.d ], [ %i.al, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.c ]
  %.not.i = icmp eq ptr %.029, null
  br i1 %.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE11afterRehashEPSA_bmmmPhm.exit, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.at = sub i64 0, %.010
  %i.au = and i64 %i.at, -8
  %i.av = shl i64 %i.as, 3
  %i.aw = sub i64 %i.av, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %.029, i64 noundef %i.aw) #41
  br label %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE11afterRehashEPSA_bmmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE11afterRehashEPSA_bmmmPhm.exit: ; preds = %bb.f, %.noexc
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #43
  unreachable
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE17afterFailedRehashEPSA_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #34 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !21251
  %i.b = shl i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.a, i64 %i.b, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !21251
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15RegexMatchCache10eraseRegexERKNS_18RegexMatchCacheKeyE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19762 ; 2 uses
  %i.e = lshr i64 %i.d, 8
  switch i64 %i.e, label %bb.c [
    i64 0, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19849 ; 3 uses
  %i.h = and i64 %i.g, -8
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = shl i64 %i.g, 1
  %i.k = and i64 %i.j, 14
  %i.l = lshr i64 %i.g, 3
  %i.m = and i64 %i.l, 1
  %i.n = or disjoint i64 %i.k, %i.m
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !19808 ; 2 uses
  %i.p = load i256, ptr %1, align 8
  %i.q = load i256, ptr %i.o, align 8
  %i.r = icmp ne i256 %i.p, %i.q
  %i.s = zext i1 %i.r to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread376, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.t = load i64, ptr %1, align 8, !tbaa !19741  ; 2 uses
  %i.u = lshr i64 %i.t, 56
  %i.v = or i64 %i.u, 128                         ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = or disjoint i64 %i.w, 1
  %i.y = trunc nuw i64 %i.v to i8
  %i.z = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ab = and i64 %i.d, 255                       ; 2 uses
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !19803
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.g
  %.0.i.i515 = phi i64 [ %i.t, %bb.c ], [ %i.bb, %bb.g ] ; 2 uses
  %.023.i.i514 = phi i64 [ %i.ac, %bb.c ], [ %i.ba, %bb.g ]
  %i.ae = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i515, i64 range(i64 0, 256) %i.ab)
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.ad, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ah, i32 0, i32 3, i32 1)
  %i.ai = load <16 x i8>, ptr %i.af, align 16     ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.ai, %i.aa
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = and i16 %i.ak, 16383
  %i.am = zext nneg i16 %i.al to i32
  %i.an = icmp ne ptr %i.af, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ao = extractelement <16 x i8> %i.ai, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.e, %bb.d
  %.sroa.0284.0 = phi i32 [ %i.am, %bb.d ], [ %i.ar, %bb.e ] ; 4 uses
  %.not = icmp eq i32 %.sroa.0284.0, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge.i.i
  %i.ap = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0284.0, i1 true)
  %i.aq = add nsw i32 %.sroa.0284.0, -1
  %i.ar = and i32 %i.aq, %.sroa.0284.0
  %i.as = zext nneg i32 %i.ap to i64              ; 3 uses
  tail call void @llvm.assume(i1 %i.an)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !19808 ; 2 uses
  %i.av = load i256, ptr %1, align 8
  %i.aw = load i256, ptr %i.au, align 8
  %i.ax = icmp ne i256 %i.av, %i.aw
  %i.ay = zext i1 %i.ax to i32
  %.not9.i.i.i.i.i.i.i.i167 = icmp eq i32 %i.ay, 0
  br i1 %.not9.i.i.i.i.i.i.i.i167, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread376.loopexit, label %.critedge.i.i, !prof !19751, !llvm.loop !21425

bb.f:                                             ; preds = %.critedge.i.i
  %i.az = icmp eq i8 %i.ao, 0
  br i1 %i.az, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread, label %bb.g, !prof !19751

bb.g:                                             ; preds = %bb.f
  %i.ba = add i64 %.023.i.i514, -1                ; 2 uses
  %i.bb = add i64 %i.x, %.0.i.i515
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread, label %bb.d, !llvm.loop !21426

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread376.loopexit: ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.as
  br label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread376

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread376: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread376.loopexit, %bb.b
  %i.bd = phi ptr [ %i.o, %bb.b ], [ %i.au, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread376.loopexit ] ; 8 uses
  %.sroa.0282.1382 = phi ptr [ %i.i, %bb.b ], [ %i.bc, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread376.loopexit ] ; 4 uses
  %.sroa.7283.1381 = phi i64 [ %i.n, %bb.b ], [ %i.as, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread376.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !19879
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !19762 ; 2 uses
  %i.bg = lshr i64 %i.bf, 8
  switch i64 %i.bg, label %bb.i [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEERKT_.exit.thread.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread376
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !21248
  %i.bj = and i64 %i.bi, -16
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 16, !tbaa !19879
  %i.bm = icmp eq ptr %i.bd, %i.bl
  br i1 %i.bm, label %.loopexit, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEERKT_.exit.thread.i

bb.i:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread376
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bp = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.bo) ; 2 uses
  %i.bq = lshr i64 %i.bp, 24
  %i.br = or i64 %i.bq, 128                       ; 2 uses
  %i.bs = add i64 %i.bp, %i.bo
  %i.bt = shl nuw nsw i64 %i.br, 1
  %i.bu = or disjoint i64 %i.bt, 1
  %i.bv = trunc nuw i64 %i.br to i8
  %i.bw = insertelement <16 x i8> poison, i8 %i.bv, i64 0
  %i.bx = shufflevector <16 x i8> %i.bw, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.by = and i64 %i.bf, 255                      ; 2 uses
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = load ptr, ptr %i.bn, align 8, !tbaa !19768
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.0.i57.i = phi i64 [ %i.bs, %bb.i ], [ %i.cv, %bb.m ] ; 2 uses
  %.023.i56.i = phi i64 [ %i.bz, %bb.i ], [ %i.cu, %bb.m ]
  %i.cb = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i57.i, i64 range(i64 0, 256) %i.by)
  %i.cc = getelementptr inbounds nuw [256 x i8], ptr %i.ca, i64 %i.cb ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ce, i32 0, i32 3, i32 1)
  %i.cf = load <16 x i8>, ptr %i.cc, align 16     ; 2 uses
  %i.cg = icmp eq <16 x i8> %i.cf, %i.bx
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = and i16 %i.ch, 16383
  %i.cj = zext nneg i16 %i.ci to i32
  %i.ck = icmp ne ptr %i.cc, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.cl = extractelement <16 x i8> %i.cf, i64 15
  br label %.critedge.i.i168

.critedge.i.i168:                                 ; preds = %bb.k, %bb.j
  %.sroa.018.0.i = phi i32 [ %i.cj, %bb.j ], [ %i.co, %bb.k ] ; 4 uses
  %.not.i169 = icmp eq i32 %.sroa.018.0.i, 0
  br i1 %.not.i169, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge.i.i168
  %i.cm = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.018.0.i, i1 true)
  %i.cn = add nsw i32 %.sroa.018.0.i, -1
  %i.co = and i32 %i.cn, %.sroa.018.0.i
  %i.cp = zext nneg i32 %i.cm to i64
  tail call void @llvm.assume(i1 %i.ck)
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cp ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !19879
  %i.cs = icmp eq ptr %i.bd, %i.cr
  br i1 %i.cs, label %.loopexit, label %.critedge.i.i168, !prof !19751, !llvm.loop !21249

bb.l:                                             ; preds = %.critedge.i.i168
  %i.ct = icmp eq i8 %i.cl, 0
  br i1 %i.ct, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEERKT_.exit.thread.i, label %bb.m, !prof !19751

bb.m:                                             ; preds = %bb.l
  %i.cu = add i64 %.023.i56.i, -1                 ; 2 uses
  %i.cv = add i64 %i.bu, %.0.i57.i
  %.not.i.i170 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i170, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEERKT_.exit.thread.i, label %bb.j, !llvm.loop !21250

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEERKT_.exit.thread.i: ; preds = %bb.m, %bb.l, %bb.h, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread376
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.12) #20
          to label %.noexc171 unwind label %bb.o

.noexc171:                                        ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNS_18RegexMatchCacheKeyEmvvvEEE4findIS6_EENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKS6_mEEEEERKT_.exit.thread.i
  unreachable

.loopexit:                                        ; preds = %bb.k, %bb.h
  %.sroa.017.147.i = phi ptr [ %i.bk, %bb.h ], [ %i.cq, %bb.k ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.017.147.i, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !19741 ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !19762
  %i.db = lshr i64 %i.da, 8                       ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.db, 0
  %i.dc = load ptr, ptr %i.cy, align 8            ; 2 uses
  br i1 %.not.i.i.i.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.db
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dh = icmp eq i64 %i.cx, 63
  %i.di = lshr i64 %i.cx, 6
  %i.dj = and i64 %i.cx, 63
  %i.dk = shl nuw i64 1, %i.dj
  %i.dl = xor i64 %i.dk, -1
  br label %.backedge497

._crit_edge:                                      ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit, %.loopexit
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !19762 ; 3 uses
  %i.dp = icmp ult i64 %i.do, 256
  br i1 %i.dp, label %.noexc143, label %.noexc64

.noexc64:                                         ; preds = %._crit_edge
  %i.dq = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.dr = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.dq) ; 2 uses
  %i.ds = lshr i64 %i.dr, 24
  %i.dt = or i64 %i.ds, 128                       ; 2 uses
  %i.du = add i64 %i.dr, %i.dq
  %i.dv = shl nuw nsw i64 %i.dt, 1
  %i.dw = or disjoint i64 %i.dv, 1
  %i.dx = trunc nuw i64 %i.dt to i8
  %i.dy = insertelement <16 x i8> poison, i8 %i.dx, i64 0
  %i.dz = shufflevector <16 x i8> %i.dy, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ea = and i64 %i.do, 255                      ; 2 uses
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !19779
  br label %.noexc66

.noexc66:                                         ; preds = %.noexc64, %.noexc69
  %.0.i.i47520 = phi i64 [ %i.du, %.noexc64 ], [ %i.fb, %.noexc69 ] ; 2 uses
  %.022.i.i519 = phi i64 [ %i.eb, %.noexc64 ], [ %i.fa, %.noexc69 ]
  %i.ee = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i47520, i64 range(i64 0, 256) %i.ea)
  %i.ef = getelementptr inbounds nuw [64 x i8], ptr %i.ed, i64 %i.ee ; 3 uses
  %i.eg = load <16 x i8>, ptr %i.ef, align 16     ; 2 uses
  %i.eh = icmp eq <16 x i8> %i.eg, %i.dz
  %i.ei = bitcast <16 x i1> %i.eh to i16
  %i.ej = and i16 %i.ei, 4095
  %i.ek = zext nneg i16 %i.ej to i32
  %i.el = icmp ne ptr %i.ef, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.en = extractelement <16 x i8> %i.eg, i64 15
  br label %.critedge.i.i49

.critedge.i.i49:                                  ; preds = %.noexc68, %.noexc66
  %.sroa.0294.0 = phi i32 [ %i.ek, %.noexc66 ], [ %i.eq, %.noexc68 ] ; 4 uses
  %.not482 = icmp eq i32 %.sroa.0294.0, 0
  br i1 %.not482, label %bb.n, label %.noexc68

.noexc68:                                         ; preds = %.critedge.i.i49
  %i.eo = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0294.0, i1 true)
  %i.ep = add nsw i32 %.sroa.0294.0, -1
  %i.eq = and i32 %i.ep, %.sroa.0294.0
  %i.er = zext nneg i32 %i.eo to i64
  tail call void @llvm.assume(i1 %i.el)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.er
  %i.et = load ptr, ptr %i.dm, align 8, !tbaa !19785
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !7  ; 2 uses
  %i.ev = zext i32 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %i.ev ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !19879
  %i.ey = icmp eq ptr %i.bd, %i.ex
  br i1 %i.ey, label %bb.w, label %.critedge.i.i49, !prof !19751, !llvm.loop !21298

bb.n:                                             ; preds = %.critedge.i.i49
  %i.ez = icmp eq i8 %i.en, 0
  br i1 %i.ez, label %.noexc143, label %.noexc69, !prof !19751

.noexc69:                                         ; preds = %bb.n
  %i.fa = add i64 %.022.i.i519, -1                ; 2 uses
  %i.fb = add i64 %i.dw, %.0.i.i47520
  %.not.i.i48 = icmp eq i64 %i.fa, 0
end_hunk_4
begin_hunk_5_@_ZN5folly15RegexMatchCache11eraseStringEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %bb.aj

bb.aj:                                            ; preds = %bb.am, %bb.ai
  %.0.i58.i231 = phi i64 [ %i.nd, %bb.ai ], [ %i.og, %bb.am ] ; 2 uses
  %.023.i57.i232 = phi i64 [ %i.nk, %bb.ai ], [ %i.of, %bb.am ]
  %i.nm = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i58.i231, i64 range(i64 0, 256) %i.nj)
  %i.nn = getelementptr inbounds nuw [256 x i8], ptr %i.nl, i64 %i.nm ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 144
  tail call void @llvm.prefetch.p0(ptr nonnull %i.np, i32 0, i32 3, i32 1)
  %i.nq = load <16 x i8>, ptr %i.nn, align 16     ; 2 uses
  %i.nr = icmp eq <16 x i8> %i.nq, %i.ni
  %i.ns = bitcast <16 x i1> %i.nr to i16
  %i.nt = and i16 %i.ns, 16383
  %i.nu = zext nneg i16 %i.nt to i32
  %i.nv = icmp ne ptr %i.nn, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.nw = extractelement <16 x i8> %i.nq, i64 15
  br label %.critedge.i.i233

.critedge.i.i233:                                 ; preds = %bb.ak, %bb.aj
  %.sroa.019.0.i234 = phi i32 [ %i.nu, %bb.aj ], [ %i.nz, %bb.ak ] ; 4 uses
  %.not.i235 = icmp eq i32 %.sroa.019.0.i234, 0
  br i1 %.not.i235, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.critedge.i.i233
  %i.nx = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.i234, i1 true)
  %i.ny = add nsw i32 %.sroa.019.0.i234, -1
  %i.nz = and i32 %i.ny, %.sroa.019.0.i234
  %i.oa = zext nneg i32 %i.nx to i64
  tail call void @llvm.assume(i1 %i.nv)
  %i.ob = getelementptr inbounds nuw [16 x i8], ptr %i.no, i64 %i.oa ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !19741
  %i.od = icmp eq i64 %.sroa.7.0575, %i.oc
  br i1 %i.od, label %.loopexit, label %.critedge.i.i233, !prof !19751, !llvm.loop !19877

bb.al:                                            ; preds = %.critedge.i.i233
  %i.oe = icmp eq i8 %i.nw, 0
  br i1 %i.oe, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i229, label %bb.am, !prof !19751

bb.am:                                            ; preds = %bb.al
  %i.of = add i64 %.023.i57.i232, -1              ; 2 uses
  %i.og = add i64 %i.nf, %.0.i58.i231
  %.not.i.i236 = icmp eq i64 %i.of, 0
  br i1 %.not.i.i236, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i229, label %bb.aj, !llvm.loop !19878

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i229: ; preds = %bb.ah, %bb.ag, %bb.am, %bb.al
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.12) #20
          to label %.noexc237 unwind label %.loopexit.split-lp

.noexc237:                                        ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i229
  unreachable

.loopexit:                                        ; preds = %bb.ak, %bb.ah
  %.sroa.018.148.i230 = phi ptr [ %i.mx, %bb.ah ], [ %i.ob, %bb.ak ]
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.018.148.i230, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !19879
  %i.oj = invoke noundef ptr @_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %i.oi)
          to label %bb.an unwind label %.loopexit519 ; 3 uses

bb.an:                                            ; preds = %.loopexit
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !19762 ; 2 uses
  %i.on = icmp ult i64 %i.om, 256
  br i1 %i.on, label %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit247, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.oo = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ls) ; 2 uses
  %i.op = lshr i64 %i.oo, 24
  %i.oq = or i64 %i.op, 128                       ; 2 uses
  %i.or = add i64 %i.oo, %i.ls
  %i.os = shl nuw nsw i64 %i.oq, 1
  %i.ot = or disjoint i64 %i.os, 1
  %i.ou = trunc nuw i64 %i.oq to i8
  %i.ov = insertelement <16 x i8> poison, i8 %i.ou, i64 0
  %i.ow = shufflevector <16 x i8> %i.ov, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ox = and i64 %i.om, 255                      ; 2 uses
  %i.oy = shl nuw i64 1, %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !19786
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %bb.ao
  %.0.i45.i.i.i239 = phi i64 [ %i.or, %bb.ao ], [ %i.py, %bb.as ] ; 2 uses
  %.022.i44.i.i.i240 = phi i64 [ %i.oy, %bb.ao ], [ %i.px, %bb.as ]
  %i.pb = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i45.i.i.i239, i64 range(i64 0, 256) %i.ox)
  %i.pc = getelementptr inbounds nuw [64 x i8], ptr %i.pa, i64 %i.pb ; 3 uses
  %i.pd = load <16 x i8>, ptr %i.pc, align 16     ; 2 uses
  %i.pe = icmp eq <16 x i8> %i.pd, %i.ow
  %i.pf = bitcast <16 x i1> %i.pe to i16
  %i.pg = and i16 %i.pf, 4095
  %i.ph = zext nneg i16 %i.pg to i32
  %i.pi = icmp ne ptr %i.pc, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pc, i64 16 ; 2 uses
  %i.pk = extractelement <16 x i8> %i.pd, i64 15
  br label %.critedge.i.i.i.i241

.critedge.i.i.i.i241:                             ; preds = %bb.aq, %bb.ap
  %.sroa.010.0.i.i.i242 = phi i32 [ %i.ph, %bb.ap ], [ %i.pn, %bb.aq ] ; 4 uses
  %.not.i.i.i243 = icmp eq i32 %.sroa.010.0.i.i.i242, 0
  br i1 %.not.i.i.i243, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i.i.i.i241
  %i.pl = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.010.0.i.i.i242, i1 true)
  %i.pm = add nsw i32 %.sroa.010.0.i.i.i242, -1
  %i.pn = and i32 %i.pm, %.sroa.010.0.i.i.i242
  %i.po = zext nneg i32 %i.pl to i64              ; 3 uses
  tail call void @llvm.assume(i1 %i.pi)
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %i.po
  %i.pq = load ptr, ptr %i.ok, align 8, !tbaa !21251
  %i.pr = load i32, ptr %i.pp, align 4, !tbaa !7
  %i.ps = zext i32 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.ps
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !19858
  %i.pv = icmp eq ptr %1, %i.pu
  br i1 %i.pv, label %bb.at, label %.critedge.i.i.i.i241, !prof !19751, !llvm.loop !21252

bb.ar:                                            ; preds = %.critedge.i.i.i.i241
  %i.pw = icmp eq i8 %i.pk, 0
  br i1 %i.pw, label %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit247, label %bb.as, !prof !19751

bb.as:                                            ; preds = %bb.ar
  %i.px = add i64 %.022.i44.i.i.i240, -1          ; 2 uses
  %i.py = add i64 %i.ot, %.0.i45.i.i.i239
  %.not.i.i.i.i245 = icmp eq i64 %i.px, 0
  br i1 %.not.i.i.i.i245, label %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit247, label %bb.ap, !llvm.loop !21253

bb.at:                                            ; preds = %bb.aq
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %i.po
  invoke void @_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ok, ptr nonnull %i.pz, i64 %i.po, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit247 unwind label %.loopexit519

_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit247: ; preds = %bb.as, %bb.ar, %bb.an, %bb.at
  %i.qa = add i64 %.sroa.7.0575, 1                ; 3 uses
  %i.qb = icmp ult i64 %i.qa, %.sroa.3.0.i.i.i195660
  br i1 %i.qb, label %.lr.ph.i.i249, label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit253

.lr.ph.i.i249:                                    ; preds = %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit247, %bb.au
  %.01622.i.i250 = phi i64 [ %i.qk, %bb.au ], [ %i.qa, %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit247 ] ; 4 uses
  %i.qc = lshr i64 %.01622.i.i250, 6
  %i.qd = and i64 %.01622.i.i250, 63
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i196662, i64 %i.qc
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !19741
  %i.qg = lshr i64 %i.qf, %i.qd                   ; 2 uses
  %.not.i.i251 = icmp eq i64 %i.qg, 0
  br i1 %.not.i.i251, label %bb.au, label %.thread.i.i252

.thread.i.i252:                                   ; preds = %.lr.ph.i.i249
  %i.qh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.qg, i1 true)
  %i.qi = add i64 %i.qh, %.01622.i.i250
  br label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit253

bb.au:                                            ; preds = %.lr.ph.i.i249
  %i.qj = and i64 %.01622.i.i250, -64
  %i.qk = add i64 %i.qj, 64                       ; 3 uses
  %i.ql = icmp ult i64 %i.qk, %.sroa.3.0.i.i.i195660
  br i1 %i.ql, label %.lr.ph.i.i249, label %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit253, !llvm.loop !19875

_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit253: ; preds = %bb.au, %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit247, %.thread.i.i252
  %.2.i.i248 = phi i64 [ %i.qi, %.thread.i.i252 ], [ %i.qa, %_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE5eraseERKSA_.exit247 ], [ %i.qk, %bb.au ] ; 2 uses
  %.not513 = icmp eq i64 %.2.i.i248, %.sroa.3.0.i.i.i195660
  br i1 %.not513, label %.noexc132, label %bb.ag

.loopexit519:                                     ; preds = %.loopexit, %bb.at
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit259

.loopexit.split-lp:                               ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i229
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit259

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit: ; preds = %bb.z, %.noexc95, %.lr.ph755, %.noexc150, %bb.ae, %.noexc153, %.noexc87, %.thread407
  ret void

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit259: ; preds = %.loopexit519, %.loopexit.split-lp, %bb.af, %bb.w, %bb.x, %bb.h
  %.pn23.pn.pn = phi { ptr, i32 } [ %i.ms, %bb.af ], [ %i.is, %bb.w ], [ %i.co, %bb.h ], [ %i.it, %bb.x ], [ %lpad.loopexit, %.loopexit519 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZN5folly15RegexMatchCache6repairEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #41, !inline_history !21565
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly7get_ptrINS_10F14NodeMapINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryENS_23HeterogeneousAccessHashIS2_vEENS_26HeterogeneousAccessEqualToIS2_vEESaISt4pairIKS2_S4_EEEES2_EEDaRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.c = lshr i64 %i.b, 8
  switch i64 %i.c, label %bb.c [
    i64 0, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19849
  %i.f = and i64 %i.e, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19808 ; 2 uses
  %i.i = load i256, ptr %1, align 8
  %i.j = load i256, ptr %i.h, align 8
  %i.k = icmp ne i256 %i.i, %i.j
  %i.l = zext i1 %i.k to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread38, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.m = load i64, ptr %1, align 8, !tbaa !19741  ; 2 uses
  %i.n = lshr i64 %i.m, 56
  %i.o = or i64 %i.n, 128                         ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = or disjoint i64 %i.p, 1
  %i.r = trunc nuw i64 %i.o to i8
  %i.s = insertelement <16 x i8> poison, i8 %i.r, i64 0
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.u = and i64 %i.b, 255                        ; 2 uses
  %i.v = shl nuw i64 1, %i.u
  %i.w = load ptr, ptr %0, align 8, !tbaa !19803
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.g
  %.0.i.i54 = phi i64 [ %i.m, %bb.c ], [ %i.au, %bb.g ] ; 2 uses
  %.023.i.i53 = phi i64 [ %i.v, %bb.c ], [ %i.at, %bb.g ]
  %i.x = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i54, i64 range(i64 0, 256) %i.u)
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %i.x ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aa, i32 0, i32 3, i32 1)
  %i.ab = load <16 x i8>, ptr %i.y, align 16      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.ab, %i.t
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = and i16 %i.ad, 16383
  %i.af = zext nneg i16 %i.ae to i32
  %i.ag = icmp ne ptr %i.y, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ah = extractelement <16 x i8> %i.ab, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.e, %bb.d
  %.sroa.012.0 = phi i32 [ %i.af, %bb.d ], [ %i.ak, %bb.e ] ; 4 uses
  %.not = icmp eq i32 %.sroa.012.0, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge.i.i
  %i.ai = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0, i1 true)
  %i.aj = add nsw i32 %.sroa.012.0, -1
  %i.ak = and i32 %i.aj, %.sroa.012.0
  %i.al = zext nneg i32 %i.ai to i64
  tail call void @llvm.assume(i1 %i.ag)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19808 ; 2 uses
  %i.ao = load i256, ptr %1, align 8
  %i.ap = load i256, ptr %i.an, align 8
  %i.aq = icmp ne i256 %i.ao, %i.ap
  %i.ar = zext i1 %i.aq to i32
  %.not9.i.i.i.i.i.i.i.i4 = icmp eq i32 %i.ar, 0
  br i1 %.not9.i.i.i.i.i.i.i.i4, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread38, label %.critedge.i.i, !prof !19751, !llvm.loop !21425

bb.f:                                             ; preds = %.critedge.i.i
  %i.as = icmp eq i8 %i.ah, 0
  br i1 %i.as, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread, label %bb.g, !prof !19751

bb.g:                                             ; preds = %bb.f
  %i.at = add i64 %.023.i.i53, -1                 ; 2 uses
  %i.au = add i64 %i.q, %.0.i.i54
  %.not.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread, label %bb.d, !llvm.loop !21426

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread38: ; preds = %bb.e, %bb.b
  %i.av = phi ptr [ %i.h, %bb.b ], [ %i.an, %bb.e ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  br label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread: ; preds = %bb.f, %bb.g, %bb.b, %bb.a, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread38
  %i.ax = phi ptr [ %i.aw, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findERKS4_.exit.thread38 ], [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.g ], [ null, %bb.f ]
  ret ptr %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail16F14VectorSetImplIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21251  ; 4 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !7      ; 3 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -4
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.neg.i.i.i ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 14 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !21564
  %.not.i20 = icmp ult i8 %i.f, 16
  br i1 %.not.i20, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.b to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19858
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.j) ; 2 uses
  %i.l = add i64 %i.k, %i.j
  %i.m = lshr i64 %i.k, 23
  %i.n = or i64 %i.m, 257
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi i64 [ 1, %bb.a ], [ %i.n, %bb.b ]
  %.sroa.04.0.i = phi i64 [ 0, %bb.a ], [ %i.l, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !19762
  %i.q = add i64 %i.p, -256
  store i64 %i.q, ptr %i.o, align 8, !tbaa !19762
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %2 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19747
  %.not.i.i.i.i = icmp sgt i8 %i.s, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.15) #49
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i: ; preds = %bb.c
  store i8 0, ptr %i.r, align 1, !tbaa !19747
  %i.t = load i8, ptr %i.e, align 2, !tbaa !21564
  %.not.i.i.i = icmp ult i8 %i.t, 16
  %.pre = load i64, ptr %i.o, align 8, !tbaa !19762 ; 3 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19786 ; 4 uses
  %i.w = and i64 %.pre, 255                       ; 2 uses
  %i.x = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i, i64 range(i64 0, 256) %i.w) ; 3 uses
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %i.x
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %.thread.i.i.i, label %.lr.ph.i.i.i

.thread.i.i.i:                                    ; preds = %bb.g, %bb.e
  %.011.lcssa.i.i.i = phi i8 [ 0, %bb.e ], [ -16, %bb.g ]
  %i.aa = phi i64 [ %i.x, %bb.e ], [ %i.al, %bb.g ]
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 14 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !21564
  %i.ae = add i8 %i.ad, %.011.lcssa.i.i.i
  store i8 %i.ae, ptr %i.ac, align 2, !tbaa !21564
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.g
  %i.af = phi i64 [ %i.al, %bb.g ], [ %i.x, %bb.e ]
  %.01026.i.i.i = phi i64 [ %i.ak, %bb.g ], [ %.sroa.04.0.i, %bb.e ]
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 15 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !21560 ; 2 uses
  %.not.i17.i.i.i = icmp eq i8 %i.ai, -2
  br i1 %.not.i17.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = add i8 %i.ai, -1
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !21560
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ak = add i64 %.01026.i.i.i, %.sroa.5.0.i     ; 2 uses
  %i.al = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ak, i64 range(i64 0, 256) %i.w) ; 3 uses
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %i.al
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %.thread.i.i.i, label %.lr.ph.i.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i, %.thread.i.i.i
  %i.ao = zext i32 %i.b to i64                    ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao
  %i.aq = lshr i64 %.pre, 8                       ; 5 uses
  %.not = icmp eq i64 %i.aq, %i.ao
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit
  %i.ar = trunc i64 %i.aq to i32
  %i.as = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load ptr, ptr %0, align 8, !tbaa !21251
  %i.au = and i64 %i.aq, 4294967295
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19858
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ax) ; 2 uses
  %i.az = lshr i64 %i.ay, 24
  %i.ba = or i64 %i.az, 128                       ; 2 uses
  %i.bb = add i64 %i.ay, %i.ax
  %i.bc = shl nuw nsw i64 %i.ba, 1
  %i.bd = or disjoint i64 %i.bc, 1
  %i.be = trunc nuw i64 %i.ba to i8
  %i.bf = insertelement <16 x i8> poison, i8 %i.be, i64 0
  %i.bg = shufflevector <16 x i8> %i.bf, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bh = and i64 %.pre, 255
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !19786
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.0.i = phi i64 [ %i.bb, %bb.h ], [ %i.ca, %bb.k ] ; 2 uses
  %i.bk = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i, i64 range(i64 0, 256) %i.bh)
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.bj, i64 %i.bk ; 3 uses
  %i.bm = load <16 x i8>, ptr %i.bl, align 16
  %i.bn = icmp eq <16 x i8> %i.bm, %i.bg
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 4095
  %i.bq = zext nneg i16 %i.bp to i32
  %i.br = icmp ne ptr %i.bl, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %bb.i
  %.sroa.025.0 = phi i32 [ %i.bq, %bb.i ], [ %i.bv, %bb.j ] ; 4 uses
  %.not45 = icmp eq i32 %.sroa.025.0, 0
  br i1 %.not45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge.i
  %i.bt = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.025.0, i1 true)
  %i.bu = add nsw i32 %.sroa.025.0, -1
  %i.bv = and i32 %i.bu, %.sroa.025.0
  %i.bw = zext nneg i32 %i.bt to i64              ; 2 uses
  tail call void @llvm.assume(i1 %i.br)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = icmp eq i32 %i.by, %i.ar
  br i1 %i.bz, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit, label %.critedge.i, !prof !19751, !llvm.loop !21892

bb.k:                                             ; preds = %.critedge.i
  %i.ca = add i64 %i.bd, %.0.i
  br label %bb.i, !llvm.loop !21893

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit: ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bw
  store i32 %i.b, ptr %i.cb, align 4, !tbaa !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aq
  %i.cd = load i64, ptr %i.cc, align 1
  store i64 %i.cd, ptr %i.ap, align 1
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSF_8PrefetchE.exit, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKSB_SD_EEEEESI_ImmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19741 ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN5folly3f146detail20ValueContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEvvvE11destroyItemERSt4pairIKSA_SC_E.exit

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %i.b, 1
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19742 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNK5folly15RegexMatchCache19findMatchesUncachedB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %i.x, label %bb.g, label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit, !prof !19748

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #41
  br label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit

_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit: ; preds = %._crit_edge, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  ret void

_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit: ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge, %.lr.ph
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.ay, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge ] ; 5 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.az, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge ] ; 4 uses
  %.sroa.9.032 = phi i64 [ %i.e, %.lr.ph ], [ %.sroa.9.032.be, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge ] ; 3 uses
  %.sroa.020.031 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.020.031.be, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge ] ; 5 uses
  %i.aa = phi ptr [ null, %.lr.ph ], [ %i.ba, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge ] ; 6 uses
  %i.ab = load ptr, ptr %.sroa.020.031, align 8, !tbaa !19858 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19733
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19738
  %i.af = invoke noundef zeroext i1 @_ZNK5folly15RegexMatchCache11RegexObjectclESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.ae, ptr %i.ac)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit
  br i1 %i.af, label %bb.i, label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %.sroa.020.031, align 8, !tbaa !19858
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !19858
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !21244
  br label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = ptrtoint ptr %i.y to i64
  %i.aj = ptrtoint ptr %i.aa to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 6 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.l, label %_ZNKSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.105) #44
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #45
          to label %.noexc17 unwind label %.loopexit ; 5 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ak ; 2 uses
  %i.au = load ptr, ptr %.sroa.020.031, align 8, !tbaa !19858
  store ptr %i.au, ptr %i.at, align 8, !tbaa !19858
  %i.av = icmp sgt i64 %i.ak, 0
  br i1 %i.av, label %bb.m, label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i

bb.m:                                             ; preds = %.noexc17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.aa, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i

_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i: ; preds = %bb.m, %.noexc17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ak) #42
  br label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i
  store ptr %i.as, ptr %0, align 8, !tbaa !21242
  store ptr %i.aw, ptr %i.f, align 8, !tbaa !21244
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq ; 2 uses
  store ptr %i.ax, ptr %i.g, align 8, !tbaa !21245
  br label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit

.loopexit:                                        ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit, %_ZNKSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit: ; preds = %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.j, %bb.h
  %i.ay = phi ptr [ %i.ax, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %i.y, %bb.j ], [ %i.y, %bb.h ]
  %i.az = phi ptr [ %i.aw, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %i.ah, %bb.j ], [ %i.z, %bb.h ]
  %i.ba = phi ptr [ %i.as, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJRKS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ], [ %i.aa, %bb.j ], [ %i.aa, %bb.h ]
  %i.bb = getelementptr inbounds i8, ptr %.sroa.020.031, i64 -16
  %.neg.i.i.i = mul nsw i64 %.sroa.9.032, -16
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %.neg.i.i.i ; 2 uses
  %.not19.i6.i = icmp eq i64 %.sroa.9.032, 0
  br i1 %.not19.i6.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

.critedge.i.i.preheader:                          ; preds = %bb.o, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit
  br label %.critedge.i.i

bb.o:                                             ; preds = %thread-pre-split.i
  %.not19.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not19.i.i, label %.critedge.i.i.preheader, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit, %bb.o
  %i.bd = phi i64 [ %i.bf, %bb.o ], [ %.sroa.9.032, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit ]
  %i.be = phi ptr [ %i.bg, %bb.o ], [ %.sroa.020.031, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE9push_backERKS7_.exit ]
  %i.bf = add nsw i64 %i.bd, -1                   ; 4 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 -16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !19747
  %.not.i18 = icmp eq i8 %i.bi, 0
  br i1 %.not.i18, label %bb.o, label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge, !prof !19748, !llvm.loop !19749

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %bb.p
  %.017.i.i = phi ptr [ %i.bm, %bb.p ], [ %i.bc, %.critedge.i.i.preheader ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 14
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !19747
  %i.bl = and i8 %i.bk, 15
  %.not2.i = icmp eq i8 %i.bl, 0
  br i1 %.not2.i, label %bb.p, label %._crit_edge, !prof !19751

bb.p:                                             ; preds = %.critedge.i.i
  %i.bm = getelementptr inbounds i8, ptr %.017.i.i, i64 -256 ; 3 uses
  %i.bn = load <16 x i8>, ptr %i.bm, align 16, !tbaa !19747
  %i.bo = icmp slt <16 x i8> %i.bn, zeroinitializer
  %i.bp = bitcast <16 x i1> %i.bo to i16
  %i.bq = and i16 %i.bp, 16383                    ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.017.i.i, i64 -512
  call void @llvm.prefetch.p0(ptr nonnull %i.br, i32 0, i32 3, i32 1)
  %.not3.i = icmp eq i16 %i.bq, 0
  br i1 %.not3.i, label %.critedge.i.i, label %bb.q, !prof !19748, !llvm.loop !19752

bb.q:                                             ; preds = %bb.p
  %i.bs = zext nneg i16 %i.bq to i32
  %i.bt = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bs, i1 true)
  %i.bu = xor i32 %i.bt, 31
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bw = icmp ne ptr %i.bm, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds i8, ptr %.017.i.i, i64 -240
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bv
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge

_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge: ; preds = %thread-pre-split.i, %bb.q
  %.sroa.9.032.be = phi i64 [ %i.bv, %bb.q ], [ %i.bf, %thread-pre-split.i ]
  %.sroa.020.031.be = phi ptr [ %i.by, %bb.q ], [ %i.bg, %thread-pre-split.i ]
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5folly15RegexMatchCache11RegexObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  %.pr = load ptr, ptr %0, align 8, !tbaa !21242  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %.not.i.i.i19 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = ptrtoint ptr %i.y to i64
  %i.ca = ptrtoint ptr %.pr to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.cb) #42
  br label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EED2Ev.exit

_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EED2Ev.exit: ; preds = %bb.r, %bb.s
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5folly15RegexMatchCache20isReadyToFindMatchesERKNS_18RegexMatchCacheKeyE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #32 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.c = lshr i64 %i.b, 8
  switch i64 %i.c, label %.noexc12 [
    i64 0, label %.thread69
    i64 1, label %.noexc3
  ]

.noexc3:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19849
  %i.f = and i64 %i.e, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19808 ; 2 uses
  %i.i = load i256, ptr %1, align 8
  %i.j = load i256, ptr %i.h, align 8
  %i.k = icmp ne i256 %i.i, %i.j
  %i.l = zext i1 %i.k to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %.thread74, label %.thread69

.noexc12:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i64, ptr %1, align 8, !tbaa !19741  ; 2 uses
  %i.o = lshr i64 %i.n, 56
  %i.p = or i64 %i.o, 128                         ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = or disjoint i64 %i.q, 1
  %i.s = trunc nuw i64 %i.p to i8
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.v = and i64 %i.b, 255                        ; 2 uses
  %i.w = shl nuw i64 1, %i.v
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !19803
  br label %.noexc14

.noexc14:                                         ; preds = %.noexc12, %.noexc18
  %.0.i110 = phi i64 [ %i.n, %.noexc12 ], [ %i.av, %.noexc18 ] ; 2 uses
  %.023.i109 = phi i64 [ %i.w, %.noexc12 ], [ %i.au, %.noexc18 ]
  %i.y = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i110, i64 range(i64 0, 256) %i.v)
  %i.z = getelementptr inbounds nuw [128 x i8], ptr %i.x, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ab, i32 0, i32 3, i32 1)
  %i.ac = load <16 x i8>, ptr %i.z, align 16      ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.ac, %i.u
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = and i16 %i.ae, 16383
  %i.ag = zext nneg i16 %i.af to i32
  %i.ah = icmp ne ptr %i.z, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ai = extractelement <16 x i8> %i.ac, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc17, %.noexc14
  %.sroa.042.0 = phi i32 [ %i.ag, %.noexc14 ], [ %i.al, %.noexc17 ] ; 4 uses
  %.not = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not, label %bb.b, label %.noexc17

.noexc17:                                         ; preds = %.critedge.i
  %i.aj = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.ak = add nsw i32 %.sroa.042.0, -1
  %i.al = and i32 %i.ak, %.sroa.042.0
  %i.am = zext nneg i32 %i.aj to i64
  tail call void @llvm.assume(i1 %i.ah)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19808 ; 2 uses
  %i.ap = load i256, ptr %1, align 8
  %i.aq = load i256, ptr %i.ao, align 8
  %i.ar = icmp ne i256 %i.ap, %i.aq
  %i.as = zext i1 %i.ar to i32
  %.not9.i.i.i.i.i.i.i.i29 = icmp eq i32 %i.as, 0
  br i1 %.not9.i.i.i.i.i.i.i.i29, label %.thread74, label %.critedge.i, !prof !19751, !llvm.loop !21425

bb.b:                                             ; preds = %.critedge.i
  %i.at = icmp eq i8 %i.ai, 0
  br i1 %i.at, label %.thread69, label %.noexc18, !prof !19751

.noexc18:                                         ; preds = %bb.b
  %i.au = add i64 %.023.i109, -1                  ; 2 uses
  %i.av = add i64 %i.r, %.0.i110
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %.thread69, label %.noexc14, !llvm.loop !21426

.thread74:                                        ; preds = %.noexc17, %.noexc3
  %i.aw = phi ptr [ %i.h, %.noexc3 ], [ %i.ao, %.noexc17 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !19762 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 256
  br i1 %i.ba, label %.thread69, label %.noexc20

.noexc20:                                         ; preds = %.thread74
  %i.bb = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.bc = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.bb) ; 2 uses
  %i.bd = lshr i64 %i.bc, 24
  %i.be = or i64 %i.bd, 128                       ; 2 uses
  %i.bf = add i64 %i.bc, %i.bb
  %i.bg = shl nuw nsw i64 %i.be, 1
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = trunc nuw i64 %i.be to i8
  %i.bj = insertelement <16 x i8> poison, i8 %i.bi, i64 0
  %i.bk = shufflevector <16 x i8> %i.bj, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bl = and i64 %i.az, 255                      ; 2 uses
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !19779
  %i.bp = load ptr, ptr %i.ax, align 8
  br label %.noexc22

.noexc22:                                         ; preds = %.noexc20, %.noexc25
  %.0.i.i112 = phi i64 [ %i.bf, %.noexc20 ], [ %i.cm, %.noexc25 ] ; 2 uses
  %.022.i.i111 = phi i64 [ %i.bm, %.noexc20 ], [ %i.cl, %.noexc25 ]
  %i.bq = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i112, i64 range(i64 0, 256) %i.bl)
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %i.bo, i64 %i.bq ; 3 uses
  %i.bs = load <16 x i8>, ptr %i.br, align 16     ; 2 uses
  %i.bt = icmp eq <16 x i8> %i.bs, %i.bk
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %i.bv = and i16 %i.bu, 4095
  %i.bw = zext nneg i16 %i.bv to i32
  %i.bx = icmp ne ptr %i.br, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bz = extractelement <16 x i8> %i.bs, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.noexc24, %.noexc22
  %.sroa.050.0 = phi i32 [ %i.bw, %.noexc22 ], [ %i.cc, %.noexc24 ] ; 4 uses
  %.not104 = icmp eq i32 %.sroa.050.0, 0
  br i1 %.not104, label %bb.c, label %.noexc24

.noexc24:                                         ; preds = %.critedge.i.i
  %i.ca = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.050.0, i1 true)
  %i.cb = add nsw i32 %.sroa.050.0, -1
  %i.cc = and i32 %i.cb, %.sroa.050.0
  %i.cd = zext nneg i32 %i.ca to i64
  tail call void @llvm.assume(i1 %i.bx)
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19879
  %i.cj = icmp eq ptr %i.aw, %i.ci
  br i1 %i.cj, label %.thread69, label %.critedge.i.i, !prof !19751, !llvm.loop !21298

bb.c:                                             ; preds = %.critedge.i.i
  %i.ck = icmp eq i8 %i.bz, 0
  br i1 %i.ck, label %.thread69, label %.noexc25, !prof !19751

.noexc25:                                         ; preds = %bb.c
  %i.cl = add i64 %.022.i.i111, -1                ; 2 uses
  %i.cm = add i64 %i.bh, %.0.i.i112
  %.not.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i, label %.thread69, label %.noexc22, !llvm.loop !21299

.thread69:                                        ; preds = %bb.b, %.noexc18, %bb.c, %.noexc25, %.noexc24, %.thread74, %.noexc3, %bb.a
  %i.cn = phi i1 [ false, %.noexc3 ], [ true, %bb.c ], [ false, %bb.a ], [ false, %.noexc24 ], [ true, %.thread74 ], [ true, %.noexc25 ], [ false, %.noexc18 ], [ false, %bb.b ]
  ret i1 %i.cn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly15RegexMatchCache20prepareToFindMatchesERKNS_25RegexMatchCacheKeyAndViewE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.456", align 8    ; 3 uses
  %3 = alloca %"struct.std::pair.388", align 8    ; 6 uses
  %4 = alloca %"class.std::tuple.160", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.227", align 1    ; 3 uses
  %6 = alloca %"struct.std::pair.373", align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %7 = alloca %"struct.std::pair.379", align 8    ; 8 uses
  %8 = alloca %"struct.google::CheckOpString", align 8 ; 5 uses
  %9 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %10 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %11 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %12 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %13 = alloca %"class.folly::RegexMatchCache::RegexObject", align 8 ; 7 uses
  %14 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %15 = alloca %"class.folly::RegexMatchCache::RegexObject", align 8 ; 7 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %16 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %17 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  %18 = alloca %"class.google::LogMessageFatal", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21895)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41, !noalias !21895
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !21895
  store ptr %1, ptr %4, align 8, !tbaa !19879, !alias.scope !21898, !noalias !21895
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41, !noalias !21895
  %i.d = load i64, ptr %1, align 8, !tbaa !19741, !noalias !21901 ; 2 uses
  %i.e = lshr i64 %i.d, 56
  %i.f = or i64 %i.e, 128
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE19tryEmplaceValueImplIS4_JRKSt21piecewise_construct_tSt5tupleIJRKS4_EESD_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSI_ISE_S6_EEEEEbESI_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.388") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 %i.d, i64 %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41, !noalias !21895
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !21895
  %.sroa.03.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !21511, !noalias !21895 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.44.0.copyload.i = load i64, ptr %.sroa.44.0..sroa_idx.i, align 8, !tbaa !19741, !noalias !21895
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !21904)
  store ptr %.sroa.03.0.copyload.i, ptr %6, align 8, !alias.scope !21895
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.44.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21895
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.i = load i8, ptr %i.g, align 8, !tbaa !20925, !range !20413, !noalias !21907, !noundef !179
  store i8 %i.i, ptr %i.h, align 8, !tbaa !21908, !alias.scope !21907
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41, !noalias !21895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.j = load ptr, ptr %.sroa.03.0.copyload.i, align 8, !tbaa !19808 ; 5 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !19879
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.k = invoke { i64, i8 } @_ZN5folly28RegexMatchCacheIndexedVectorIPKNS_18RegexMatchCacheKeyEE12insert_valueERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract = extractvalue { i64, i8 } %i.k, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.k, 1 ; 3 uses
  store i64 %.fca.0.extract, ptr %7, align 8
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i8 %.fca.1.extract, ptr %.sroa.257.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.l = load i8, ptr %i.h, align 8, !tbaa !20925, !range !20413, !noundef !179
  %i.m = icmp eq i8 %.fca.1.extract, %i.l
  br i1 %i.m, label %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, label %bb.d, !prof !19751

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noundef ptr @_ZN6google17MakeCheckOpStringIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.257.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull @.str.301)
          to label %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit unwind label %bb.g ; 2 uses

_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.d
  store ptr %i.n, ptr %8, align 8, !tbaa !21911
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge, label %bb.h

_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge: ; preds = %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  %.pre = load i8, ptr %i.h, align 8, !tbaa !20925, !range !20413
  br label %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread

_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %bb.c, %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge
  %i.o = phi i8 [ %.pre, %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge ], [ %.fca.1.extract, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19762 ; 3 uses
  %i.t = icmp ult i64 %i.s, 256                   ; 3 uses
  br i1 %i.p, label %bb.n, label %bb.bs

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit384

bb.f:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %_ZN6google12Check_EQImplIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  invoke void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull @.str.288, i32 noundef 422, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.i unwind label %bb.k
end_hunk_6
begin_hunk_7_@_ZN5folly15RegexMatchCache20prepareToFindMatchesERKNS_25RegexMatchCacheKeyAndViewE:bb.a
_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit378: ; preds = %bb.dk, %.noexc377
  %.pn.i372 = phi ptr [ %i.vh, %.noexc377 ], [ %.sroa.0.0.i.i371, %bb.dk ]
  %i.vi = lshr i64 %i.uy, 6
  %i.vj = and i64 %i.uy, 63
  %i.vk = shl nuw i64 1, %i.vj
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %.pn.i372, i64 %i.vi ; 2 uses
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !19741
  %i.vn = or i64 %i.vm, %i.vk
  store i64 %i.vn, ptr %i.vl, align 8, !tbaa !19741
  br label %bb.do

bb.dm:                                            ; preds = %bb.dl, %.critedge148
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dn:                                            ; preds = %bb.di
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.do:                                            ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset9set_valueEmb.exit378, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %i.vq = icmp eq ptr %i.lg, %.sroa.0403.0717
  br i1 %i.vq, label %._crit_edge, label %.backedge, !prof !19748

bb.dp:                                            ; preds = %bb.dn, %bb.dm, %bb.df, %bb.cn, %bb.cs, %bb.cm
  %.pn115.pn.pn = phi { ptr, i32 } [ %i.vp, %bb.dn ], [ %i.qb, %bb.cm ], [ %i.uk, %bb.df ], [ %i.qt, %bb.cs ], [ %i.qc, %bb.cn ], [ %i.vo, %bb.dm ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  %i.vr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !19943 ; 8 uses
  %.not.i.i.i.i825 = icmp eq ptr %i.vs, null
  br i1 %.not.i.i.i.i825, label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit829, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 8 ; 4 uses
  %i.vu = load atomic i64, ptr %i.vt acquire, align 8 ; 2 uses
  %i.vv = icmp eq i64 %i.vu, 4294967297
  %i.vw = trunc i64 %i.vu to i32                  ; 2 uses
  br i1 %i.vv, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  store i32 0, ptr %i.vt, align 8, !tbaa !19946
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vs, i64 12
  store i32 0, ptr %i.vx, align 4, !tbaa !19948
  %i.vy = load ptr, ptr %i.vs, align 8, !tbaa !14
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %i.wa = load ptr, ptr %i.vz, align 8
  call void %i.wa(ptr noundef nonnull align 8 dereferenceable(16) %i.vs) #41, !call_target !16646, !inline_history !21894
  %i.wb = load ptr, ptr %i.vs, align 8, !tbaa !14
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 24
  %i.wd = load ptr, ptr %i.wc, align 8
  call void %i.wd(ptr noundef nonnull align 8 dereferenceable(16) %i.vs) #41, !call_target !16647, !inline_history !21894
  br label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit829

bb.ds:                                            ; preds = %bb.dq
  %i.we = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19747
  %.not.i.i.i.i.i826 = icmp eq i8 %i.we, 0
  br i1 %.not.i.i.i.i.i826, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.wf = add nsw i32 %i.vw, -1
  store i32 %i.wf, ptr %i.vt, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i827

bb.du:                                            ; preds = %bb.ds
  %i.wg = atomicrmw volatile add ptr %i.vt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i827

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i827: ; preds = %bb.du, %bb.dt
  %.0.i.i.i.i.i.i828 = phi i32 [ %i.vw, %bb.dt ], [ %i.wg, %bb.du ]
  %i.wh = icmp eq i32 %.0.i.i.i.i.i.i828, 1
  br i1 %i.wh, label %bb.dv, label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit829, !prof !19748

bb.dv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i827
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vs) #41
  br label %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit829

_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit829: ; preds = %bb.dv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i827, %bb.dr, %bb.dp, %bb.ci
  %.pn115.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oh, %bb.ci ], [ %.pn115.pn.pn, %bb.dp ], [ %.pn115.pn.pn, %bb.dr ], [ %.pn115.pn.pn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i827 ], [ %.pn115.pn.pn, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.dw

bb.dw:                                            ; preds = %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit829, %bb.ch, %bb.by
  %.pn115.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn115.pn.pn.pn.pn.pn, %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit829 ], [ %i.og, %bb.ch ], [ %i.lo, %bb.by ] ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.li, i64 15
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !19759
  %i.wk = icmp eq i8 %i.wj, -1
  br i1 %i.wk, label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit, label %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i832

_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i832: ; preds = %bb.dw
  %i.wl = and i64 %i.lk, 255                      ; 3 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.li, i64 12
  %.0.copyload.i.i.i.i.i.i830 = load i16, ptr %i.wm, align 1
  %i.wn = zext i16 %.0.copyload.i.i.i.i.i.i830 to i64 ; 2 uses
  %notmask.i.i.i.i.i831 = shl nsw i64 -1, %i.wl
  %i.wo = xor i64 %notmask.i.i.i.i.i831, -1
  %i.wp = icmp eq i64 %i.wl, 0
  %i.wq = shl nuw nsw i64 %i.wn, 2
  %.neg17.i.i.i.i833 = sub nuw nsw i64 -16, %i.wq
  %.neg18.i.i.i.i834 = shl i64 -64, %i.wl
  %.0.i.neg.i.i.i.i835 = select i1 %i.wp, i64 %.neg17.i.i.i.i833, i64 %.neg18.i.i.i.i834
  %i.wr = and i64 %.0.i.neg.i.i.i.i835, -8
  %i.ws = lshr i64 %i.wo, 9
  %i.wt = and i64 %i.ws, 18014398509481976
  %i.wu = add nuw nsw i64 %i.wt, 8
  %i.wv = mul i64 %i.wu, %i.wn
  %i.ww = sub i64 %i.wv, %i.wr
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.ww) #41
  br label %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit: ; preds = %bb.bt, %.noexc154, %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit317, %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i, %bb.bs, %.critedge138, %_ZN5folly15RegexMatchCache11RegexObjectD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i832, %bb.dw, %bb.m, %bb.s, %bb.y, %bb.ad, %bb.br, %bb.f
  %.pn130.pn.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %.pn130, %bb.m ], [ %i.cd, %bb.ad ], [ %i.bz, %bb.y ], [ %.pn127.pn, %bb.br ], [ %i.bp, %bb.s ], [ %.pn115.pn.pn.pn.pn.pn.pn, %bb.dw ], [ %.pn115.pn.pn.pn.pn.pn.pn, %_ZN5folly3f146detail21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEE10afterResetEmmPhm.exit.i.i.i.i832 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit384

_ZN5folly6detail14ScopeGuardImplISt5_BindIFMNS_15RegexMatchCacheEDoFvvEPS3_EELb1EED2Ev.exit384: ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit, %bb.e
  %.pn130.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn130.pn.pn, %_ZN5folly3f146detail11F14BasicSetINS1_21VectorContainerPolicyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb0EEEEED2Ev.exit ], [ %i.u, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @_ZN5folly15RegexMatchCache6repairEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #41, !inline_history !21565
  resume { ptr, i32 } %.pn130.pn.pn.pn.pn.pn
}

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringIbbEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2) local_unnamed_addr #34 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !21944
  %i.b = load i8, ptr %0, align 1, !tbaa !20925, !range !20413, !noundef !179
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext %i.c)
          to label %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit: ; preds = %bb.a
  %i.e = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit
  %i.f = load i8, ptr %1, align 1, !tbaa !20925, !range !20413, !noundef !179
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext %i.g)
          to label %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit4 unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit4: ; preds = %bb.b
  %i.i = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit4
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret ptr %i.i

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit4, %_ZN6google22MakeCheckOpValueStringIbEEvPSoRKT_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %i.j
}

declare void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #15

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define nonnull ptr @_ZNK5folly15RegexMatchCache17findMatchesUnsafeERKNS_18RegexMatchCacheKeyENSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 %2) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19762 ; 2 uses
  %i.c = lshr i64 %i.b, 8
  switch i64 %i.c, label %bb.c [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.i.thread
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19849
  %i.f = and i64 %i.e, -8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19808 ; 2 uses
  %i.i = load i256, ptr %1, align 8
  %i.j = load i256, ptr %i.h, align 8
  %i.k = icmp ne i256 %i.i, %i.j
  %i.l = zext i1 %i.k to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE2atIKS8_S4_EERDaRT_RKT0_.exit, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.i.thread

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i64, ptr %1, align 8, !tbaa !19741  ; 2 uses
  %i.o = lshr i64 %i.n, 56
  %i.p = or i64 %i.o, 128                         ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = or disjoint i64 %i.q, 1
  %i.s = trunc nuw i64 %i.p to i8
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.v = and i64 %i.b, 255                        ; 2 uses
  %i.w = shl nuw i64 1, %i.v
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !19803
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.g
  %.0.i.i58 = phi i64 [ %i.n, %bb.c ], [ %i.av, %bb.g ] ; 2 uses
  %.023.i.i57 = phi i64 [ %i.w, %bb.c ], [ %i.au, %bb.g ]
  %i.y = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i58, i64 range(i64 0, 256) %i.v)
  %i.z = getelementptr inbounds nuw [128 x i8], ptr %i.x, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ab, i32 0, i32 3, i32 1)
  %i.ac = load <16 x i8>, ptr %i.z, align 16      ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.ac, %i.u
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = and i16 %i.ae, 16383
  %i.ag = zext nneg i16 %i.af to i32
  %i.ah = icmp ne ptr %i.z, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ai = extractelement <16 x i8> %i.ac, i64 15
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.e, %bb.d
  %.sroa.018.0 = phi i32 [ %i.ag, %bb.d ], [ %i.al, %bb.e ] ; 4 uses
  %.not = icmp eq i32 %.sroa.018.0, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge.i.i
  %i.aj = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.018.0, i1 true)
  %i.ak = add nsw i32 %.sroa.018.0, -1
  %i.al = and i32 %i.ak, %.sroa.018.0
  %i.am = zext nneg i32 %i.aj to i64
  tail call void @llvm.assume(i1 %i.ah)
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19808 ; 2 uses
  %i.ap = load i256, ptr %1, align 8
  %i.aq = load i256, ptr %i.ao, align 8
  %i.ar = icmp ne i256 %i.ap, %i.aq
  %i.as = zext i1 %i.ar to i32
  %.not9.i.i.i.i.i.i.i.i7 = icmp eq i32 %i.as, 0
  br i1 %.not9.i.i.i.i.i.i.i.i7, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE2atIKS8_S4_EERDaRT_RKT0_.exit, label %.critedge.i.i, !prof !19751, !llvm.loop !21425

bb.f:                                             ; preds = %.critedge.i.i
  %i.at = icmp eq i8 %i.ai, 0
  br i1 %i.at, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.i.thread, label %bb.g, !prof !19751

bb.g:                                             ; preds = %bb.f
  %i.au = add i64 %.023.i.i57, -1                 ; 2 uses
  %i.av = add i64 %i.r, %.0.i.i58
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.i.thread, label %bb.d, !llvm.loop !21426

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S6_EEEEERKT_.exit.i.thread: ; preds = %bb.f, %bb.g, %bb.b, %bb.a
  tail call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.12) #20
  unreachable

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE2atIKS8_S4_EERDaRT_RKT0_.exit: ; preds = %bb.e, %bb.b
  %i.aw = phi ptr [ %i.h, %bb.b ], [ %i.ao, %bb.e ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 3 uses
  %i.ay = load atomic i64, ptr %i.ax monotonic, align 8 ; 2 uses
  %.sroa.0.0.copyload.sroa.speculated.i7.i = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.ay)
  %i.az = cmpxchg weak ptr %i.ax, i64 %i.ay, i64 %.sroa.0.0.copyload.sroa.speculated.i7.i monotonic monotonic, align 8 ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  br i1 %i.ba, label %"_ZNK5folly22atomic_fetch_modify_fnclISt6atomicINSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEEZNKS_15RegexMatchCache17findMatchesUnsafeERKNS_18RegexMatchCacheKeyESB_E3$_0EENS_6detail12conditional_IX13is_detected_vINSI_24atomic_value_type_alias_5applyET_EEE5applyISK_NSI_23atomic_value_type_load_EE5applyISM_EERSM_T0_St12memory_order.exit", label %_ZNSt6atomicINSt6chrono10time_pointIN5folly6chrono19coarse_steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i, !prof !21947

_ZNSt6atomicINSt6chrono10time_pointIN5folly6chrono19coarse_steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE2atIKS8_S4_EERDaRT_RKT0_.exit, %_ZNSt6atomicINSt6chrono10time_pointIN5folly6chrono19coarse_steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i
  %i.bb = phi { i64, i1 } [ %i.bd, %_ZNSt6atomicINSt6chrono10time_pointIN5folly6chrono19coarse_steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i ], [ %i.az, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE2atIKS8_S4_EERDaRT_RKT0_.exit ]
  %i.bc = extractvalue { i64, i1 } %i.bb, 0       ; 2 uses
  %.sroa.0.0.copyload.sroa.speculated.i.i = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.bc)
  %i.bd = cmpxchg weak ptr %i.ax, i64 %i.bc, i64 %.sroa.0.0.copyload.sroa.speculated.i.i monotonic monotonic, align 8 ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  br i1 %i.be, label %"_ZNK5folly22atomic_fetch_modify_fnclISt6atomicINSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEEZNKS_15RegexMatchCache17findMatchesUnsafeERKNS_18RegexMatchCacheKeyESB_E3$_0EENS_6detail12conditional_IX13is_detected_vINSI_24atomic_value_type_alias_5applyET_EEE5applyISK_NSI_23atomic_value_type_load_EE5applyISM_EERSM_T0_St12memory_order.exit", label %_ZNSt6atomicINSt6chrono10time_pointIN5folly6chrono19coarse_steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i, !prof !21948, !llvm.loop !21949

"_ZNK5folly22atomic_fetch_modify_fnclISt6atomicINSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS3_8durationIlSt5ratioILl1ELl1000000000EEEEEEEZNKS_15RegexMatchCache17findMatchesUnsafeERKNS_18RegexMatchCacheKeyESB_E3$_0EENS_6detail12conditional_IX13is_detected_vINSI_24atomic_value_type_alias_5applyET_EEE5applyISK_NSI_23atomic_value_type_load_EE5applyISM_EERSM_T0_St12memory_order.exit": ; preds = %_ZNSt6atomicINSt6chrono10time_pointIN5folly6chrono19coarse_steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_18RegexMatchCacheKeyENS_15RegexMatchCache17RegexToMatchEntryEvvvEEE2atIKS8_S4_EERDaRT_RKT0_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  ret ptr %i.bf
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly15RegexMatchCache11findMatchesB5cxx11ERKNS_18RegexMatchCacheKeyENSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.361") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i64 %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @_ZNK5folly15RegexMatchCache17findMatchesUnsafeERKNS_18RegexMatchCacheKeyENSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 %3) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19762
  %i.d = lshr i64 %i.c, 8                         ; 5 uses
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  %i.e = load ptr, ptr %i.a, align 8              ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.d ; 7 uses
  %i.g = add nuw nsw i64 %i.d, 2305843009213693951
  %i.h = and i64 %i.g, 2305843009213693951
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #45 ; 10 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !21242
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !21245
  %i.n = add nuw nsw i64 %i.d, 2305843009213693951
  %i.o = and i64 %i.n, 2305843009213693951        ; 3 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.o, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.q = shl nuw nsw i64 %i.d, 3
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.q
  %bound0 = icmp ult ptr %i.k, %i.f
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp samesign ult i64 %i.o, 15
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.p, 12
  %n.vec = and i64 %i.p, 4611686018427387888      ; 5 uses
  %i.r = shl i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %i.k, i64 %i.r     ; 2 uses
  %i.t = mul i64 %n.vec, -8
  %i.u = getelementptr i8, ptr %i.f, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.v ; 4 uses
  %i.w = mul i64 %index, -8
  %next.gep11 = getelementptr i8, ptr %i.f, i64 %i.w ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %next.gep11, i64 -32
  %i.y = getelementptr inbounds i8, ptr %next.gep11, i64 -64
  %i.z = getelementptr inbounds i8, ptr %next.gep11, i64 -96
  %i.aa = getelementptr inbounds i8, ptr %next.gep11, i64 -128
  %wide.load = load <4 x ptr>, ptr %i.x, align 8, !tbaa !19858, !alias.scope !21950
  %wide.load12 = load <4 x ptr>, ptr %i.y, align 8, !tbaa !19858, !alias.scope !21950
  %wide.load13 = load <4 x ptr>, ptr %i.z, align 8, !tbaa !19858, !alias.scope !21950
  %wide.load14 = load <4 x ptr>, ptr %i.aa, align 8, !tbaa !19858, !alias.scope !21950
  %reverse = shufflevector <4 x ptr> %wide.load, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse15 = shufflevector <4 x ptr> %wide.load12, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse16 = shufflevector <4 x ptr> %wide.load13, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse17 = shufflevector <4 x ptr> %wide.load14, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ab = getelementptr i8, ptr %next.gep, i64 32
  %i.ac = getelementptr i8, ptr %next.gep, i64 64
  %i.ad = getelementptr i8, ptr %next.gep, i64 96
  store <4 x ptr> %reverse, ptr %next.gep, align 8, !tbaa !19858, !alias.scope !21953, !noalias !21950
  store <4 x ptr> %reverse15, ptr %i.ab, align 8, !tbaa !19858, !alias.scope !21953, !noalias !21950
  store <4 x ptr> %reverse16, ptr %i.ac, align 8, !tbaa !19858, !alias.scope !21953, !noalias !21950
  store <4 x ptr> %reverse17, ptr %i.ad, align 8, !tbaa !19858, !alias.scope !21953, !noalias !21950
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !21955

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !20663

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.p, 4611686018427387900    ; 4 uses
  %i.af = shl i64 %n.vec20, 3
  %i.ag = getelementptr i8, ptr %i.k, i64 %i.af   ; 2 uses
  %i.ah = mul i64 %n.vec20, -8
  %i.ai = getelementptr i8, ptr %i.f, i64 %i.ah
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.aj = shl i64 %index21, 3
  %next.gep22 = getelementptr i8, ptr %i.k, i64 %i.aj
  %i.ak = mul i64 %index21, -8
  %next.gep23 = getelementptr i8, ptr %i.f, i64 %i.ak
  %i.al = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load24 = load <4 x ptr>, ptr %i.al, align 8, !tbaa !19858, !alias.scope !21950
  %reverse25 = shufflevector <4 x ptr> %wide.load24, <4 x ptr> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x ptr> %reverse25, ptr %next.gep22, align 8, !tbaa !19858, !alias.scope !21953, !noalias !21950
  %index.next26 = add nuw i64 %index21, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next26, %n.vec20
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21956

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.p, %n.vec20
  br i1 %cmp.n27, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.k, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn.ph = phi ptr [ %i.f, %iter.check ], [ %i.f, %vector.memcheck ], [ %i.u, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn = phi ptr [ %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i.pn, i64 -8 ; 3 uses
  %i.an = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !19858
  store ptr %i.an, ptr %.08.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !19858
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = icmp eq ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, %i.e
  br i1 %i.ap, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !21957

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.ag, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !21244
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5folly15RegexMatchCache15hasItemsToPurgeENSt6chrono10time_pointINS_6chrono19coarse_steady_clockENS1_8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, i64 %1) local_unnamed_addr #37 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19849 ; 3 uses
  %i.c = and i64 %i.b, -8                         ; 2 uses
  %.not27.not = icmp eq i64 %i.c, 0
  br i1 %.not27.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19808
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load atomic i64, ptr %i.f monotonic, align 8
  %.not19.not59 = icmp sgt i64 %i.g, %1
  br i1 %.not19.not59, label %.lr.ph62, label %._crit_edge

.lr.ph62:                                         ; preds = %.lr.ph.preheader
  %i.h = shl i64 %i.b, 1
  %i.i = and i64 %i.h, 14
  %i.j = lshr i64 %i.b, 3
  %i.k = and i64 %i.j, 1
  %i.l = or disjoint i64 %i.i, %i.k
end_hunk_7
