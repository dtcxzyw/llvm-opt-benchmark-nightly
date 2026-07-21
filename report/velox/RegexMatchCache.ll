inline.NumInlined: 9148
inline.NumDeleted: 3321
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9match_impEv:bb.a
  %.0 = phi i1 [ false, %bb.ah ], [ false, %bb.an ], [ %i.fg, %._crit_edge.i19 ]
  %i.fh = load ptr, ptr %5, align 8, !tbaa !21057
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !21060
  %i.fj = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.fk = icmp eq i8 %i.fj, 0
  br i1 %i.fk, label %bb.aw, label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit, !prof !20032

bb.aw:                                            ; preds = %bb.av
  %i.fl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #41
  %.not.i.i.i28 = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i.i28, label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fm = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #41 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #41
  br label %_ZN5boost13re_detail_50015save_state_initD2Ev.exit

_ZN5boost13re_detail_50015save_state_initD2Ev.exit: ; preds = %bb.av, %bb.aw, %bb.ax
  call void @_ZN5boost13re_detail_50015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr noundef %i.fi)
  %i.fn = load ptr, ptr %5, align 8, !tbaa !21057
  store ptr null, ptr %i.fn, align 8, !tbaa !21060
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  ret i1 %.0

bb.ay:                                            ; preds = %bb.as
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #43
  unreachable

bb.az:                                            ; preds = %bb.at
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(77) ptr @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %0, ptr noundef nonnull align 8 dereferenceable(77) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5boost9sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEaSERKSF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !21070
  store ptr %i.d, ptr %i.c, align 8, !tbaa !21070
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19943 ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !19943 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not7.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19747
  %.not.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !7
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !7
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !19943
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
  store i32 0, ptr %i.o, align 8, !tbaa !19946
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !19948
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41, !call_target !16646, !inline_history !21080
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41, !call_target !16647, !inline_history !21080
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19747
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
  br i1 %i.ac, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !19748

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #41
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.g, ptr %i.e, align 8, !tbaa !19943
  br label %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit

_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !21066
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !21066
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !19953, !range !20413, !noundef !179 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 %i.ah, ptr %i.aj, align 4, !tbaa !19953
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !19975
  store i64 %i.am, ptr %i.al, align 8, !tbaa !19975
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !19975
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !19975
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !19975
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !19975
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i8, ptr %i.at, align 8, !tbaa !21063, !range !20413, !noundef !179
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.au, ptr %i.av, align 8, !tbaa !21063
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt10shared_ptrIN5boost13re_detail_50020named_subexpressionsEEaSERKS3_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12match_prefixEv(ptr noundef nonnull align 8 dereferenceable(236) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !21081
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 122 ; 4 uses
  store i8 0, ptr %i.b, align 2, !tbaa !21082
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20996, !nonnull !179, !align !19820
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19980
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20445
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20994
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21002 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.sroa.01.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !19975 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !19967 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = ptrtoint ptr %.sroa.01.0.copyload to i64 ; 2 uses
  store i64 %i.o, ptr %i.n, align 8, !tbaa !19975
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !19975
  %i.q = icmp ne ptr %i.p, %.sroa.01.0.copyload
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.s = zext i1 %i.q to i8
  store i8 %i.s, ptr %i.r, align 8, !tbaa !21063
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i64 %i.o, ptr %i.t, align 8, !tbaa !19975
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21064
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.l to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 24                  ; 3 uses
  %i.aa = icmp ugt i64 %i.z, 3
  br i1 %i.aa, label %.lr.ph.i, label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.i = load i64, ptr %i.ab, align 8, !tbaa !19975 ; 10 uses
  %i.ac = add nsw i64 %i.z, -3                    ; 2 uses
  %i.ad = add nsw i64 %i.z, -4
  %xtraiter = and i64 %i.ac, 3                    ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 3
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ac, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.06.i = phi i64 [ 3, %.lr.ph.i.new ], [ %i.aq, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i ; 3 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.pre.i, ptr %1, align 8, !tbaa !19975
  store i64 %.pre.i, ptr %i.af, align 8, !tbaa !19975
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i8 0, ptr %i.ag, align 8, !tbaa !21063
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %.pre.i, ptr %i.ai, align 8, !tbaa !19975
  store i64 %.pre.i, ptr %2, align 8, !tbaa !19975
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i8 0, ptr %i.aj, align 8, !tbaa !21063
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store i64 %.pre.i, ptr %i.al, align 8, !tbaa !19975
  store i64 %.pre.i, ptr %3, align 8, !tbaa !19975
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i8 0, ptr %i.am, align 8, !tbaa !21063
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store i64 %.pre.i, ptr %i.ao, align 8, !tbaa !19975
  store i64 %.pre.i, ptr %4, align 8, !tbaa !19975
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  store i8 0, ptr %i.ap, align 8, !tbaa !21063
  %i.aq = add nuw i64 %.06.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !21083

_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.06.i.epil.init = phi i64 [ 3, %.lr.ph.i ], [ %i.aq, %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit.loopexit.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.06.i.epil = phi i64 [ %.06.i.epil.init, %.epil.preheader ], [ %i.at, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i.epil ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.pre.i, ptr %5, align 8, !tbaa !19975
  store i64 %.pre.i, ptr %i.ar, align 8, !tbaa !19975
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i8 0, ptr %i.as, align 8, !tbaa !21063
  %i.at = add nuw i64 %.06.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit, label %bb.c, !llvm.loop !21084

_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit: ; preds = %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.av = load i64, ptr %i.k, align 8, !tbaa !19975
  store i64 %i.av, ptr %i.au, align 8, !tbaa !19975
  %i.aw = tail call noundef zeroext i1 @_ZN5boost13re_detail_50012perl_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISC_EEENS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE16match_all_statesEv(ptr noundef nonnull align 8 dereferenceable(236) %0) ; 0 uses
  %i.ax = load i8, ptr %i.b, align 2, !tbaa !21082, !range !20413, !noundef !179
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit
  %i.az = load i8, ptr %i.a, align 1, !tbaa !21081, !range !20413, !noundef !179
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.e, label %.thread4

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !20995 ; 2 uses
  %i.bd = and i32 %i.bc, 8192
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %.thread4, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !21082
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !21002 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.bf, align 8, !tbaa !19975 ; 5 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !19967 ; 5 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 56
  store ptr %.sroa.0.0.copyload, ptr %i.bh, align 8, !tbaa !19975
  %i.bi = getelementptr i8, ptr %i.bg, i64 64
  store i8 0, ptr %i.bi, align 8, !tbaa !21063
  store ptr %.sroa.0.0.copyload, ptr %i.bg, align 8, !tbaa !19975
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !19975
  %i.bl = icmp ne ptr %.sroa.0.0.copyload, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = zext i1 %i.bl to i8
  store i8 %i.bn, ptr %i.bm, align 8, !tbaa !21063
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %.sroa.0.0.copyload, ptr %i.bo, align 8, !tbaa !19975
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %.sroa.0.0.copyload, ptr %i.bp, align 8, !tbaa !19975
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i8 0, ptr %i.bq, align 8, !tbaa !21085
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 76
  store i8 0, ptr %i.br, align 4, !tbaa !19953
  %i.bs = load i64, ptr %i.bf, align 8, !tbaa !19975
  store i64 %i.bs, ptr %i.k, align 8, !tbaa !19975
  %i.bt = and i32 %i.bc, 131072
  %.not2 = icmp eq i32 %i.bt, 0
  br i1 %.not2, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = load ptr, ptr %0, align 8, !tbaa !21001, !nonnull !179, !align !19820
  tail call void @_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE12maybe_assignERKSF_(ptr noundef nonnull align 8 dereferenceable(77) %i.bu, ptr noundef nonnull align 8 dereferenceable(77) %i.be)
  %.pre = load i8, ptr %i.b, align 2, !tbaa !21082, !range !20413
  %i.bv = trunc nuw i8 %.pre to i1
  br i1 %i.bv, label %.thread, label %.thread4

.thread4:                                         ; preds = %bb.e, %bb.d, %bb.g
  %i.bw = load i64, ptr %i.au, align 8, !tbaa !19975
  store i64 %i.bw, ptr %i.k, align 8, !tbaa !19975
  br label %.thread

.thread:                                          ; preds = %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit, %bb.f, %.thread4, %bb.g
  %i.bx = phi i1 [ true, %bb.g ], [ false, %.thread4 ], [ true, %bb.f ], [ true, %_ZN5boost13match_resultsIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS_9sub_matchISB_EEEE9set_firstESB_.exit ]
  ret i1 %i.bx
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5boost13re_detail_50015save_state_initD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21057
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21060
  %i.c = load atomic i8, ptr @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !20032

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #41
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost13re_detail_50015mem_block_cacheD2Ev, ptr nonnull @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr nonnull @__dso_handle) #41 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache) #41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5boost13re_detail_50015mem_block_cache3putEPv(ptr noundef nonnull align 8 dereferenceable(128) @_ZZN5boost13re_detail_50015mem_block_cache8instanceEvE11block_cache, ptr noundef %i.b)
  %i.g = load ptr, ptr %0, align 8, !tbaa !21057
  store ptr null, ptr %i.g, align 8, !tbaa !21060
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
  %i.ah = cmpxchg ptr %i.af, ptr %i.ag, ptr null seq_cst seq_cst, align 8
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
end_hunk_0
