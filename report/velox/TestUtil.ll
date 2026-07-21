inline.NumInlined: 4374
inline.NumDeleted: 1553
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZSt10destroy_atIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEEEvPT_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !1549
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !1551
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36, !call_target !1552, !inline_history !1837
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36, !call_target !1576, !inline_history !1837
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !15

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !1624 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i, label %_ZN5boost13re_detail_50014recursion_infoINS_13match_resultsIPKcSaINS_9sub_matchIS4_EEEEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1625
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #39
  br label %_ZN5boost13re_detail_50014recursion_infoINS_13match_resultsIPKcSaINS_9sub_matchIS4_EEEEEED2Ev.exit

_ZN5boost13re_detail_50014recursion_infoINS_13match_resultsIPKcSaINS_9sub_matchIS4_EEEEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost13re_detail_50014recursion_infoINS_13match_resultsIPKcSaINS_9sub_matchIS4_EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1546 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !1549
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !1551
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36, !call_target !1552, !inline_history !1623
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36, !call_target !1576, !inline_history !1623
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !15

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !1624 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1625
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #39
  br label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEED2Ev.exit

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9match_impEv(ptr noundef nonnull align 8 dereferenceable(236) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %3 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %4 = alloca %"struct.boost::sub_match", align 8 ; 6 uses
  %5 = alloca %"struct.boost::re_detail_500::save_state_init", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !1838
  %i.c = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !1841

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #36
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = tail call noundef ptr @_ZN5boost13re_detail_50015mem_block_cache3getEv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1842
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4088 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !1842
  store i32 0, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 1024, ptr %i.i, align 8, !tbaa !1843
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1631 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1653
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.k, ptr %i.m, align 8, !tbaa !1844
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.n, align 8, !tbaa !1845
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1694 ; 2 uses
  %i.q = or i32 %i.p, 32768
  store i32 %i.q, ptr %i.o, align 8, !tbaa !1694
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1698 ; 8 uses
  %i.t = and i32 %i.p, 262144
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.e, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1689, !nonnull !192, !align !1697
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1656 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1846
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit: ; preds = %bb.e, %bb.f, %bb.d
  %i.z = phi i64 [ 1, %bb.d ], [ %i.y, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1652 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %i.ab, ptr %4, align 8, !tbaa !1847
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !1848
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.ad, align 8, !tbaa !1849
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1850 ; 5 uses
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !1624 ; 10 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = sdiv exact i64 %i.aj, 24                ; 3 uses
  %i.al = add i64 %i.z, 2                         ; 3 uses
  %i.am = icmp ugt i64 %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit
  %i.an = getelementptr inbounds [24 x i8], ptr %i.ag, i64 %i.z
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, %i.af
  br i1 %i.ap, label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i, label %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.ao, ptr %i.ae, align 8, !tbaa !1850
  br label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i

_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i: ; preds = %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, %bb.g
  %i.aq = phi ptr [ %i.af, %bb.g ], [ %i.ao, %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i ] ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ag, %i.aq
  br i1 %.not5.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i
  %6 = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %7 = shufflevector <2 x ptr> %6, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  store <2 x ptr> %7, ptr %.06.i.i.i.i.i, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  store i8 0, ptr %i.ar, align 8, !tbaa !1849
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.aq
  br i1 %.not.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i, !llvm.loop !1851

bb.h:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit
  %.not5.i.i.i.i15.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not5.i.i.i.i15.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i, label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h
  %8 = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %.lr.ph.i.i.i.i16.i
  %.06.i.i.i.i20.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i16.i ], [ %i.ag, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  store <2 x ptr> %9, ptr %.06.i.i.i.i20.i, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i20.i, i64 16
  store i8 0, ptr %i.at, align 8, !tbaa !1849
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i20.i, i64 24 ; 2 uses
  %.not.i.i.i.i21.i = icmp eq ptr %i.au, %i.af
  br i1 %.not.i.i.i.i21.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i, label %.lr.ph.i.i.i.i16.i, !llvm.loop !1851

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i: ; preds = %.lr.ph.i.i.i.i16.i, %bb.h
  %.not.i5 = icmp eq i64 %i.al, %i.ak
  br i1 %.not.i5, label %.loopexit30, label %bb.i

bb.i:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i
  %i.av = sub i64 %i.al, %i.ak
  %i.aw = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj
  invoke void @_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS4_S6_EEmRKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.s, ptr %i.aw, i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(17) %4)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !1624
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !1698
  %.pre31 = load ptr, ptr %i.j, align 8, !tbaa !1631
  br label %.loopexit30

.loopexit30:                                      ; preds = %.lr.ph.i.i.i.i.i, %.noexc, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i
  %i.ax = phi ptr [ %.pre31, %.noexc ], [ %i.k, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i ], [ %i.k, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i ], [ %i.k, %.lr.ph.i.i.i.i.i ]
  %i.ay = phi ptr [ %.pre, %.noexc ], [ %i.s, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i ], [ %i.s, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i ], [ %i.s, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.az = phi ptr [ %.pre.i, %.noexc ], [ %i.ag, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i ], [ %i.ag, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %i.k, ptr %i.ba, align 8, !tbaa !1847
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store i32 0, ptr %i.bb, align 8, !tbaa !1852
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.ax, ptr %i.bc, align 8, !tbaa !1853
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1689, !nonnull !192, !align !1697 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1656, !noalias !1854 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1546, !noalias !1854 ; 12 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, null         ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %.loopexit30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 6 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19, !noalias !1854
  %.not.i.i.i.i.i6 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i6, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !7, !noalias !1854
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !7, !noalias !1854
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit

bb.l:                                             ; preds = %bb.j
  %i.bm = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4, !noalias !1854 ; 0 uses
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit: ; preds = %bb.k, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  store ptr %i.bf, ptr %i.bn, align 8, !tbaa !1857
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 64 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1546 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.bh, %i.bp
  br i1 %.not.i.i.i.i7, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread, label %bb.m

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread: ; preds = %.loopexit30
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  store ptr %i.bf, ptr %i.bq, align 8, !tbaa !1857
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 64 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1546 ; 2 uses
  %.not.i.i.i.i728 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i728, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

bb.m:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i8 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i8, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bi, align 4, !tbaa !7
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bw = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !1546
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %i.bx = phi ptr [ %.pr.pre.i.i.i.i, %bb.o ], [ %i.bp, %bb.n ] ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not8.i.i.i.i, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread49, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread49: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.bh, ptr %i.bo, align 8, !tbaa !1546
  br label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread: ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.by = phi ptr [ %i.bx, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i ], [ %i.bs, %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread ] ; 7 uses
  %i.bz = phi ptr [ %i.bo, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i ], [ %i.br, %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 4294967297
  %i.cd = trunc i64 %i.cb to i32                  ; 2 uses
  br i1 %i.cc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread
  store i32 0, ptr %i.ca, align 8, !tbaa !1549
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.ce, align 4, !tbaa !1551
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #36, !call_target !1552, !inline_history !1858
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !30
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #36, !call_target !1576, !inline_history !1858
  br label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit

bb.q:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i9.i.i.i.i = icmp eq i8 %i.cl, 0
  br i1 %.not.i9.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = add nsw i32 %i.cd, -1
  store i32 %i.cm, ptr %i.ca, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cn = atomicrmw volatile add ptr %i.ca, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.cd, %bb.r ], [ %i.cn, %bb.s ]
  %i.co = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.co, label %bb.t, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit, !prof !15

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #36
  br label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t
  store ptr %i.bh, ptr %i.bz, align 8, !tbaa !1546
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread: ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread49, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread
  store i32 0, ptr %i.cp, align 8, !tbaa !1549
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.ct, align 4, !tbaa !1551
  %i.cu = load ptr, ptr %i.bh, align 8, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #36, !call_target !1552, !inline_history !1670
  %i.cx = load ptr, ptr %i.bh, align 8, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #36, !call_target !1576, !inline_history !1670
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i9 = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i9, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.cs, %bb.w ], [ %i.dc, %bb.x ]
  %i.dd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dd, label %bb.y, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !15

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #36
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  %i.de = load i32, ptr %i.o, align 8, !tbaa !1688 ; 2 uses
  %i.df = and i32 %i.de, 131072
  %.not4 = icmp eq i32 %i.df, 0
  br i1 %.not4, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dg = load ptr, ptr %i.r, align 8, !tbaa !1698
end_hunk_0
begin_hunk_1_@_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9match_impEv:bb.a
  call void @_ZN5boost13re_detail_50015save_state_initD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  resume { ptr, i32 } %lpad.phi

bb.av:                                            ; preds = %bb.an, %._crit_edge.i17, %bb.ah
  %.0 = phi i1 [ false, %bb.ah ], [ false, %bb.an ], [ %i.fe, %._crit_edge.i17 ]
  %i.ff = load ptr, ptr %5, align 8, !tbaa !1838
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !1842
  %i.fh = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %bb.aw, label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit, !prof !1841

bb.aw:                                            ; preds = %bb.av
  %i.fj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #36
  %.not.i.i.i26 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i.i26, label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fk = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #36 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #36
  br label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit

_ZN5boost13re_detail_50015save_state_initD2Ev.exit: ; preds = %bb.av, %bb.aw, %bb.ax
  call void @_ZN5boost13re_detail_50015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr noundef %i.fg)
  %i.fl = load ptr, ptr %5, align 8, !tbaa !1838
  store ptr null, ptr %i.fl, align 8, !tbaa !1842
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret i1 %.0

bb.ay:                                            ; preds = %bb.as
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #38
  unreachable

bb.az:                                            ; preds = %bb.at
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(77) ptr @_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1857
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1857
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1546 ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !1546 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !7
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !7
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !1546
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.n = phi ptr [ %i.h, %bb.b ], [ %i.h, %bb.d ], [ %.pr.pre.i.i.i, %bb.e ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !1549
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !1551
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #36, !call_target !1552, !inline_history !1867
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #36, !call_target !1576, !inline_history !1867
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i9.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !15

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #36
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.g, ptr %i.e, align 8, !tbaa !1546
  br label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit

_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1852
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !1852
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !1611, !range !1531, !noundef !192 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %i.ah, ptr %i.aj, align 4, !tbaa !1611
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !49
  store <2 x ptr> %i.am, ptr %i.al, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1848
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !1848
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !1849, !range !1531, !noundef !192
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.ar, ptr %i.as, align 8, !tbaa !1849
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !1868
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 4 uses
  store i8 0, ptr %i.b, align 2, !tbaa !1869
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1689, !nonnull !192, !align !1697
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1656
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1870
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.g, ptr %i.h, align 8, !tbaa !1687
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1698 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1653 ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !1624 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.l, ptr %i.o, align 8, !tbaa !1848
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !1847
  %i.q = icmp ne ptr %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.s = zext i1 %i.q to i8
  store i8 %i.s, ptr %i.r, align 8, !tbaa !1849
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.l, ptr %i.t, align 8, !tbaa !1847
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1850
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.m to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 24                  ; 3 uses
  %i.aa = icmp ugt i64 %i.z, 3
  br i1 %i.aa, label %.lr.ph.i, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !1848
  %1 = insertelement <2 x ptr> poison, ptr %.pre.i, i64 0
  %2 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ac = add nsw i64 %i.z, -3                    ; 2 uses
  %i.ad = add nsw i64 %i.z, -4
  %xtraiter = and i64 %i.ac, 3                    ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 3
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ac, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.08.i = phi i64 [ 3, %.lr.ph.i.new ], [ %i.aq, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.08.i ; 2 uses
  store <2 x ptr> %2, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i8 0, ptr %i.ag, align 8, !tbaa !1849
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.08.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store <2 x ptr> %2, ptr %i.ai, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i8 0, ptr %i.aj, align 8, !tbaa !1849
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.08.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store <2 x ptr> %2, ptr %i.al, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i8 0, ptr %i.am, align 8, !tbaa !1849
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.08.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store <2 x ptr> %2, ptr %i.ao, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  store i8 0, ptr %i.ap, align 8, !tbaa !1849
  %i.aq = add nuw i64 %.08.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !1871

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.08.i.epil.init = phi i64 [ 3, %.lr.ph.i ], [ %i.aq, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.08.i.epil = phi i64 [ %.08.i.epil.init, %.epil.preheader ], [ %i.at, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.08.i.epil ; 2 uses
  store <2 x ptr> %2, ptr %i.ar, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i8 0, ptr %i.as, align 8, !tbaa !1849
  %i.at = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit, label %bb.c, !llvm.loop !1872

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit: ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.l, ptr %i.au, align 8, !tbaa !1874
  %i.av = tail call noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEv(ptr noundef nonnull align 8 dereferenceable(236) %0) ; 0 uses
  %i.aw = load i8, ptr %i.b, align 2, !tbaa !1869, !range !1531, !noundef !192
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit
  %i.ay = load i8, ptr %i.a, align 1, !tbaa !1868, !range !1531, !noundef !192
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %.thread3

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1688 ; 2 uses
  %i.bc = and i32 %i.bb, 8192
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.thread3, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !1869
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !1698 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1652 ; 6 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !1624 ; 5 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 56
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !1848
  %i.bi = getelementptr i8, ptr %i.bg, i64 64
  store i8 0, ptr %i.bi, align 8, !tbaa !1849
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !1847
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1848
  %i.bl = icmp ne ptr %i.bf, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = zext i1 %i.bl to i8
  store i8 %i.bn, ptr %i.bm, align 8, !tbaa !1849
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %i.bf, ptr %i.bo, align 8, !tbaa !1847
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store ptr %i.bf, ptr %i.bp, align 8, !tbaa !1848
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i8 0, ptr %i.bq, align 8, !tbaa !1875
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 76
  store i8 0, ptr %i.br, align 4, !tbaa !1611
  store ptr %i.bf, ptr %i.k, align 8, !tbaa !1653
  %i.bs = and i32 %i.bb, 131072
  %.not1 = icmp eq i32 %i.bs, 0
  br i1 %.not1, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = load ptr, ptr %0, align 8, !tbaa !1696, !nonnull !192, !align !1697
  tail call void @_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE12maybe_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(77) %i.bt, ptr noundef nonnull align 8 dereferenceable(77) %i.bd)
  %.pre = load i8, ptr %i.b, align 2, !tbaa !1869, !range !1531
  %i.bu = trunc nuw i8 %.pre to i1
  br i1 %i.bu, label %.thread, label %.thread3

.thread3:                                         ; preds = %bb.e, %bb.d, %bb.g
  %i.bv = load ptr, ptr %i.au, align 8, !tbaa !1874
  store ptr %i.bv, ptr %i.k, align 8, !tbaa !1653
  br label %.thread

.thread:                                          ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit, %bb.f, %.thread3, %bb.g
  %i.bw = phi i1 [ true, %bb.g ], [ false, %.thread3 ], [ true, %bb.f ], [ true, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit ]
  ret i1 %i.bw
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost13re_detail_50015save_state_initD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1838
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1842
  %i.c = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !1841

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #36
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #36 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5boost13re_detail_50015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr noundef %i.b)
  %i.g = load ptr, ptr %0, align 8, !tbaa !1838
  store ptr null, ptr %i.g, align 8, !tbaa !1842
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5boost13re_detail_50015mem_block_cache3getEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 seq_cst, align 8 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = cmpxchg ptr %0, ptr %i.a, ptr null seq_cst seq_cst, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8 ; 3 uses
  %.not.1 = icmp eq ptr %i.e, null
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = cmpxchg ptr %i.d, ptr %i.e, ptr null seq_cst seq_cst, align 8
  %i.g = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.g, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load atomic ptr, ptr %i.h seq_cst, align 8 ; 3 uses
  %.not.2 = icmp eq ptr %i.i, null
  br i1 %.not.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = cmpxchg ptr %i.h, ptr %i.i, ptr null seq_cst seq_cst, align 8
  %i.k = extractvalue { ptr, i1 } %i.j, 1
  br i1 %i.k, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load atomic ptr, ptr %i.l seq_cst, align 8 ; 3 uses
  %.not.3 = icmp eq ptr %i.m, null
  br i1 %.not.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = cmpxchg ptr %i.l, ptr %i.m, ptr null seq_cst seq_cst, align 8
  %i.o = extractvalue { ptr, i1 } %i.n, 1
  br i1 %i.o, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = load atomic ptr, ptr %i.p seq_cst, align 8 ; 3 uses
  %.not.4 = icmp eq ptr %i.q, null
  br i1 %.not.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = cmpxchg ptr %i.p, ptr %i.q, ptr null seq_cst seq_cst, align 8
  %i.s = extractvalue { ptr, i1 } %i.r, 1
  br i1 %i.s, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load atomic ptr, ptr %i.t seq_cst, align 8 ; 3 uses
  %.not.5 = icmp eq ptr %i.u, null
  br i1 %.not.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = cmpxchg ptr %i.t, ptr %i.u, ptr null seq_cst seq_cst, align 8
  %i.w = extractvalue { ptr, i1 } %i.v, 1
  br i1 %i.w, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = load atomic ptr, ptr %i.x seq_cst, align 8 ; 3 uses
  %.not.6 = icmp eq ptr %i.y, null
  br i1 %.not.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = cmpxchg ptr %i.x, ptr %i.y, ptr null seq_cst seq_cst, align 8
  %i.aa = extractvalue { ptr, i1 } %i.z, 1
  br i1 %i.aa, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load atomic ptr, ptr %i.ab seq_cst, align 8 ; 3 uses
  %.not.7 = icmp eq ptr %i.ac, null
  br i1 %.not.7, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = cmpxchg ptr %i.ab, ptr %i.ac, ptr null seq_cst seq_cst, align 8
  %i.ae = extractvalue { ptr, i1 } %i.ad, 1
  br i1 %i.ae, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ag = load atomic ptr, ptr %i.af seq_cst, align 8 ; 3 uses
  %.not.8 = icmp eq ptr %i.ag, null
  br i1 %.not.8, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_1
