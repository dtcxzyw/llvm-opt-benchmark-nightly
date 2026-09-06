Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/RegexMatchCache?download=true
inline.NumInlined: 9173
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9match_impEv:bb.a
          to label %bb.au unwind label %bb.ay

bb.at:                                            ; preds = %bb.ad
  invoke void @__cxa_rethrow() #43
          to label %bb.az unwind label %.loopexit.split-lp

bb.au:                                            ; preds = %bb.as
  call void @_ZN5boost13re_detail_50015save_state_initD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %lpad.phi

bb.av:                                            ; preds = %bb.an, %._crit_edge.i17, %bb.ah
  %.0 = phi i1 [ false, %bb.ah ], [ false, %bb.an ], [ %i.fi, %._crit_edge.i17 ]
  %i.fj = load ptr, ptr %5, align 8, !tbaa !20220
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !20221
  %i.fl = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.fm = icmp eq i8 %i.fl, 0
  br i1 %i.fm, label %bb.aw, label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit, !prof !19841

bb.aw:                                            ; preds = %bb.av
  %i.fn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #40
  %.not.i.i.i26 = icmp eq i32 %i.fn, 0
  br i1 %.not.i.i.i26, label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fo = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #40 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #40
  br label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit

_ZN5boost13re_detail_50015save_state_initD2Ev.exit: ; preds = %bb.av, %bb.aw, %bb.ax
  call void @_ZN5boost13re_detail_50015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr noundef %i.fk)
  %i.fp = load ptr, ptr %5, align 8, !tbaa !20220
  store ptr null, ptr %i.fp, align 8, !tbaa !20221
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret i1 %.0

bb.ay:                                            ; preds = %bb.as
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #42
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
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !20230
  store ptr %i.d, ptr %i.c, align 8, !tbaa !20230
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19782 ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !19782 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19682
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !19786
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !19786
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !19782
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
  store i32 0, ptr %i.o, align 8, !tbaa !19784
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !19785
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !797
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #40, !call_target !5069, !inline_history !21084
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !797
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #40, !call_target !5070, !inline_history !21084
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19682
  %.not.i9.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !19786
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !19683

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #40
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.g, ptr %i.e, align 8, !tbaa !19782
  br label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit

_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !20229
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !20229
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !20172, !range !20060, !noundef !1339 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %i.ah, ptr %i.aj, align 4, !tbaa !20172
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !19794
  store <2 x ptr> %i.am, ptr %i.al, align 8, !tbaa !19794
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !20226
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !20226
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !20227, !range !20060, !noundef !1339
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.ar, ptr %i.as, align 8, !tbaa !20227
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !20236
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 4 uses
  store i8 0, ptr %i.b, align 2, !tbaa !20237
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20207, !nonnull !1339, !align !19737
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19797
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20079
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20205
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20211 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20197 ; 4 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !20173 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.l, ptr %i.o, align 8, !tbaa !20226
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !20225
  %i.q = icmp ne ptr %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.s = zext i1 %i.q to i8
  store i8 %i.s, ptr %i.r, align 8, !tbaa !20227
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.l, ptr %i.t, align 8, !tbaa !20225
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20228
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.m to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp ugt i64 %i.y, 72
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %1 = sdiv exact i64 %i.y, 24                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %1, i64 4)
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !20226
  %i.ab = insertelement <2 x ptr> poison, ptr %.pre.i, i64 0
  %i.ac = shufflevector <2 x ptr> %i.ab, <2 x ptr> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ad = add i64 %umax.i, -3                     ; 2 uses
  %xtraiter = and i64 %i.ad, 3                    ; 3 uses
  %i.ae = icmp ult i64 %1, 7
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ad, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.08.i = phi i64 [ 3, %.lr.ph.i.new ], [ %i.aq, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.08.i ; 2 uses
  store <2 x ptr> %i.ac, ptr %i.af, align 8, !tbaa !19794
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i8 0, ptr %i.ag, align 8, !tbaa !20227
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.08.i ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store <2 x ptr> %i.ac, ptr %i.ai, align 8, !tbaa !19794
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i8 0, ptr %i.aj, align 8, !tbaa !20227
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.08.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store <2 x ptr> %i.ac, ptr %i.al, align 8, !tbaa !19794
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i8 0, ptr %i.am, align 8, !tbaa !20227
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.08.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store <2 x ptr> %i.ac, ptr %i.ao, align 8, !tbaa !19794
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  store i8 0, ptr %i.ap, align 8, !tbaa !20227
  %i.aq = add nuw i64 %.08.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !21085

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
  store <2 x ptr> %i.ac, ptr %i.ar, align 8, !tbaa !19794
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i8 0, ptr %i.as, align 8, !tbaa !20227
  %i.at = add nuw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit, label %bb.c, !llvm.loop !21086

_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit: ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.l, ptr %i.au, align 8, !tbaa !20238
  %i.av = tail call noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEv(ptr noundef nonnull align 8 dereferenceable(236) %0) ; 0 uses
  %i.aw = load i8, ptr %i.b, align 2, !tbaa !20237, !range !20060, !noundef !1339
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit
  %i.ay = load i8, ptr %i.a, align 1, !tbaa !20236, !range !20060, !noundef !1339
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %.thread3

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !20206 ; 2 uses
  %i.bc = and i32 %i.bb, 8192
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.thread3, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !20237
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !20211 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !20196 ; 6 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !20173 ; 5 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 56
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !20226
  %i.bi = getelementptr i8, ptr %i.bg, i64 64
  store i8 0, ptr %i.bi, align 8, !tbaa !20227
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !20225
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !20226
  %i.bl = icmp ne ptr %i.bf, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = zext i1 %i.bl to i8
  store i8 %i.bn, ptr %i.bm, align 8, !tbaa !20227
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %i.bf, ptr %i.bo, align 8, !tbaa !20225
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store ptr %i.bf, ptr %i.bp, align 8, !tbaa !20226
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i8 0, ptr %i.bq, align 8, !tbaa !20239
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 76
  store i8 0, ptr %i.br, align 4, !tbaa !20172
  store ptr %i.bf, ptr %i.k, align 8, !tbaa !20197
  %i.bs = and i32 %i.bb, 131072
  %.not1 = icmp eq i32 %i.bs, 0
  br i1 %.not1, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bt = load ptr, ptr %0, align 8, !tbaa !20212, !nonnull !1339, !align !19737
  tail call void @_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE12maybe_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(77) %i.bt, ptr noundef nonnull align 8 dereferenceable(77) %i.bd)
  %.pre = load i8, ptr %i.b, align 2, !tbaa !20237, !range !20060
  %i.bu = trunc nuw i8 %.pre to i1
  br i1 %i.bu, label %.thread, label %.thread3

.thread3:                                         ; preds = %bb.e, %bb.d, %bb.g
  %i.bv = load ptr, ptr %i.au, align 8, !tbaa !20238
  store ptr %i.bv, ptr %i.k, align 8, !tbaa !20197
  br label %.thread

.thread:                                          ; preds = %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit, %bb.f, %.thread3, %bb.g
  %i.bw = phi i1 [ true, %bb.g ], [ false, %.thread3 ], [ true, %bb.f ], [ true, %_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE9set_firstES2_.exit ]
  ret i1 %i.bw
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost13re_detail_50015save_state_initD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20220
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20221
  %i.c = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !19841

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #40
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5boost13re_detail_50015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr noundef %i.b)
  %i.g = load ptr, ptr %0, align 8, !tbaa !20220
  store ptr null, ptr %i.g, align 8, !tbaa !20221
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

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS4_S6_EEmRKS4_:bb.a
  %i.cg = icmp eq ptr %1, %i.d
  br i1 %i.cg, label %_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74.thread, label %.lr.ph.i.i.i.i.i70

_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.l
  store ptr %i.ch, ptr %i.c, align 8, !tbaa !20228
  br label %_ZSt4fillIPN5boost9sub_matchIPKcEES4_EvT_S6_RKT0_.exit

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i70
  %.012.i.i.i.i.i71 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i70 ], [ %i.cf, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i72 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i70 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.012.i.i.i.i.i71, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.08.011.i.i.i.i.i72, i64 16, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i71, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i72, i64 16
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.ck, ptr %i.ci, align 8, !tbaa !20227
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i72, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i71, i64 24
  %i.cn = icmp eq ptr %i.cl, %i.d
  br i1 %i.cn, label %.lr.ph.i.i.i76, label %.lr.ph.i.i.i.i.i70, !llvm.loop !21087

.lr.ph.i.i.i76:                                   ; preds = %.lr.ph.i.i.i.i.i70
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !20228
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.l
  store ptr %i.cp, ptr %i.c, align 8, !tbaa !20228
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i76
  %.06.i.i.i80 = phi ptr [ %1, %.lr.ph.i.i.i76 ], [ %i.cs, %bb.f ] ; 4 uses
  store ptr %.sroa.4.8.copyload, ptr %.06.i.i.i80, align 8, !tbaa !20225
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i80, i64 8
  store ptr %.sroa.9.8.copyload, ptr %i.cq, align 8, !tbaa !20226
  %i.cr = getelementptr inbounds nuw i8, ptr %.06.i.i.i80, i64 16
  store i8 %i.j, ptr %i.cr, align 8, !tbaa !20227
  %i.cs = getelementptr inbounds nuw i8, ptr %.06.i.i.i80, i64 24 ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.cs, %i.d
  br i1 %.not.i.i.i81, label %_ZSt4fillIPN5boost9sub_matchIPKcEES4_EvT_S6_RKT0_.exit, label %bb.f, !llvm.loop !754

bb.g:                                             ; preds = %bb.b
  %i.ct = load ptr, ptr %0, align 8, !tbaa !20173 ; 5 uses
  %i.cu = ptrtoint ptr %i.ct to i64               ; 3 uses
  %i.cv = sub i64 %i.f, %i.cu
  %i.cw = sdiv exact i64 %i.cv, 24                ; 4 uses
  %i.cx = sub nsw i64 384307168202282325, %i.cw
  %i.cy = icmp ult i64 %i.cx, %2
  br i1 %i.cy, label %bb.h, label %_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #43
  unreachable

_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit: ; preds = %bb.g
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cw, i64 %2)
  %i.cz = add nsw i64 %.sroa.speculated.i, %i.cw  ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cw
  %i.db = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 384307168202282325)
  %i.dc = select i1 %i.da, i64 384307168202282325, i64 %i.db ; 3 uses
  %i.dd = ptrtoint ptr %1 to i64
  %i.de = sub i64 %i.dd, %i.cu
  %.not.i = icmp eq i64 %i.dc, 0
  br i1 %.not.i, label %.lr.ph.i.i.i.i84, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit
  %i.df = mul nuw nsw i64 %i.dc, 24
  %i.dg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #44
  br label %.lr.ph.i.i.i.i84

.lr.ph.i.i.i.i84:                                 ; preds = %bb.i, %_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit
  %i.dh = phi ptr [ %i.dg, %bb.i ], [ null, %_ZNKSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE12_M_check_lenEmS3_.exit ] ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.de ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !20227, !range !20060, !noundef !1339 ; 5 uses
  %xtraiter142 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i84, %.prol.preheader
  %.014.i.i.i.i85.prol = phi ptr [ %i.dn, %.prol.preheader ], [ %i.di, %.lr.ph.i.i.i.i84 ] ; 3 uses
  %.01113.i.i.i.i86.prol = phi i64 [ %i.dm, %.prol.preheader ], [ %2, %.lr.ph.i.i.i.i84 ]
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i84 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.014.i.i.i.i85.prol, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85.prol, i64 16
  store i8 %i.dk, ptr %i.dl, align 8, !tbaa !20227
  %i.dm = add i64 %.01113.i.i.i.i86.prol, -1      ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85.prol, i64 24 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !21092

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i84
  %.014.i.i.i.i85.unr = phi ptr [ %i.di, %.lr.ph.i.i.i.i84 ], [ %i.dn, %.prol.preheader ]
  %.01113.i.i.i.i86.unr = phi i64 [ %2, %.lr.ph.i.i.i.i84 ], [ %i.dm, %.prol.preheader ]
  %i.do = icmp ult i64 %2, 4
  br i1 %i.do, label %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89, label %.lr.ph.i.i.i.i84.new

.lr.ph.i.i.i.i84.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i84.new
  %.014.i.i.i.i85 = phi ptr [ %i.dx, %.lr.ph.i.i.i.i84.new ], [ %.014.i.i.i.i85.unr, %.prol.loopexit ] ; 9 uses
  %.01113.i.i.i.i86 = phi i64 [ %i.dw, %.lr.ph.i.i.i.i84.new ], [ %.01113.i.i.i.i86.unr, %.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.014.i.i.i.i85, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 16
  store i8 %i.dk, ptr %i.dp, align 8, !tbaa !20227
  %i.dq = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.dq, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 40
  store i8 %i.dk, ptr %i.dr, align 8, !tbaa !20227
  %i.ds = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ds, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 64
  store i8 %i.dk, ptr %i.dt, align 8, !tbaa !20227
  %i.du = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.du, ptr noundef nonnull align 8 dereferenceable(17) %3, i64 16, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 88
  store i8 %i.dk, ptr %i.dv, align 8, !tbaa !20227
  %i.dw = add i64 %.01113.i.i.i.i86, -4           ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i85, i64 96
  %.not.i.i.i.i87.3 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i87.3, label %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89, label %.lr.ph.i.i.i.i84.new, !llvm.loop !21091

_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89: ; preds = %.lr.ph.i.i.i.i84.new, %.prol.loopexit
  %.not13.i.i.i.i.i = icmp eq ptr %i.ct, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i90

.lr.ph.i.i.i.i.i90:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89, %.lr.ph.i.i.i.i.i90
  %.015.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i90 ], [ %i.dh, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89 ] ; 3 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i90 ], [ %i.ct, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.015.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.01214.i.i.i.i.i, i64 16, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.ea, ptr %i.dy, align 8, !tbaa !20227
  %i.eb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 24 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eb, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i90, !llvm.loop !21093

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i90, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89
  %.0.lcssa.i.i.i.i.i91 = phi ptr [ %i.dh, %_ZSt24__uninitialized_fill_n_aIPN5boost9sub_matchIPKcEEmS4_S4_ET_S6_T0_RKT1_RSaIT2_E.exit89 ], [ %i.ec, %.lr.ph.i.i.i.i.i90 ]
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %.0.lcssa.i.i.i.i.i91, i64 %2 ; 2 uses
  %.not13.i.i.i.i.i92 = icmp eq ptr %1, %i.d
  br i1 %.not13.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98, label %.lr.ph.i.i.i.i.i93

.lr.ph.i.i.i.i.i93:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %.lr.ph.i.i.i.i.i93
  %.015.i.i.i.i.i94 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i93 ], [ %i.ed, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 3 uses
  %.01214.i.i.i.i.i95 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i93 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.015.i.i.i.i.i94, ptr noundef nonnull align 8 dereferenceable(17) %.01214.i.i.i.i.i95, i64 16, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i94, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i95, i64 16
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.eg, ptr %i.ee, align 8, !tbaa !20227
  %i.eh = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i95, i64 24 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i94, i64 24 ; 2 uses
  %.not.i.i.i.i.i96 = icmp eq ptr %i.eh, %i.d
  br i1 %.not.i.i.i.i.i96, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98, label %.lr.ph.i.i.i.i.i93, !llvm.loop !21093

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98: ; preds = %.lr.ph.i.i.i.i.i93, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %.0.lcssa.i.i.i.i.i97 = phi ptr [ %i.ed, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.ei, %.lr.ph.i.i.i.i.i93 ]
  %.not.i99 = icmp eq ptr %i.ct, null
  br i1 %.not.i99, label %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !20174
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.el) #41
  br label %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit98, %bb.j
  store ptr %i.dh, ptr %0, align 8, !tbaa !20173
  store ptr %.0.lcssa.i.i.i.i.i97, ptr %i.c, align 8, !tbaa !20228
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %i.dc
  store ptr %i.em, ptr %i.a, align 8, !tbaa !20174
  br label %_ZSt4fillIPN5boost9sub_matchIPKcEES4_EvT_S6_RKT0_.exit

_ZSt4fillIPN5boost9sub_matchIPKcEES4_EvT_S6_RKT0_.exit: ; preds = %bb.f, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPN5boost9sub_matchIPKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74.thread, %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20228 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !20173  ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20174
  %i.i = load ptr, ptr %0, align 8, !tbaa !20173  ; 6 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i, !prof !19683

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #44 ; 4 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.08.011.i.i.i.i.i, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.s, ptr %i.q, align 8, !tbaa !20227
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.v = icmp eq ptr %i.t, %i.b
  br i1 %i.v, label %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !757

_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE11_M_allocateEm.exit.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !20173  ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !20174
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #41
  br label %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN5boost9sub_matchIPKcEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !20173
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !20174
  br label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20228 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.af, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.f, 0
  br i1 %i.ag, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ah = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i26 = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i25 ], [ %i.ah, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i25 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i25 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.ai = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !19794
  store <2 x ptr> %i.ai, ptr %.0811.i.i.i.i.i, align 8, !tbaa !19794
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !20227, !range !20060, !noundef !1339
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i8 %i.ak, ptr %i.al, align 8, !tbaa !20227
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ao = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.ap = icmp samesign ugt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i25, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, !llvm.loop !21094

bb.h:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.af ; 2 uses
  %i.ar = icmp sgt i64 %i.af, 0
  br i1 %i.ar, label %.lr.ph.preheader.i.i.i.i.i28, label %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit

.lr.ph.preheader.i.i.i.i.i28:                     ; preds = %bb.h
  %i.as = udiv exact i64 %i.af, 24
  br label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %.lr.ph.i.i.i.i.i29, %.lr.ph.preheader.i.i.i.i.i28
  %.012.i.i.i.i.i30 = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i29 ], [ %i.as, %.lr.ph.preheader.i.i.i.i.i28 ] ; 2 uses
  %.0811.i.i.i.i.i31 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i29 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i28 ] ; 3 uses
  %.0910.i.i.i.i.i32 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i29 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i28 ] ; 3 uses
  %i.at = load <2 x ptr>, ptr %.0910.i.i.i.i.i32, align 8, !tbaa !19794
  store <2 x ptr> %i.at, ptr %.0811.i.i.i.i.i31, align 8, !tbaa !19794
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 16
  %i.av = load i8, ptr %i.au, align 8, !tbaa !20227, !range !20060, !noundef !1339
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 16
  store i8 %i.av, ptr %i.aw, align 8, !tbaa !20227
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i32, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i31, i64 24
  %i.az = add nsw i64 %.012.i.i.i.i.i30, -1
  %i.ba = icmp samesign ugt i64 %.012.i.i.i.i.i30, 1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i29, label %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit, !llvm.loop !21095

_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i29, %bb.h
  %.not13.i.i.i.i = icmp eq ptr %i.aq, %i.b
  br i1 %.not13.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.ad, %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit ] ; 3 uses
  %.01214.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %i.aq, %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.015.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.01214.i.i.i.i, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.bd, ptr %i.bb, align 8, !tbaa !20227
  %i.be = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !21096

_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !20173
  br label %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i25, %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit
  %i.bg = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN5boost9sub_matchIPKcEESaIS4_EE13_M_deallocateEPS4_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPN5boost9sub_matchIPKcEES5_ET0_T_S7_S6_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i25 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !20228
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPN5boost9sub_matchIPKcEES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #15

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #26 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 64) #40 ; 3 uses
  invoke void @_ZN5boost10wrapexceptISt11logic_errorEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost10wrapexceptISt11logic_errorEE, ptr nonnull @_ZN5boost10wrapexceptISt11logic_errorED2Ev) #43
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost10wrapexceptISt11logic_errorEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost16exception_detail10clone_baseE, i64 16), ptr %0, align 8, !tbaa !797
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZNSt11logic_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) #40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.d, align 8, !tbaa !19885
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 -1, ptr %i.e, align 4, !tbaa !19886
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost10wrapexceptISt11logic_errorEE, i64 16), ptr %0, align 8, !tbaa !797
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost10wrapexceptISt11logic_errorEE, i64 64), ptr %i.a, align 8, !tbaa !797
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost10wrapexceptISt11logic_errorEE, i64 104), ptr %i.b, align 8, !tbaa !797
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost10wrapexceptISt11logic_errorED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5boost9exceptionE, i64 16), ptr %i.a, align 8, !tbaa !797
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19887 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5boost9exceptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !797
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost9exceptionD2Ev.exit unwind label %bb.c, !inline_history !732 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #42
  unreachable

_ZN5boost9exceptionD2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEv:bb.a

.noexc27:                                         ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !20234
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit.i

_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit.i: ; preds = %.noexc27, %.noexc
  %i.z = phi ptr [ %i.u, %.noexc ], [ %.pre.i, %.noexc27 ]
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit

_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit: ; preds = %bb.c, %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit.i
  %.0.i = phi ptr [ %i.aa, %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit.i ], [ %i.i, %bb.c ] ; 2 uses
  store i32 2, ptr %.0.i, align 8, !tbaa !19682
  store ptr %.0.i, ptr %i.g, align 8, !tbaa !20234
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 229 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 230 ; 2 uses
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !20205
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit, %bb.ab
  %i.an = phi ptr [ %.pre, %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE22push_recursion_stopperEv.exit ], [ %i.cg, %bb.ab ] ; 2 uses
  %.not46 = icmp eq ptr %i.an, null
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.z
  %i.ao = phi ptr [ %i.bx, %bb.z ], [ %i.an, %bb.i ]
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !20056
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEvE14s_match_vtable, i64 %i.aq
  %.unpack = load i64, ptr %i.ar, align 16, !tbaa !19682
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !20224
  %i.at = add nsw i64 %i.as, 1
  store i64 %i.at, ptr %i.ac, align 8, !tbaa !20224
  %i.au = inttoptr i64 %.unpack to ptr
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(236) %0)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %.lr.ph
  br i1 %i.av, label %._crit_edge48, label %bb.k

._crit_edge48:                                    ; preds = %bb.j
  %.pre49 = load ptr, ptr %i.ab, align 8, !tbaa !20205
  br label %bb.z

bb.k:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %i.ac, align 8, !tbaa !20224
  %i.ax = load i64, ptr %i.ad, align 8, !tbaa !20208
  %i.ay = icmp sgt i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !20240, !nonnull !1339, !align !19737
  invoke void @_ZN5boost13re_detail_50011raise_errorINS_20regex_traits_wrapperINS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEEEvRKT_NS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i32 noundef 18)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bb = load i32, ptr %i.af, align 8, !tbaa !20206
  %i.bc = and i32 %i.bb, 8192
  %.not21 = icmp eq i32 %i.bc, 0
  br i1 %.not21, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !20197 ; 2 uses
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !20196
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.ai, align 8, !tbaa !20223
  %.not22 = icmp eq ptr %i.bd, %i.bg
  br i1 %.not22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.aj, align 1, !tbaa !20236
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  store i8 0, ptr %i.ak, align 4, !tbaa !20231
  store i8 0, ptr %i.al, align 1, !tbaa !20232
  store i8 0, ptr %i.am, align 2, !tbaa !20233
  br label %bb.s

bb.s:                                             ; preds = %.noexc28, %bb.r
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !20234
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !19682
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_table, i64 %i.bj
  %.unpack.i = load i64, ptr %i.bk, align 16, !tbaa !19682
  %i.bl = inttoptr i64 %.unpack.i to ptr
  %i.bm = load i8, ptr %i.ak, align 4, !tbaa !20231, !range !20060, !noundef !1339
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.bn)
          to label %.noexc28 unwind label %bb.x, !inline_history !755

.noexc28:                                         ; preds = %bb.s
  br i1 %i.bo, label %bb.s, label %bb.t, !llvm.loop !756

bb.t:                                             ; preds = %.noexc28
  %i.bp = load ptr, ptr %i.ab, align 8, !tbaa !20205 ; 2 uses
  %.not36 = icmp eq ptr %i.bp, null
  %i.bq = load i32, ptr %i.af, align 8, !tbaa !20206
  %i.br = and i32 %i.bq, 8192
  %.not25 = icmp eq i32 %i.br, 0
  br i1 %.not25, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = load ptr, ptr %i.ag, align 8, !tbaa !20197 ; 2 uses
  %i.bt = load ptr, ptr %i.ah, align 8, !tbaa !20196
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bv = load ptr, ptr %i.ai, align 8, !tbaa !20223
  %.not26 = icmp eq ptr %i.bs, %i.bv
  br i1 %.not26, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.aj, align 1, !tbaa !20236
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  br i1 %.not36, label %.thread, label %bb.z

bb.z:                                             ; preds = %._crit_edge48, %bb.y
  %i.bx = phi ptr [ %.pre49, %._crit_edge48 ], [ %i.bp, %bb.y ] ; 2 uses
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.z, %bb.i
  store i8 1, ptr %i.ak, align 4, !tbaa !20231
  store i8 0, ptr %i.al, align 1, !tbaa !20232
  store i8 0, ptr %i.am, align 2, !tbaa !20233
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc30, %._crit_edge
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !20234
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !19682
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr @_ZZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE6unwindEbE14s_unwind_table, i64 %i.ca
  %.unpack.i29 = load i64, ptr %i.cb, align 16, !tbaa !19682
  %i.cc = inttoptr i64 %.unpack.i29 to ptr
  %i.cd = load i8, ptr %i.ak, align 4, !tbaa !20231, !range !20060, !noundef !1339
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = invoke noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(236) %0, i1 noundef zeroext %i.ce)
          to label %.noexc30 unwind label %.loopexit, !inline_history !755

.noexc30:                                         ; preds = %bb.aa
  br i1 %i.cf, label %bb.aa, label %bb.ab, !llvm.loop !756

bb.ab:                                            ; preds = %.noexc30
  %i.cg = load ptr, ptr %i.ab, align 8, !tbaa !20205 ; 2 uses
  %.not37 = icmp eq ptr %i.cg, null
  br i1 %.not37, label %.thread, label %bb.i, !llvm.loop !21140

.thread:                                          ; preds = %bb.ab, %bb.y
  %.5.in = load i8, ptr %i.ak, align 4, !tbaa !20231, !range !20060, !noundef !1339
  %.5 = trunc nuw i8 %.5.in to i1
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !19786
  %i.ci = add i32 %i.ch, -1
  store i32 %i.ci, ptr %i.a, align 8, !tbaa !19786
  ret i1 %.5

bb.ac:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.bw, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cj = load i32, ptr %i.a, align 8, !tbaa !19786
  %i.ck = add i32 %i.cj, -1
  store i32 %i.ck, ptr %i.a, align 8, !tbaa !19786
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE12maybe_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i8, ptr %i.a, align 4, !tbaa !20172, !range !20060, !noundef !1339
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit.sink.split, label %_ZNK5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE6suffixEv.exit

_ZNK5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE6suffixEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20228 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !20173  ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = sdiv exact i64 %i.i, 24                  ; 3 uses
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.0.i.i = select i1 %i.l, ptr %i.f, ptr %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20226 ; 3 uses
  %spec.select.i48 = tail call noundef i64 @llvm.usub.sat.i64(i64 %i.j, i64 2) ; 2 uses
  %.not144 = icmp ult i64 %i.j, 3
  br i1 %.not144, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE6suffixEv.exit
  %2 = icmp ugt i64 %i.i, 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %spec.select.i = select i1 %2, ptr %i.p, ptr %i.e ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20228 ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = load ptr, ptr %1, align 8, !tbaa !20173  ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.s, %i.u
  %i.w = icmp ugt i64 %i.v, 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %spec.select.i43 = select i1 %i.w, ptr %i.x, ptr %i.r
  %i.y = load ptr, ptr %spec.select.i, align 8, !tbaa !20225
  %i.z = icmp eq ptr %i.y, %i.o
  %i.aa = icmp sgt i32 %i.k, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.0.i.i47 = select i1 %i.aa, ptr %i.ab, ptr %i.m
  %i.ac = icmp sgt i32 %i.k, 2
  %.0.i = select i1 %i.ac, ptr %i.p, ptr %i.m
  %.in = select i1 %i.z, ptr %.0.i.i47, ptr %.0.i
  %i.ad = load ptr, ptr %.in, align 8, !tbaa !20225
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.0100 = phi i64 [ 0, %.lr.ph ], [ %i.bk, %bb.n ] ; 2 uses
  %.02499 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.n ] ; 3 uses
  %.02598 = phi i64 [ 0, %.lr.ph ], [ %.126, %bb.n ] ; 3 uses
  %.02897 = phi i64 [ 0, %.lr.ph ], [ %.129, %bb.n ] ; 4 uses
  %.03196 = phi i64 [ 0, %.lr.ph ], [ %.132, %bb.n ] ; 4 uses
  %.sroa.0.095 = phi ptr [ %spec.select.i43, %.lr.ph ], [ %i.bm, %bb.n ] ; 6 uses
  %.sroa.060.094 = phi ptr [ %spec.select.i, %.lr.ph ], [ %i.bl, %bb.n ] ; 6 uses
  %i.af = load ptr, ptr %.sroa.060.094, align 8, !tbaa !20225 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.o
  %i.ah = load ptr, ptr %.sroa.0.095, align 8, !tbaa !20225 ; 2 uses
  %.not42 = icmp eq ptr %i.ah, %i.o               ; 2 uses
  br i1 %i.ag, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %.not42, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.060.094, i64 16
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !20227, !range !20060, !noundef !1339
  %i.ak = icmp eq i8 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.095, i64 16
  %i.am = load i8, ptr %i.al, align 8, !tbaa !20227, !range !20060, !noundef !1339 ; 2 uses
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %._crit_edge, label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.ao = icmp eq i8 %i.am, 0
  br i1 %i.ao, label %.loopexit, label %bb.n

bb.g:                                             ; preds = %bb.b
  br i1 %.not42, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.aq = sub i64 %i.ap, %i.ae                    ; 7 uses
  %i.ar = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.as = sub i64 %i.ar, %i.ae                    ; 7 uses
  %i.at = icmp slt i64 %i.aq, %i.as
  br i1 %i.at, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = icmp slt i64 %i.as, %i.aq
  br i1 %i.au, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.060.094, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20226
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.ap                    ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.095, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20226
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.ar                    ; 2 uses
  %.not = icmp eq i64 %i.ay, %i.bc
  br i1 %.not, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.060.094, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !20227, !range !20060, !noundef !1339
  %i.bf = icmp eq i8 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.095, i64 16
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !20227, !range !20060, !noundef !1339 ; 2 uses
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %._crit_edge, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bj = icmp eq i8 %i.bh, 0
  br i1 %i.bj, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.e, %bb.m, %bb.f
  %.132 = phi i64 [ %.03196, %bb.f ], [ %.03196, %bb.e ], [ %i.ay, %bb.m ], [ %i.ay, %bb.l ]
  %.129 = phi i64 [ %.02897, %bb.f ], [ %.02897, %bb.e ], [ %i.ay, %bb.m ], [ %i.ay, %bb.l ]
  %.126 = phi i64 [ %.02598, %bb.f ], [ %.02598, %bb.e ], [ %i.aq, %bb.m ], [ %i.aq, %bb.l ]
  %.1 = phi i64 [ %.02499, %bb.f ], [ %.02499, %bb.e ], [ %i.as, %bb.m ], [ %i.as, %bb.l ]
  %i.bk = add nuw i64 %.0100, 1                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.060.094, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.095, i64 24
  %i.bn = icmp ult i64 %i.bk, %spec.select.i48
  br i1 %i.bn, label %bb.b, label %.loopexit, !llvm.loop !21141

._crit_edge:                                      ; preds = %bb.e, %bb.i, %bb.l, %bb.j
  %.233.ph = phi i64 [ %i.ay, %bb.j ], [ %.03196, %bb.e ], [ %.03196, %bb.i ], [ %i.ay, %bb.l ]
  %.230.ph = phi i64 [ %i.bc, %bb.j ], [ %.02897, %bb.e ], [ %.02897, %bb.i ], [ %i.ay, %bb.l ]
  %.227.ph = phi i64 [ %i.aq, %bb.j ], [ %.02598, %bb.e ], [ %i.aq, %bb.i ], [ %i.aq, %bb.l ]
  %.2.ph = phi i64 [ %i.as, %bb.j ], [ %.02499, %bb.e ], [ %i.as, %bb.i ], [ %i.as, %bb.l ]
  %i.bo = icmp eq i64 %.0100, %spec.select.i48
  br i1 %i.bo, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bp = icmp sgt i64 %.230.ph, %.233.ph
  %i.bq = icmp slt i64 %.2.ph, %.227.ph
  %brmerge = select i1 %i.bq, i1 true, i1 %i.bp
  br i1 %brmerge, label %.loopexit.sink.split, label %.thread170

.thread170:                                       ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.060.094, i64 16
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !20227, !range !20060, !noundef !1339
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.thread170
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.095, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !20227, !range !20060, !noundef !1339
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.c, %bb.o, %bb.p, %bb.a
  %i.bx = tail call noundef nonnull align 8 dereferenceable(77) ptr @_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.f, %bb.g, %bb.h, %bb.m, %_ZNK5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEE6suffixEv.exit, %.loopexit.sink.split, %._crit_edge, %.thread170, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15match_startmarkEv(ptr noundef nonnull align 8 dereferenceable(236) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20205 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !20058 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.f = load i8, ptr %i.e, align 4, !tbaa !20059, !range !20060, !noundef !1339
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.f, ptr %i.g, align 8, !tbaa !20209
  switch i32 %i.d, label %bb.ar [
    i32 0, label %bb.b
    i32 -1, label %bb.c
    i32 -2, label %bb.c
    i32 -3, label %bb.i
    i32 -4, label %bb.u
    i32 -5, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19682
  store ptr %i.i, ptr %i.a, align 8, !tbaa !20205
  br label %.loopexit65

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19682 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19682
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19682
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19682
  store ptr %i.q, ptr %i.a, align 8, !tbaa !20205
  %i.r = icmp eq i32 %i.d, -1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20234
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20241
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14push_assertionEPKNS0_14re_syntax_baseEb.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !20222 ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !20222
  %i.ab = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i.i, !prof !19841

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #40
  %.not.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #40
  br label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i.i

_ZN5boost13re_detail_50013get_mem_blockEv.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.af = tail call noundef ptr @_ZN5boost13re_detail_50015mem_block_cache3getEv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4072 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4080
  %i.ai = load <2 x ptr>, ptr %i.v, align 8, !tbaa !20221
  store i32 6, ptr %i.ag, align 8, !tbaa !19682
  store <2 x ptr> %i.ai, ptr %i.ah, align 8, !tbaa !20221
  store ptr %i.af, ptr %i.v, align 8, !tbaa !20241
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit.i

bb.h:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20240, !nonnull !1339, !align !19737
  tail call void @_ZN5boost13re_detail_50011raise_errorINS_20regex_traits_wrapperINS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEEEvRKT_NS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i32 noundef 19)
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !20234
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit.i

end_hunk_2
begin_hunk_3_@_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE14push_recursionEiPKNS0_14re_syntax_baseEPNS_13match_resultsIS3_S6_EESH_:bb.a
  store i32 %i.i, ptr %i.g, align 8, !tbaa !20222
  %i.j = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, !prof !19841

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #40
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #40
  br label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i

_ZN5boost13re_detail_50013get_mem_blockEv.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.n = tail call noundef ptr @_ZN5boost13re_detail_50015mem_block_cache3getEv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4072 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4080
  %i.q = load <2 x ptr>, ptr %i.d, align 8, !tbaa !20221
  store i32 6, ptr %i.o, align 8, !tbaa !19682
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !20221
  store ptr %i.n, ptr %i.d, align 8, !tbaa !20241
  store ptr %i.o, ptr %i.a, align 8, !tbaa !20234
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20240, !nonnull !1339, !align !19737
  tail call void @_ZN5boost13re_detail_50011raise_errorINS_20regex_traits_wrapperINS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEEEvRKT_NS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef 19)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !20234
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit

_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit: ; preds = %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, %bb.f
  %i.t = phi ptr [ %i.o, %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i ], [ %.pre, %bb.f ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -184
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit, %bb.a
  %.0 = phi ptr [ %i.u, %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit ], [ %i.c, %bb.a ] ; 6 uses
  store i32 14, ptr %.0, align 8, !tbaa !19682
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %1, ptr %i.v, align 8, !tbaa !20266
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %2, ptr %i.w, align 8, !tbaa !20267
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  tail call void @_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(77) %i.x, ptr noundef nonnull align 8 dereferenceable(77) %3)
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 104
  invoke void @_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(77) %i.y, ptr noundef nonnull align 8 dereferenceable(77) %4)
          to label %_ZN5boost13re_detail_50015saved_recursionINS_13match_resultsIPKcSaINS_9sub_matchIS4_EEEEEEC2EiPKNS0_14re_syntax_baseEPS8_SD_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(77) dereferenceable(77) %i.x) #40
  resume { ptr, i32 } %i.z

_ZN5boost13re_detail_50015saved_recursionINS_13match_resultsIPKcSaINS_9sub_matchIS4_EEEEEEC2EiPKNS0_14re_syntax_baseEPS8_SD_.exit: ; preds = %bb.g
  store ptr %.0, ptr %i.a, align 8, !tbaa !20234
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE19push_repeater_countEiPPNS0_14repeater_countIS3_EE(ptr noundef nonnull align 8 dereferenceable(236) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #24 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20234
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20241
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20222 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.h, -1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !20222
  %i.j = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, !prof !19841

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #40
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #40 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #40
  br label %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i

_ZN5boost13re_detail_50013get_mem_blockEv.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.n = tail call noundef ptr @_ZN5boost13re_detail_50015mem_block_cache3getEv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4072 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4080
  %i.q = load <2 x ptr>, ptr %i.d, align 8, !tbaa !20221
  store i32 6, ptr %i.o, align 8, !tbaa !19682
  store <2 x ptr> %i.q, ptr %i.p, align 8, !tbaa !20221
  store ptr %i.n, ptr %i.d, align 8, !tbaa !20241
  store ptr %i.o, ptr %i.a, align 8, !tbaa !20234
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20240, !nonnull !1339, !align !19737
  tail call void @_ZN5boost13re_detail_50011raise_errorINS_20regex_traits_wrapperINS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEEEvRKT_NS_15regex_constants10error_typeE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i32 noundef 19)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !20234
  br label %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit

_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit: ; preds = %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i, %bb.f
  %i.t = phi ptr [ %i.o, %_ZN5boost13re_detail_50013get_mem_blockEv.exit.i ], [ %.pre, %bb.f ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -48
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit, %bb.a
  %.0 = phi ptr [ %i.u, %_ZN5boost13re_detail_50012perl_matcherIPKcSaINS_9sub_matchIS3_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12extend_stackEv.exit ], [ %i.c, %bb.a ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20197
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20250
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20250 ; 2 uses
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -112
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !20252
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ae = phi i32 [ %i.ad, %bb.h ], [ -2147483645, %bb.g ]
  store i32 5, ptr %.0, align 8, !tbaa !19682
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 40 ; 2 uses
  store ptr %i.w, ptr %i.ag, align 8, !tbaa !20255
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i32 %1, ptr %i.ah, align 8, !tbaa !20203
  store ptr %2, ptr %i.af, align 8, !tbaa !20201
  %i.ai = load ptr, ptr %2, align 8, !tbaa !20204
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !20202
  store ptr %i.af, ptr %2, align 8, !tbaa !20204
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20202 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !20203 ; 2 uses
  %i.an = icmp sgt i32 %1, %i.am
  %i.ao = icmp sgt i32 %i.am, -1
  %or.cond.i.i = and i1 %i.an, %i.ao
  br i1 %or.cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store i64 0, ptr %i.ap, align 8, !tbaa !20254
  br label %_ZN5boost13re_detail_50014saved_repeaterIPKcEC2EiPPNS0_14repeater_countIS3_EES3_i.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = tail call noundef ptr @_ZN5boost13re_detail_50014repeater_countIPKcE12unwind_untilEiPS4_i(ptr noundef nonnull align 8 dereferenceable(40) %i.af, i32 noundef %1, ptr noundef nonnull %i.ak, i32 noundef %i.ae) ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !20254
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store i64 %i.as, ptr %i.at, align 8, !tbaa !20254
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20255
  store ptr %i.av, ptr %i.ag, align 8, !tbaa !20255
  br label %_ZN5boost13re_detail_50014saved_repeaterIPKcEC2EiPPNS0_14repeater_countIS3_EES3_i.exit

bb.m:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 32
  store i64 0, ptr %i.aw, align 8, !tbaa !20254
  br label %_ZN5boost13re_detail_50014saved_repeaterIPKcEC2EiPPNS0_14repeater_countIS3_EES3_i.exit

_ZN5boost13re_detail_50014saved_repeaterIPKcEC2EiPPNS0_14repeater_countIS3_EES3_i.exit: ; preds = %bb.j, %bb.l, %bb.m
  store ptr %.0, ptr %i.a, align 8, !tbaa !20234
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5boost13match_resultsIPKcSaINS_9sub_matchIS2_EEEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20228 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !20173  ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5boost9sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, !prof !19683

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #43
  unreachable

_ZNSt15__new_allocatorIN5boost9sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #44
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5boost9sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN5boost9sub_matchIPKcEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !20173
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !20228
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !20174
  %i.m = load ptr, ptr %1, align 8, !tbaa !20235  ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !20235 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.08.011.i.i.i.i.i, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !20227, !range !20060, !noundef !1339
  store i8 %i.r, ptr %i.p, align 8, !tbaa !20227
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.n
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !757

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.t, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.j, align 8, !tbaa !20228
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.v, i8 0, i64 25, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19782 ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.x, align 8, !tbaa !19800
  store <2 x ptr> %i.aa, ptr %i.w, align 8, !tbaa !19800
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEC2ERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19682
  %.not.i.i.i.i8 = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !19786
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !19786
  br label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEC2ERKS3_.exit: ; preds = %.loopexit, %bb.e, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !20229
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !20229
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !20172, !range !20060, !noundef !1339 ; 2 uses
  %i.am = trunc nuw i8 %i.al to i1
  store i8 %i.al, ptr %i.aj, align 4, !tbaa !20172
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEC2ERKS3_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !19794
  store <2 x ptr> %i.ao, ptr %i.v, align 8, !tbaa !19794
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20226
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !20226
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load i8, ptr %i.as, align 8, !tbaa !20227, !range !20060, !noundef !1339
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.at, ptr %i.au, align 8, !tbaa !20227
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEC2ERKS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5boost13re_detail_50014repeater_countIPKcE12unwind_untilEiPS4_i(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = sub nsw i32 -2, %3
  %.not26 = icmp eq ptr %2, null
  br i1 %.not26, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.01627 = phi ptr [ %.1, %bb.g ], [ %2, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01627, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20203 ; 2 uses
  %.not23 = icmp eq i32 %i.c, %1
  br i1 %.not23, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.01627, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20202 ; 4 uses
  %.not24 = icmp eq ptr %i.f, null
  br i1 %.not24, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20203 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef ptr @_ZN5boost13re_detail_50014repeater_countIPKcE12unwind_untilEiPS4_i(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %i.h, ptr noundef nonnull %i.f, i32 noundef %3) ; 2 uses
  %.not25 = icmp eq ptr %i.j, null
  br i1 %.not25, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20202
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.1 = phi ptr [ %i.l, %bb.f ], [ %i.f, %bb.d ]  ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !21167

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.e, %bb.g, %.lr.ph, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.e ], [ %.01627, %.lr.ph ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5boost13re_detail_50016re_is_set_memberIPKccNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEjEET_S8_S8_PKNS0_11re_set_longIT2_EERKNS0_10regex_dataIT0_T1_EEb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(402) %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = alloca [2 x i8], align 1                 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19823 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20136
  %.not265 = icmp eq i32 %i.h, 0
  br i1 %.not265, label %._crit_edge246, label %.lr.ph245.split

.lr.ph245.split:                                  ; preds = %bb.b, %bb.h
  %.0100243 = phi i32 [ %i.bb, %bb.h ], [ 0, %bb.b ]
  %.0103242 = phi ptr [ %.2105, %bb.h ], [ %i.d, %bb.b ] ; 4 uses
  %i.i = load i8, ptr %.0103242, align 1, !tbaa !19682 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph245.split
  br i1 %4, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135.us, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135

_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135.us: ; preds = %.lr.ph, %bb.c
  %.0102231.us = phi ptr [ %i.u, %bb.c ], [ %0, %.lr.ph ] ; 3 uses
  %.1104230.us = phi ptr [ %i.t, %bb.c ], [ %.0103242, %.lr.ph ] ; 3 uses
  %i.k = load i8, ptr %.0102231.us, align 1, !tbaa !19682
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !19858
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19838 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !797
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.n, i8 noundef signext %i.k), !call_target !20133, !inline_history !747
  %i.s = load i8, ptr %.1104230.us, align 1, !tbaa !19682 ; 2 uses
  %.not132.us = icmp eq i8 %i.r, %i.s
  br i1 %.not132.us, label %bb.c, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135._crit_edge

bb.c:                                             ; preds = %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135.us
  %i.t = getelementptr inbounds nuw i8, ptr %.1104230.us, i64 1 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0102231.us, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.t, align 1, !tbaa !19682 ; 2 uses
  %i.w = icmp ne i8 %i.v, 0
  %i.x = icmp ne ptr %i.u, %1
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135.us, label %_ZNK5boost16cpp_regex_traitsIcE9translateEcb.exit135._crit_edge, !llvm.loop !21168

end_hunk_3
