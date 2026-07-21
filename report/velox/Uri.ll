inline.NumInlined: 4614
inline.NumDeleted: 1653
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZSt10destroy_atIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEEEvPT_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !71
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #30, !call_target !74, !inline_history !2346
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #30, !call_target !106, !inline_history !2346
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
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
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !67

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #30
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i, label %_ZN5boost13re_detail_50014recursion_infoINS_13match_resultsIPKcSaINS_9sub_matchIS4_EEEEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #33
  br label %_ZN5boost13re_detail_50014recursion_infoINS_13match_resultsIPKcSaINS_9sub_matchIS4_EEEEEED2Ev.exit

_ZN5boost13re_detail_50014recursion_infoINS_13match_resultsIPKcSaINS_9sub_matchIS4_EEEEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost13re_detail_50014recursion_infoINS_13match_resultsIPKcSaINS_9sub_matchIS4_EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !71
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #30, !call_target !74, !inline_history !142
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #30, !call_target !106, !inline_history !142
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
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
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !67

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #30
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !143
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #33
  br label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEED2Ev.exit

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9match_impEv(ptr noundef nonnull align 8 dereferenceable(236) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %3 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %4 = alloca %"struct.boost::sub_match", align 8 ; 6 uses
  %5 = alloca %"struct.boost::re_detail_500::save_state_init", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !2347
  %i.c = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5boost13re_detail_50015save_state_initC2EPPNS0_11saved_stateES4_.exit, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #30
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN5boost13re_detail_50015save_state_initC2EPPNS0_11saved_stateES4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #30
  br label %_ZN5boost13re_detail_50015save_state_initC2EPPNS0_11saved_stateES4_.exit

_ZN5boost13re_detail_50015save_state_initC2EPPNS0_11saved_stateES4_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = tail call noundef ptr @_ZN5boost13re_detail_50015mem_block_cache3getEv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !2350
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4088 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !2350
  store i32 0, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 1024, ptr %i.i, align 8, !tbaa !2351
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !180  ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.l, align 8, !tbaa !202
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.k, ptr %i.m, align 8, !tbaa !2352
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.n, align 8, !tbaa !2353
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !2290 ; 2 uses
  %i.q = or i32 %i.p, 32768
  store i32 %i.q, ptr %i.o, align 8, !tbaa !2290
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2293 ; 8 uses
  %i.t = and i32 %i.p, 262144
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.d, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit

bb.d:                                             ; preds = %_ZN5boost13re_detail_50015save_state_initC2EPPNS0_11saved_stateES4_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2287, !nonnull !56, !align !1701
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1694
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit: ; preds = %bb.d, %bb.e, %_ZN5boost13re_detail_50015save_state_initC2EPPNS0_11saved_stateES4_.exit
  %i.z = phi i64 [ 1, %_ZN5boost13re_detail_50015save_state_initC2EPPNS0_11saved_stateES4_.exit ], [ %i.y, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !201 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.ab, ptr %4, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !61
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.ad, align 8, !tbaa !2354
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 5 uses
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !59  ; 10 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = sdiv exact i64 %i.aj, 24                ; 3 uses
  %i.al = add i64 %i.z, 2                         ; 3 uses
  %i.am = icmp ugt i64 %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit
  %i.an = getelementptr inbounds [24 x i8], ptr %i.ag, i64 %i.z
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, %i.af
  br i1 %i.ap, label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i, label %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.f
  store ptr %i.ao, ptr %i.ae, align 8, !tbaa !58
  br label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i

_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i: ; preds = %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, %bb.f
  %i.aq = phi ptr [ %i.af, %bb.f ], [ %i.ao, %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i ] ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ag, %i.aq
  br i1 %.not5.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i
  %6 = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %7 = shufflevector <2 x ptr> %6, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  store <2 x ptr> %7, ptr %.06.i.i.i.i.i, align 8, !tbaa !157
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  store i8 0, ptr %i.ar, align 8, !tbaa !2354
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.aq
  br i1 %.not.i.i.i.i.i, label %.loopexit30, label %.lr.ph.i.i.i.i.i, !llvm.loop !2355

bb.g:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit
  %.not5.i.i.i.i15.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not5.i.i.i.i15.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i, label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.g
  %8 = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %.lr.ph.i.i.i.i16.i
  %.06.i.i.i.i20.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i16.i ], [ %i.ag, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  store <2 x ptr> %9, ptr %.06.i.i.i.i20.i, align 8, !tbaa !157
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i20.i, i64 16
  store i8 0, ptr %i.at, align 8, !tbaa !2354
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i20.i, i64 24 ; 2 uses
  %.not.i.i.i.i21.i = icmp eq ptr %i.au, %i.af
  br i1 %.not.i.i.i.i21.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i, label %.lr.ph.i.i.i.i16.i, !llvm.loop !2355

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i: ; preds = %.lr.ph.i.i.i.i16.i, %bb.g
  %.not.i5 = icmp eq i64 %i.al, %i.ak
  br i1 %.not.i5, label %.loopexit30, label %bb.h

bb.h:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i
  %i.av = sub i64 %i.al, %i.ak
  %i.aw = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj
  invoke void @_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS4_S6_EEmRKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.s, ptr %i.aw, i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(17) %4)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !59
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !2293
  %.pre31 = load ptr, ptr %i.j, align 8, !tbaa !180
  br label %.loopexit30

.loopexit30:                                      ; preds = %.lr.ph.i.i.i.i.i, %.noexc, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i
  %i.ax = phi ptr [ %.pre31, %.noexc ], [ %i.k, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i ], [ %i.k, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i ], [ %i.k, %.lr.ph.i.i.i.i.i ]
  %i.ay = phi ptr [ %.pre, %.noexc ], [ %i.s, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i ], [ %i.s, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i ], [ %i.s, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.az = phi ptr [ %.pre.i, %.noexc ], [ %i.ag, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i ], [ %i.ag, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %i.k, ptr %i.ba, align 8, !tbaa !60
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store i32 0, ptr %i.bb, align 8, !tbaa !2356
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.ax, ptr %i.bc, align 8, !tbaa !2357
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !2287, !nonnull !56, !align !1701 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !205, !noalias !2358 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !68, !noalias !2358 ; 12 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, null         ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %.loopexit30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 6 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !2358
  %.not.i.i.i.i.i6 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !7, !noalias !2358
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !7, !noalias !2358
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit

bb.k:                                             ; preds = %bb.i
  %i.bm = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4, !noalias !2358 ; 0 uses
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit: ; preds = %bb.j, %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  store ptr %i.bf, ptr %i.bn, align 8, !tbaa !2361
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 64 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.bh, %i.bp
  br i1 %.not.i.i.i.i7, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread, label %bb.l

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread: ; preds = %.loopexit30
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  store ptr %i.bf, ptr %i.bq, align 8, !tbaa !2361
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 64 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i728 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i728, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

bb.l:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i8 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i8, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bi, align 4, !tbaa !7
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bw = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !68
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %i.bx = phi ptr [ %.pr.pre.i.i.i.i, %bb.n ], [ %i.bp, %bb.m ] ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not8.i.i.i.i, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread49, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread49: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.bh, ptr %i.bo, align 8, !tbaa !68
  br label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread: ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.by = phi ptr [ %i.bx, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i ], [ %i.bs, %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread ] ; 7 uses
  %i.bz = phi ptr [ %i.bo, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i ], [ %i.br, %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 4294967297
  %i.cd = trunc i64 %i.cb to i32                  ; 2 uses
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread
  store i32 0, ptr %i.ca, align 8, !tbaa !69
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.ce, align 4, !tbaa !71
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !72
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #30, !call_target !74, !inline_history !2362
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !72
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #30, !call_target !106, !inline_history !2362
  br label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit

bb.p:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i9.i.i.i.i = icmp eq i8 %i.cl, 0
  br i1 %.not.i9.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = add nsw i32 %i.cd, -1
  store i32 %i.cm, ptr %i.ca, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.cn = atomicrmw volatile add ptr %i.ca, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.cd, %bb.q ], [ %i.cn, %bb.r ]
  %i.co = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.co, label %bb.s, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit, !prof !67

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #30
  br label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  store ptr %i.bh, ptr %i.bz, align 8, !tbaa !68
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread: ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread49, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread
  store i32 0, ptr %i.cp, align 8, !tbaa !69
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.ct, align 4, !tbaa !71
  %i.cu = load ptr, ptr %i.bh, align 8, !tbaa !72
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #30, !call_target !74, !inline_history !219
  %i.cx = load ptr, ptr %i.bh, align 8, !tbaa !72
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #30, !call_target !106, !inline_history !219
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i9 = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i9, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.cs, %bb.v ], [ %i.dc, %bb.w ]
  %i.dd = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dd, label %bb.x, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #30
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  %i.de = load i32, ptr %i.o, align 8, !tbaa !2286 ; 2 uses
  %i.df = and i32 %i.de, 131072
  %.not4 = icmp eq i32 %i.df, 0
  br i1 %.not4, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dg = load ptr, ptr %i.r, align 8, !tbaa !2293
end_hunk_0
begin_hunk_1_@_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9match_impEv:bb.a
  call void @_ZN5boost13re_detail_50015save_state_initD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %lpad.phi

bb.au:                                            ; preds = %bb.am, %._crit_edge.i17, %bb.ag
  %.0 = phi i1 [ false, %bb.ag ], [ false, %bb.am ], [ %i.fe, %._crit_edge.i17 ]
  %i.ff = load ptr, ptr %5, align 8, !tbaa !2347
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !2350
  %i.fh = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.fi = icmp eq i8 %i.fh, 0
  br i1 %i.fi, label %bb.av, label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit, !prof !36

bb.av:                                            ; preds = %bb.au
  %i.fj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #30
  %.not.i.i.i26 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i.i26, label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fk = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #30
  br label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit

_ZN5boost13re_detail_50015save_state_initD2Ev.exit: ; preds = %bb.au, %bb.av, %bb.aw
  call void @_ZN5boost13re_detail_50015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr noundef %i.fg)
  %i.fl = load ptr, ptr %5, align 8, !tbaa !2347
  store ptr null, ptr %i.fl, align 8, !tbaa !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret i1 %.0

bb.ax:                                            ; preds = %bb.ar
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #31
  unreachable

bb.ay:                                            ; preds = %bb.as
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(77) ptr @_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !2361
  store ptr %i.d, ptr %i.c, align 8, !tbaa !2361
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68   ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !68   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !7
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !7
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !68
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
  store i32 0, ptr %i.o, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !71
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #30, !call_target !74, !inline_history !2370
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #30, !call_target !106, !inline_history !2370
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
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
  br i1 %i.ac, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !67

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #30
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.g, ptr %i.e, align 8, !tbaa !68
  br label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit

_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !2356
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !2356
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !37, !range !55, !noundef !56 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %i.ah, ptr %i.aj, align 4, !tbaa !37
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !157
  store <2 x ptr> %i.am, ptr %i.al, align 8, !tbaa !157
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !2354, !range !55, !noundef !56
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.ar, ptr %i.as, align 8, !tbaa !2354
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !2371
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 4 uses
  store i8 0, ptr %i.b, align 2, !tbaa !2372
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2287, !nonnull !56, !align !1701
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !205
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1725
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.g, ptr %i.h, align 8, !tbaa !2285
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2293 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !202  ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !59   ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.l, ptr %i.o, align 8, !tbaa !61
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.q = icmp ne ptr %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.s = zext i1 %i.q to i8
  store i8 %i.s, ptr %i.r, align 8, !tbaa !2354
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.l, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.m to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 24                  ; 3 uses
  %i.aa = icmp ugt i64 %i.z, 3
  br i1 %i.aa, label %.lr.ph.i, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !61
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
  store <2 x ptr> %2, ptr %i.af, align 8, !tbaa !157
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i8 0, ptr %i.ag, align 8, !tbaa !2354
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.08.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store <2 x ptr> %2, ptr %i.ai, align 8, !tbaa !157
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i8 0, ptr %i.aj, align 8, !tbaa !2354
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.08.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store <2 x ptr> %2, ptr %i.al, align 8, !tbaa !157
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i8 0, ptr %i.am, align 8, !tbaa !2354
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.08.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store <2 x ptr> %2, ptr %i.ao, align 8, !tbaa !157
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  store i8 0, ptr %i.ap, align 8, !tbaa !2354
  %i.aq = add nuw i64 %.08.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !2373

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
  store <2 x ptr> %2, ptr %i.ar, align 8, !tbaa !157
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i8 0, ptr %i.as, align 8, !tbaa !2354
  %i.at = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit, label %bb.c, !llvm.loop !2374

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit: ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.l, ptr %i.au, align 8, !tbaa !2375
  %i.av = tail call noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEv(ptr noundef nonnull align 8 dereferenceable(236) %0) ; 0 uses
  %i.aw = load i8, ptr %i.b, align 2, !tbaa !2372, !range !55, !noundef !56
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit
  %i.ay = load i8, ptr %i.a, align 1, !tbaa !2371, !range !55, !noundef !56
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %.thread3

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !2286 ; 2 uses
  %i.bc = and i32 %i.bb, 8192
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.thread3, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !2372
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !2293 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !201 ; 6 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !59 ; 5 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 56
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !61
  %i.bi = getelementptr i8, ptr %i.bg, i64 64
  store i8 0, ptr %i.bi, align 8, !tbaa !2354
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !60
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !61
  %i.bl = icmp ne ptr %i.bf, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = zext i1 %i.bl to i8
  store i8 %i.bn, ptr %i.bm, align 8, !tbaa !2354
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %i.bf, ptr %i.bo, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store ptr %i.bf, ptr %i.bp, align 8, !tbaa !61
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i8 0, ptr %i.bq, align 8, !tbaa !2376
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 76
  store i8 0, ptr %i.br, align 4, !tbaa !37
  store ptr %i.bf, ptr %i.k, align 8, !tbaa !202
  %i.bs = and i32 %i.bb, 131072
  %.not1 = icmp eq i32 %i.bs, 0
  br i1 %.not1, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = load ptr, ptr %0, align 8, !tbaa !2292, !nonnull !56, !align !1701
  tail call void @_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE12maybe_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(77) %i.bt, ptr noundef nonnull align 8 dereferenceable(77) %i.bd)
  %.pre = load i8, ptr %i.b, align 2, !tbaa !2372, !range !55
  %i.bu = trunc nuw i8 %.pre to i1
  br i1 %i.bu, label %.thread, label %.thread3

.thread3:                                         ; preds = %bb.e, %bb.d, %bb.g
  %i.bv = load ptr, ptr %i.au, align 8, !tbaa !2375
  store ptr %i.bv, ptr %i.k, align 8, !tbaa !202
  br label %.thread

.thread:                                          ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit, %bb.f, %.thread3, %bb.g
  %i.bw = phi i1 [ true, %bb.g ], [ false, %.thread3 ], [ true, %bb.f ], [ true, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit ]
  ret i1 %i.bw
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost13re_detail_50015save_state_initD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2347
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2350
  %i.c = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #30
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5boost13re_detail_50015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr noundef %i.b)
  %i.g = load ptr, ptr %0, align 8, !tbaa !2347
  store ptr null, ptr %i.g, align 8, !tbaa !2350
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5boost13re_detail_50015mem_block_cache3getEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.ah = cmpxchg ptr %i.af, ptr %i.ag, ptr null seq_cst seq_cst, align 8
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %.loopexit, label %bb.s

end_hunk_1
begin_hunk_2_@_ZN5boost12regex_searchIPKcSaINS_9sub_matchIS2_EEEcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEbT_SA_RNS_13match_resultsISA_T0_EERKNS_11basic_regexIT1_T2_EENS_15regex_constants12_match_flagsESA_:bb.a
  invoke void @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14construct_initERKNS_11basic_regexIcSA_EENS_15regex_constants12_match_flagsE(ptr noundef nonnull align 8 dereferenceable(236) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4)
          to label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ES3_S3_RNS_13match_resultsIS3_S6_EERKNS_11basic_regexIcSA_EENS_15regex_constants12_match_flagsES3_.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit.thread
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.t) #30
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !214  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN5boost13re_detail_50014repeater_countIPKcED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !213
  store ptr %i.w, ptr %i.x, align 8, !tbaa !217
  br label %_ZN5boost13re_detail_50014repeater_countIPKcED2Ev.exit.i

common.resume:                                    ; preds = %bb.m, %_ZN5boost13re_detail_50014repeater_countIPKcED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZN5boost13re_detail_50014repeater_countIPKcED2Ev.exit.i ], [ %i.az, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost13re_detail_50014repeater_countIPKcED2Ev.exit.i: ; preds = %bb.c, %bb.b
  call void @_ZNSt10unique_ptrIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEESt14default_deleteIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #30
  br label %common.resume

_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ES3_S3_RNS_13match_resultsIS3_S6_EERKNS_11basic_regexIcSA_EENS_15regex_constants12_match_flagsES3_.exit: ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit.thread
  %i.y = invoke noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE8find_impEv(ptr noundef nonnull align 8 dereferenceable(236) %6)
          to label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4findEv.exit unwind label %bb.m

_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4findEv.exit: ; preds = %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ES3_S3_RNS_13match_resultsIS3_S6_EERKNS_11basic_regexIcSA_EENS_15regex_constants12_match_flagsES3_.exit
  call void @_ZNSt6vectorIN5boost13re_detail_50014recursion_infoINS0_13match_resultsIPKcSaINS0_9sub_matchIS5_EEEEEEESaISA_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.t) #30
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !214  ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.z, null
  br i1 %.not.i.i9, label %_ZN5boost13re_detail_50014repeater_countIPKcED2Ev.exit.i10, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4findEv.exit
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !213
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !217
  br label %_ZN5boost13re_detail_50014repeater_countIPKcED2Ev.exit.i10

_ZN5boost13re_detail_50014repeater_countIPKcED2Ev.exit.i10: ; preds = %bb.d, %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4findEv.exit
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !176 ; 5 uses
  %.not.i1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i1.i, label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13re_detail_50014repeater_countIPKcED2Ev.exit.i10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !68 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ae, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !71
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !72
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #30, !call_target !74, !inline_history !218
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !72
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #30, !call_target !106, !inline_history !218
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.i ], [ %i.ar, %bb.j ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.k, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !67

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #30
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g, %bb.e
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !143
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #33
  br label %_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i.i

_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i.i: ; preds = %bb.l, %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 80) #33
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit

_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit: ; preds = %_ZN5boost13re_detail_50014repeater_countIPKcED2Ev.exit.i10, %_ZNKSt14default_deleteIN5boost13match_resultsIPKcSaINS0_9sub_matchIS3_EEEEEEclEPS7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.n

bb.m:                                             ; preds = %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ES3_S3_RNS_13match_resultsIS3_S6_EERKNS_11basic_regexIcSA_EENS_15regex_constants12_match_flagsES3_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(236) dereferenceable(236) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %common.resume

bb.n:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit, %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit
  %.0 = phi i1 [ %i.y, %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit ], [ false, %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE8find_impEv(ptr noundef nonnull align 8 dereferenceable(236) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %2 = alloca %"struct.boost::sub_match", align 8 ; 6 uses
  %3 = alloca %"struct.boost::sub_match", align 8 ; 6 uses
  %4 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %5 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %6 = alloca %"struct.boost::sub_match", align 8 ; 6 uses
  %7 = alloca %"struct.boost::re_detail_500::save_state_init", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !2347
  %i.c = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5boost13re_detail_50015save_state_initC2EPPNS0_11saved_stateES4_.exit, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #30
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN5boost13re_detail_50015save_state_initC2EPPNS0_11saved_stateES4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #30 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #30
  br label %_ZN5boost13re_detail_50015save_state_initC2EPPNS0_11saved_stateES4_.exit

_ZN5boost13re_detail_50015save_state_initC2EPPNS0_11saved_stateES4_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.g = tail call noundef ptr @_ZN5boost13re_detail_50015mem_block_cache3getEv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !2350
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4088 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !2350
  store i32 0, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 1024, ptr %i.i, align 8, !tbaa !2351
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.j, align 8, !tbaa !2353
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !2286 ; 7 uses
  %i.m = and i32 %i.l, 512
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %_ZN5boost13re_detail_50015save_state_initC2EPPNS0_11saved_stateES4_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !180  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %i.q, align 8, !tbaa !202
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.p, ptr %i.r, align 8, !tbaa !2352
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !2287, !nonnull !56, !align !1701 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !205  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1725
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.w, ptr %i.x, align 8, !tbaa !2285
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2293 ; 8 uses
  %i.aa = and i32 %i.l, 262144
  %.not9 = icmp eq i32 %i.aa, 0
  br i1 %.not9, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1694
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ad = phi i64 [ %i.ac, %bb.e ], [ 1, %bb.d ]  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !201 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.af, ptr %6, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.ah, align 8, !tbaa !2354
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 5 uses
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !59  ; 10 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = sdiv exact i64 %i.an, 24                ; 3 uses
  %i.ap = add i64 %i.ad, 2                        ; 3 uses
  %i.aq = icmp ugt i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds [24 x i8], ptr %i.ak, i64 %i.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 3 uses
  %i.at = icmp eq ptr %i.as, %i.aj
  br i1 %i.at, label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i, label %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !58
  br label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i

_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i: ; preds = %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, %bb.g
  %i.au = phi ptr [ %i.aj, %bb.g ], [ %i.as, %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i ] ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ak, %i.au
  br i1 %.not5.i.i.i.i.i, label %.loopexit73, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i
  %8 = insertelement <2 x ptr> poison, ptr %i.af, i64 0
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  store <2 x ptr> %9, ptr %.06.i.i.i.i.i, align 8, !tbaa !157
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  store i8 0, ptr %i.av, align 8, !tbaa !2354
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, %i.au
  br i1 %.not.i.i.i.i.i, label %.loopexit73, label %.lr.ph.i.i.i.i.i, !llvm.loop !2355

bb.h:                                             ; preds = %bb.f
  %.not5.i.i.i.i15.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not5.i.i.i.i15.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i, label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h
  %10 = insertelement <2 x ptr> poison, ptr %i.af, i64 0
  %11 = shufflevector <2 x ptr> %10, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %.lr.ph.i.i.i.i16.i
  %.06.i.i.i.i20.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i16.i ], [ %i.ak, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  store <2 x ptr> %11, ptr %.06.i.i.i.i20.i, align 8, !tbaa !157
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i20.i, i64 16
  store i8 0, ptr %i.ax, align 8, !tbaa !2354
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i20.i, i64 24 ; 2 uses
  %.not.i.i.i.i21.i = icmp eq ptr %i.ay, %i.aj
  br i1 %.not.i.i.i.i21.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i, label %.lr.ph.i.i.i.i16.i, !llvm.loop !2355

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i: ; preds = %.lr.ph.i.i.i.i16.i, %bb.h
  %.not.i15 = icmp eq i64 %i.ap, %i.ao
  br i1 %.not.i15, label %.loopexit73, label %bb.i

bb.i:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i
  %i.az = sub i64 %i.ap, %i.ao
  %i.ba = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  invoke void @_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS4_S6_EEmRKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.z, ptr %i.ba, i64 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(17) %6)
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !59
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !2293
  %.pre74 = load ptr, ptr %i.o, align 8, !tbaa !180
  %.pre75 = load ptr, ptr %i.s, align 8, !tbaa !2287
  br label %.loopexit73

.loopexit73:                                      ; preds = %.lr.ph.i.i.i.i.i, %.noexc, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i
  %i.bb = phi ptr [ %.pre75, %.noexc ], [ %i.t, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i ], [ %i.t, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i ], [ %i.t, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.bc = phi ptr [ %.pre74, %.noexc ], [ %i.p, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i ], [ %i.p, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i ], [ %i.p, %.lr.ph.i.i.i.i.i ]
  %i.bd = phi ptr [ %.pre, %.noexc ], [ %i.z, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i ], [ %i.z, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i ], [ %i.z, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.be = phi ptr [ %.pre.i, %.noexc ], [ %i.ak, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i ], [ %i.ak, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.p, ptr %i.bf, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store i32 0, ptr %i.bg, align 8, !tbaa !2356
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !2357
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !205, !noalias !2553 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !68, !noalias !2553 ; 12 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null         ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %.loopexit73
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 6 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !2553
  %.not.i.i.i.i.i16 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i.i16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !7, !noalias !2553
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !7, !noalias !2553
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit

bb.l:                                             ; preds = %bb.j
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4, !noalias !2553 ; 0 uses
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit: ; preds = %bb.k, %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  store ptr %i.bi, ptr %i.bq, align 8, !tbaa !2361
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 64 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.bk, %i.bs
  br i1 %.not.i.i.i.i17, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread, label %bb.m

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread: ; preds = %.loopexit73
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  store ptr %i.bi, ptr %i.bt, align 8, !tbaa !2361
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 64 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i.i1767 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i1767, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

bb.m:                                             ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i18 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i18, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bl, align 4, !tbaa !7
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bz = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !68
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %i.ca = phi ptr [ %.pr.pre.i.i.i.i, %bb.o ], [ %i.bs, %bb.n ] ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not8.i.i.i.i, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread118, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread118: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.bk, ptr %i.br, align 8, !tbaa !68
  br label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread: ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.cb = phi ptr [ %i.ca, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i ], [ %i.bv, %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread ] ; 7 uses
  %i.cc = phi ptr [ %i.br, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i ], [ %i.bu, %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread
  store i32 0, ptr %i.cd, align 8, !tbaa !69
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !71
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !72
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #30, !call_target !74, !inline_history !2362
  %i.cl = load ptr, ptr %i.cb, align 8, !tbaa !72
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #30, !call_target !106, !inline_history !2362
  br label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit

bb.q:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i9.i.i.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i9.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i = phi i32 [ %i.cg, %bb.r ], [ %i.cq, %bb.s ]
  %i.cr = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cr, label %bb.t, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit, !prof !67

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #30
  br label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.t
  store ptr %i.bk, ptr %i.cc, align 8, !tbaa !68
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread: ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread118, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread
  store i32 0, ptr %i.cs, align 8, !tbaa !69
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !71
  %i.cx = load ptr, ptr %i.bk, align 8, !tbaa !72
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #30, !call_target !74, !inline_history !219
  %i.da = load ptr, ptr %i.bk, align 8, !tbaa !72
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #30, !call_target !106, !inline_history !219
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit.thread
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i19 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i19, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.cv, %bb.w ], [ %i.df, %bb.x ]
  %i.dg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dg, label %bb.y, label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #30
  br label %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14get_named_subsEv.exit.thread, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE14set_named_subsESt10shared_ptrINS_13re_detail_50020named_subexpressionsEE.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  %i.dh = load i32, ptr %i.k, align 8, !tbaa !2290
  %i.di = or i32 %i.dh, 512                       ; 2 uses
  store i32 %i.di, ptr %i.k, align 8, !tbaa !2290
  br label %bb.at

bb.z:                                             ; preds = %bb.az, %bb.ay, %bb.as, %bb.ah, %bb.ac, %bb.i
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.aa:                                            ; preds = %_ZN5boost13re_detail_50015save_state_initC2EPPNS0_11saved_stateES4_.exit
  %i.dk = load ptr, ptr %0, align 8, !tbaa !2292, !nonnull !56, !align !1701 ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 76
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !37, !range !55, !noundef !56
  %i.dn = trunc nuw i8 %i.dm to i1                ; 2 uses
  br i1 %i.dn, label %bb.ab, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.aa
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.pre.i20 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !58
  %.pre7.i = load ptr, ptr %i.dk, align 8, !tbaa !59
  br label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !57 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !57 ; 2 uses
  %i.dr = icmp eq ptr %i.do, %i.dq
  br i1 %i.dr, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.271)
          to label %.noexc21 unwind label %bb.z

.noexc21:                                         ; preds = %bb.ac
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %5) #32
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc21
  unreachable

bb.ae:                                            ; preds = %.noexc21
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.body

bb.af:                                            ; preds = %bb.ab, %._crit_edge.i
  %i.dt = phi ptr [ %.pre7.i, %._crit_edge.i ], [ %i.do, %bb.ab ] ; 2 uses
  %i.du = phi ptr [ %.pre.i20, %._crit_edge.i ], [ %i.dq, %bb.ab ]
  %i.dv = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 24
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = icmp sgt i32 %i.dz, 2
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %.0.i = select i1 %i.ea, ptr %i.eb, ptr %i.ec
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !61 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !202
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ee, ptr %i.eg, align 8, !tbaa !2352
  %i.eh = and i32 %i.l, 2048
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  br i1 %i.dn, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.271)
          to label %.noexc23 unwind label %bb.z

.noexc23:                                         ; preds = %bb.ah
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %4) #32
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc23
  unreachable

bb.aj:                                            ; preds = %.noexc23
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body

bb.ak:                                            ; preds = %bb.ag
  %i.ek = load ptr, ptr %i.dk, align 8, !tbaa !59 ; 4 uses
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.dv, %i.el
  %i.en = sdiv exact i64 %i.em, 24
  %i.eo = trunc i64 %i.en to i32
  %i.ep = icmp sgt i32 %i.eo, 2
  br i1 %i.ep, label %bb.al, label %_ZNK5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE6lengthEi.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.es = load i8, ptr %i.er, align 8, !tbaa !2354, !range !55, !noundef !56
  %i.et = trunc nuw i8 %i.es to i1
  %i.eu = load ptr, ptr %i.eq, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = icmp ne ptr %i.ew, %i.eu
  %or.cond.not = select i1 %i.et, i1 %i.ex, i1 false
  br i1 %or.cond.not, label %bb.an, label %_ZNK5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE6lengthEi.exit.thread

_ZNK5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE6lengthEi.exit.thread: ; preds = %bb.ak, %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !201
  %i.fa = icmp eq ptr %i.ee, %i.ez
  br i1 %i.fa, label %bb.bl, label %bb.am

bb.am:                                            ; preds = %_ZNK5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE6lengthEi.exit.thread
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  store ptr %i.fb, ptr %i.ef, align 8, !tbaa !202
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.af
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !2293 ; 5 uses
  %i.fe = and i32 %i.l, 262144
  %.not = icmp eq i32 %i.fe, 0
  br i1 %.not, label %bb.ao, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit27

bb.ao:                                            ; preds = %bb.an
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !2287, !nonnull !56, !align !1701
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !205 ; 2 uses
  %.not.i26 = icmp eq ptr %i.fh, null
  br i1 %.not.i26, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit27, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !1694
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit27

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit27: ; preds = %bb.ao, %bb.ap, %bb.an
  %i.fk = phi i64 [ 1, %bb.an ], [ %i.fj, %bb.ap ], [ 1, %bb.ao ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !201 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.fm, ptr %3, align 8, !tbaa !60
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !61
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.fo, align 8, !tbaa !2354
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !58 ; 5 uses
  %i.fr = load ptr, ptr %i.fd, align 8, !tbaa !59 ; 10 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 2 uses
  %i.fv = sdiv exact i64 %i.fu, 24                ; 3 uses
  %i.fw = add i64 %i.fk, 2                        ; 3 uses
  %i.fx = icmp ugt i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit27
  %i.fy = getelementptr inbounds [24 x i8], ptr %i.fr, i64 %i.fk
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 48 ; 3 uses
  %i.ga = icmp eq ptr %i.fz, %i.fq
  br i1 %i.ga, label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i36, label %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i35

_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i35: ; preds = %bb.aq
  store ptr %i.fz, ptr %i.fp, align 8, !tbaa !58
  br label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i36

_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i36: ; preds = %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i35, %bb.aq
  %i.gb = phi ptr [ %i.fq, %bb.aq ], [ %i.fz, %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i35 ] ; 2 uses
  %.not5.i.i.i.i.i37 = icmp eq ptr %i.fr, %i.gb
  br i1 %.not5.i.i.i.i.i37, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE8set_sizeEmS2_S2_.exit42, label %.lr.ph.i.i.i.i.i38.preheader

.lr.ph.i.i.i.i.i38.preheader:                     ; preds = %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i36
  %12 = insertelement <2 x ptr> poison, ptr %i.fm, i64 0
  %13 = shufflevector <2 x ptr> %12, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i38

.lr.ph.i.i.i.i.i38:                               ; preds = %.lr.ph.i.i.i.i.i38.preheader, %.lr.ph.i.i.i.i.i38
  %.06.i.i.i.i.i39 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i38 ], [ %i.fr, %.lr.ph.i.i.i.i.i38.preheader ] ; 3 uses
  store <2 x ptr> %13, ptr %.06.i.i.i.i.i39, align 8, !tbaa !157
  %i.gc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i39, i64 16
  store i8 0, ptr %i.gc, align 8, !tbaa !2354
  %i.gd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i39, i64 24 ; 2 uses
  %.not.i.i.i.i.i40 = icmp eq ptr %i.gd, %i.gb
  br i1 %.not.i.i.i.i.i40, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE8set_sizeEmS2_S2_.exit42, label %.lr.ph.i.i.i.i.i38, !llvm.loop !2355

bb.ar:                                            ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit27
  %.not5.i.i.i.i15.i28 = icmp eq ptr %i.fr, %i.fq
  br i1 %.not5.i.i.i.i15.i28, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i32, label %.lr.ph.i.i.i.i16.i29.preheader

.lr.ph.i.i.i.i16.i29.preheader:                   ; preds = %bb.ar
  %14 = insertelement <2 x ptr> poison, ptr %i.fm, i64 0
  %15 = shufflevector <2 x ptr> %14, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i16.i29

.lr.ph.i.i.i.i16.i29:                             ; preds = %.lr.ph.i.i.i.i16.i29.preheader, %.lr.ph.i.i.i.i16.i29
  %.06.i.i.i.i20.i30 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i16.i29 ], [ %i.fr, %.lr.ph.i.i.i.i16.i29.preheader ] ; 3 uses
  store <2 x ptr> %15, ptr %.06.i.i.i.i20.i30, align 8, !tbaa !157
  %i.ge = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i20.i30, i64 16
  store i8 0, ptr %i.ge, align 8, !tbaa !2354
  %i.gf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i20.i30, i64 24 ; 2 uses
  %.not.i.i.i.i21.i31 = icmp eq ptr %i.gf, %i.fq
  br i1 %.not.i.i.i.i21.i31, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i32, label %.lr.ph.i.i.i.i16.i29, !llvm.loop !2355

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i32: ; preds = %.lr.ph.i.i.i.i16.i29, %bb.ar
  %.not.i33 = icmp eq i64 %i.fw, %i.fv
  br i1 %.not.i33, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE8set_sizeEmS2_S2_.exit42, label %bb.as

bb.as:                                            ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i32
  %i.gg = sub i64 %i.fw, %i.fv
  %i.gh = getelementptr inbounds i8, ptr %i.fr, i64 %i.fu
  invoke void @_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS4_S6_EEmRKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.fd, ptr %i.gh, i64 noundef %i.gg, ptr noundef nonnull align 8 dereferenceable(17) %3)
          to label %.noexc41 unwind label %bb.z

.noexc41:                                         ; preds = %bb.as
  %.pre.i34 = load ptr, ptr %i.fd, align 8, !tbaa !59
  %.pre76.pre = load i32, ptr %i.k, align 8, !tbaa !2286
  br label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE8set_sizeEmS2_S2_.exit42

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE8set_sizeEmS2_S2_.exit42: ; preds = %.lr.ph.i.i.i.i.i38, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i36, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i32, %.noexc41
  %.pre76 = phi i32 [ %.pre76.pre, %.noexc41 ], [ %i.l, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i36 ], [ %i.l, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i32 ], [ %i.l, %.lr.ph.i.i.i.i.i38 ]
  %i.gi = phi ptr [ %.pre.i34, %.noexc41 ], [ %i.fr, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i36 ], [ %i.fr, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i32 ], [ %i.fr, %.lr.ph.i.i.i.i.i38 ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store ptr %i.ee, ptr %i.gj, align 8, !tbaa !60
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fd, i64 72
  store i32 0, ptr %i.gk, align 8, !tbaa !2356
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.at

bb.at:                                            ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE8set_sizeEmS2_S2_.exit42, %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gl = phi i32 [ %.pre76, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE8set_sizeEmS2_S2_.exit42 ], [ %i.di, %_ZNSt12__shared_ptrIN5boost13re_detail_50020named_subexpressionsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.gm = and i32 %i.gl, 131072
  %.not10 = icmp eq i32 %i.gm, 0
  br i1 %.not10, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gn = load ptr, ptr %0, align 8, !tbaa !2292, !nonnull !56, !align !1701 ; 8 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !2287, !nonnull !56, !align !1701
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !205 ; 2 uses
  %.not.i43 = icmp eq ptr %i.gq, null
  br i1 %.not.i43, label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit44, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 64
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !1694
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit44

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit44: ; preds = %bb.av, %bb.au
  %i.gt = phi i64 [ %i.gs, %bb.av ], [ 1, %bb.au ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !180 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !201 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %i.gx, ptr %2, align 8, !tbaa !60
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !61
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %i.gz, align 8, !tbaa !2354
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !58 ; 5 uses
  %i.hc = load ptr, ptr %i.gn, align 8, !tbaa !59 ; 10 uses
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he                    ; 2 uses
  %i.hg = sdiv exact i64 %i.hf, 24                ; 3 uses
  %i.hh = add i64 %i.gt, 2                        ; 3 uses
  %i.hi = icmp ugt i64 %i.hg, %i.hh
  br i1 %i.hi, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit44
  %i.hj = getelementptr inbounds [24 x i8], ptr %i.hc, i64 %i.gt
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 48 ; 3 uses
  %i.hl = icmp eq ptr %i.hk, %i.hb
  br i1 %i.hl, label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i53, label %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i52

_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i52: ; preds = %bb.aw
  store ptr %i.hk, ptr %i.ha, align 8, !tbaa !58
  br label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i53

_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i53: ; preds = %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i52, %bb.aw
  %i.hm = phi ptr [ %i.hb, %bb.aw ], [ %i.hk, %_ZSt8_DestroyIPN5boost9sub_matchIPKcEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i52 ] ; 2 uses
  %.not5.i.i.i.i.i54 = icmp eq ptr %i.hc, %i.hm
  br i1 %.not5.i.i.i.i.i54, label %.loopexit72, label %.lr.ph.i.i.i.i.i55.preheader

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i53
  %16 = insertelement <2 x ptr> poison, ptr %i.gx, i64 0
  %17 = shufflevector <2 x ptr> %16, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.preheader, %.lr.ph.i.i.i.i.i55
  %.06.i.i.i.i.i56 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i55 ], [ %i.hc, %.lr.ph.i.i.i.i.i55.preheader ] ; 3 uses
  store <2 x ptr> %17, ptr %.06.i.i.i.i.i56, align 8, !tbaa !157
  %i.hn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i56, i64 16
  store i8 0, ptr %i.hn, align 8, !tbaa !2354
  %i.ho = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i56, i64 24 ; 2 uses
  %.not.i.i.i.i.i57 = icmp eq ptr %i.ho, %i.hm
  br i1 %.not.i.i.i.i.i57, label %.loopexit72, label %.lr.ph.i.i.i.i.i55, !llvm.loop !2355

bb.ax:                                            ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE10mark_countEv.exit44
  %.not5.i.i.i.i15.i45 = icmp eq ptr %i.hc, %i.hb
  br i1 %.not5.i.i.i.i15.i45, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i49, label %.lr.ph.i.i.i.i16.i46.preheader

.lr.ph.i.i.i.i16.i46.preheader:                   ; preds = %bb.ax
  %18 = insertelement <2 x ptr> poison, ptr %i.gx, i64 0
  %19 = shufflevector <2 x ptr> %18, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i16.i46

.lr.ph.i.i.i.i16.i46:                             ; preds = %.lr.ph.i.i.i.i16.i46.preheader, %.lr.ph.i.i.i.i16.i46
  %.06.i.i.i.i20.i47 = phi ptr [ %i.hq, %.lr.ph.i.i.i.i16.i46 ], [ %i.hc, %.lr.ph.i.i.i.i16.i46.preheader ] ; 3 uses
  store <2 x ptr> %19, ptr %.06.i.i.i.i20.i47, align 8, !tbaa !157
  %i.hp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i20.i47, i64 16
  store i8 0, ptr %i.hp, align 8, !tbaa !2354
  %i.hq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i20.i47, i64 24 ; 2 uses
  %.not.i.i.i.i21.i48 = icmp eq ptr %i.hq, %i.hb
  br i1 %.not.i.i.i.i21.i48, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i49, label %.lr.ph.i.i.i.i16.i46, !llvm.loop !2355

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i49: ; preds = %.lr.ph.i.i.i.i16.i46, %bb.ax
  %.not.i50 = icmp eq i64 %i.hh, %i.hg
  br i1 %.not.i50, label %.loopexit72, label %bb.ay

bb.ay:                                            ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i49
  %i.hr = sub i64 %i.hh, %i.hg
  %i.hs = getelementptr inbounds i8, ptr %i.hc, i64 %i.hf
  invoke void @_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS4_S6_EEmRKS4_(ptr noundef nonnull align 8 dereferenceable(77) %i.gn, ptr %i.hs, i64 noundef %i.hr, ptr noundef nonnull align 8 dereferenceable(17) %2)
          to label %.noexc58 unwind label %bb.z

.noexc58:                                         ; preds = %bb.ay
  %.pre.i51 = load ptr, ptr %i.gn, align 8, !tbaa !59
  %.pre77 = load ptr, ptr %0, align 8, !tbaa !2292
  %.pre78 = load ptr, ptr %i.gu, align 8, !tbaa !180
  br label %.loopexit72

.loopexit72:                                      ; preds = %.lr.ph.i.i.i.i.i55, %.noexc58, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i49, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i53
  %i.ht = phi ptr [ %.pre78, %.noexc58 ], [ %i.gv, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i53 ], [ %i.gv, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i49 ], [ %i.gv, %.lr.ph.i.i.i.i.i55 ]
  %i.hu = phi ptr [ %.pre77, %.noexc58 ], [ %i.gn, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i53 ], [ %i.gn, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i49 ], [ %i.gn, %.lr.ph.i.i.i.i.i55 ]
  %i.hv = phi ptr [ %.pre.i51, %.noexc58 ], [ %i.hc, %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit.i53 ], [ %i.hc, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5boost9sub_matchIPKcEESt6vectorIS6_SaIS6_EEEES6_EvT_SC_RKT0_.exit22.i49 ], [ %i.hc, %.lr.ph.i.i.i.i.i55 ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store ptr %i.gv, ptr %i.hw, align 8, !tbaa !60
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  store i32 0, ptr %i.hx, align 8, !tbaa !2356
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  store ptr %i.ht, ptr %i.hy, align 8, !tbaa !2357
  %.pre79 = load i32, ptr %i.k, align 8, !tbaa !2286
  br label %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit

_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit: ; preds = %.loopexit72, %bb.at
  %i.hz = phi i32 [ %.pre79, %.loopexit72 ], [ %i.gl, %bb.at ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !2287, !nonnull !56, !align !1701
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !205
  %i.id = and i32 %i.hz, 655360
  %or.cond.not.i = icmp eq i32 %i.id, 655360
  br i1 %or.cond.not.i, label %bb.az, label %_ZN5boost13re_detail_50014verify_optionsEjNS_15regex_constants12_match_flagsE.exit

bb.az:                                            ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.269)
          to label %.noexc61 unwind label %bb.z

.noexc61:                                         ; preds = %bb.az
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #32
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %.noexc61
  unreachable

bb.bb:                                            ; preds = %.noexc61
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.body

_ZN5boost13re_detail_50014verify_optionsEjNS_15regex_constants12_match_flagsE.exit: ; preds = %_ZNK5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE5flagsEv.exit
  %i.if = and i32 %i.hz, 4096
  %.not11 = icmp eq i32 %i.if, 0
  br i1 %.not11, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN5boost13re_detail_50014verify_optionsEjNS_15regex_constants12_match_flagsE.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 80
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !1735
  %i.ii = zext i32 %i.ih to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZN5boost13re_detail_50014verify_optionsEjNS_15regex_constants12_match_flagsE.exit
  %i.ij = phi i64 [ 4, %_ZN5boost13re_detail_50014verify_optionsEjNS_15regex_constants12_match_flagsE.exit ], [ %i.ii, %bb.bc ]
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE8find_impEvE13s_find_vtable, i64 %i.ij
  %.unpack = load i64, ptr %i.ik, align 16, !tbaa !18
  %i.il = inttoptr i64 %.unpack to ptr
  %i.im = invoke noundef zeroext i1 %i.il(ptr noundef nonnull align 8 dereferenceable(236) %0)
          to label %bb.bl unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.ae, %bb.z, %bb.bb, %bb.aj, %bb.be
  %.pn.pn = phi { ptr, i32 } [ %i.ie, %bb.bb ], [ %i.in, %bb.be ], [ %i.ds, %bb.ae ], [ %i.ej, %bb.aj ], [ %i.dj, %bb.z ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.io = call ptr @__cxa_begin_catch(ptr %.1) #30 ; 0 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 229
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 230
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %.body
  store i8 1, ptr %i.ip, align 4, !tbaa !2363
  store i8 0, ptr %i.iq, align 1, !tbaa !2364
  store i8 0, ptr %i.ir, align 2, !tbaa !2365
  br label %bb.bg

bb.bg:                                            ; preds = %.noexc64, %bb.bf
  %i.it = load ptr, ptr %i.b, align 8, !tbaa !2366
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !18
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_table, i64 %i.iv
  %.unpack.i = load i64, ptr %i.iw, align 16, !tbaa !18
  %i.ix = inttoptr i64 %.unpack.i to ptr
  %i.iy = load i8, ptr %i.ip, align 4, !tbaa !2363, !range !55, !noundef !56
  %i.iz = trunc nuw i8 %i.iy to i1
  %i.ja = invoke noundef zeroext i1 %i.ix(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.iz)
          to label %.noexc64 unwind label %.loopexit, !inline_history !2367

.noexc64:                                         ; preds = %bb.bg
  br i1 %i.ja, label %bb.bg, label %bb.bh, !llvm.loop !2368

bb.bh:                                            ; preds = %.noexc64
  %i.jb = load ptr, ptr %i.is, align 8, !tbaa !2285
  %.not71 = icmp eq ptr %i.jb, null
  br i1 %.not71, label %bb.bj, label %bb.bf, !llvm.loop !2556

.loopexit:                                        ; preds = %bb.bg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp:                               ; preds = %bb.bj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bh
  invoke void @__cxa_rethrow() #32
          to label %bb.bp unwind label %.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bi
  call void @_ZN5boost13re_detail_50015save_state_initD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %lpad.phi

bb.bl:                                            ; preds = %bb.bd, %_ZNK5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE6lengthEi.exit.thread
  %.0 = phi i1 [ false, %_ZNK5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE6lengthEi.exit.thread ], [ %i.im, %bb.bd ]
  %i.jc = load ptr, ptr %7, align 8, !tbaa !2347
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !2350
  %i.je = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.jf = icmp eq i8 %i.je, 0
  br i1 %i.jf, label %bb.bm, label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit, !prof !36

bb.bm:                                            ; preds = %bb.bl
  %i.jg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #30
  %.not.i.i.i65 = icmp eq i32 %i.jg, 0
  br i1 %.not.i.i.i65, label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jh = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #30 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #30
  br label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit

_ZN5boost13re_detail_50015save_state_initD2Ev.exit: ; preds = %bb.bl, %bb.bm, %bb.bn
  call void @_ZN5boost13re_detail_50015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr noundef %i.jd)
  %i.ji = load ptr, ptr %7, align 8, !tbaa !2347
  store ptr null, ptr %i.ji, align 8, !tbaa !2350
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret i1 %.0

bb.bo:                                            ; preds = %bb.bi
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #31
  unreachable

bb.bp:                                            ; preds = %bb.bj
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16find_restart_anyEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2287, !nonnull !56, !align !1701
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !205
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201  ; 2 uses
  %.promoted12 = load ptr, ptr %i.e, align 8, !tbaa !202 ; 2 uses
  %.not1013 = icmp eq ptr %.promoted12, %i.g
  br i1 %.not1013, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.promoted14 = phi ptr [ %i.y, %bb.f ], [ %.promoted12, %bb.a ]
end_hunk_2
