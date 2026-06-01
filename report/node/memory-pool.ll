inline.NumInlined: 2403
inline.NumDeleted: 1226
begin_hunk_0_@_ZN2v88internal10MemoryPool17LargePagePoolImpl3AddERSt6vectorIPNS0_17LargePageMetadataESaIS5_EEm:bb.a
  %.sroa.07.020.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %.sroa.07.018.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal17LargePageMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS3_10MemoryPool17LargePagePoolImpl3AddERS9_mE3$_0EEEET_SK_SK_T0_.exit.i.i" ] ; 3 uses
  %.sroa.013.019.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.l ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal17LargePageMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS3_10MemoryPool17LargePagePoolImpl3AddERS9_mE3$_0EEEET_SK_SK_T0_.exit.i.i" ] ; 3 uses
  %i.ad = call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl3AddERSt6vectorIPNS4_17LargePageMetadataESaIS9_EEmE3$_0EEclINS_17__normal_iteratorIPS9_SB_EEEEbT_"(ptr nonnull align 8 %3, ptr nonnull %.sroa.07.020.i.i)
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ae = load ptr, ptr %.sroa.07.020.i.i, align 8
  store ptr %i.ae, ptr %.sroa.013.019.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.013.019.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.019.i.i, %.lr.ph.i.i ], [ %i.af, %bb.k ] ; 2 uses
  %.sroa.07.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i, i64 8 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.07.0.i.i, %i.e
  br i1 %i.ag, label %"_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal17LargePageMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS3_10MemoryPool17LargePagePoolImpl3AddERS9_mE3$_0EEEET_SK_SK_T0_.exit.i", label %.lr.ph.i.i, !llvm.loop !7

"_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal17LargePageMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS3_10MemoryPool17LargePagePoolImpl3AddERS9_mE3$_0EEEET_SK_SK_T0_.exit.i": ; preds = %bb.l, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal17LargePageMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS3_10MemoryPool17LargePagePoolImpl3AddERS9_mE3$_0EEEET_SK_SK_T0_.exit.i.i"
  %.sroa.013.2.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal17LargePageMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS3_10MemoryPool17LargePagePoolImpl3AddERS9_mE3$_0EEEET_SK_SK_T0_.exit.i.i" ], [ %.sroa.013.1.i.i, %bb.l ] ; 3 uses
  %i.ah = icmp eq ptr %.sroa.013.2.i.i, %i.e
  %i.ai = load ptr, ptr %i.d, align 8
  %i.aj = icmp eq ptr %.sroa.013.2.i.i, %i.ai
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN2v88internal17LargePageMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN2v88internal17LargePageMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i: ; preds = %"_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal17LargePageMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS3_10MemoryPool17LargePagePoolImpl3AddERS9_mE3$_0EEEET_SK_SK_T0_.exit.i"
  %i.ak = ptrtoint ptr %.sroa.013.2.i.i to i64
  %.pre.i = load ptr, ptr %1, align 8             ; 2 uses
  %.pre21.i = ptrtoint ptr %.pre.i to i64
  %i.al = sub i64 %i.ak, %.pre21.i
  %i.am = getelementptr inbounds i8, ptr %.pre.i, i64 %i.al
  store ptr %i.am, ptr %i.d, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN2v88internal17LargePageMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i, %._crit_edge.i.i.i.i, %"_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPN2v88internal17LargePageMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS3_10MemoryPool17LargePagePoolImpl3AddERS9_mE3$_0EEEET_SK_SK_T0_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.an = load i8, ptr %i.a, align 1, !range !8, !noundef !9
  %i.ao = trunc nuw i8 %i.an to i1
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %i.ao
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal10MemoryPool17LargePagePoolImpl6RemoveEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d
  %i.f = icmp eq ptr %.sroa.014.1, %i.c
  br i1 %i.f, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.e

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.014.021 = phi ptr [ %.sroa.014.1, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.011.020 = phi ptr [ %i.r, %bb.d ], [ %i.d, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.011.020, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp ult i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = icmp eq ptr %.sroa.014.021, %i.c
  br i1 %i.l, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.014.021, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp ult i64 %i.j, %i.p
  br i1 %i.q, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.b, %bb.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge, %.lr.ph
  %.sroa.014.1 = phi ptr [ %.sroa.014.021, %.lr.ph ], [ %.sroa.011.020, %.critedge ], [ %.sroa.014.021, %bb.c ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.020, i64 48 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.c
  br i1 %i.s, label %._crit_edge, label %.lr.ph, !llvm.loop !10

bb.e:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.014.1, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  store ptr null, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = sub i64 %i.y, %i.w
  store i64 %i.z, ptr %i.x, align 8
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ab = ptrtoint ptr %.sroa.014.1 to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 %i.ad
  %i.af = tail call ptr @_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPSA_SC_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.ae) ; 0 uses
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %bb.a, %._crit_edge, %bb.e
  %.0 = phi ptr [ %i.u, %bb.e ], [ null, %._crit_edge ], [ null, %bb.a ]
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10MemoryPool17LargePagePoolImpl10ReleaseAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %.not4.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvT_SC_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i ], [ %i.c, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i1, label %bb.b, label %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store ptr null, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i32 noundef 3) #20, !inline_history !12 ; 0 uses
  br label %_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvT_SC_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvT_SC_.exit.i: ; preds = %_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvT_SC_.exit.i
  %i.s = ptrtoint ptr %i.g to i64
  %i.t = ptrtoint ptr %i.c to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.u) #22
  br label %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EED2Ev.exit

_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvT_SC_.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.sroa.0.i.i.i.i.i.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::vector.27", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = sdiv exact i64 %i.i, 48
  %i.k = ashr i64 %i.j, 2                         ; 3 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.m = mul nuw nsw i64 %i.k, 192
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.f, i64 %i.m ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit36.i.i.i.i", %.lr.ph.i.i.i.i
  %.077.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i ], [ %i.be, %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit36.i.i.i.i" ] ; 2 uses
  %.sroa.055.076.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %i.bd, %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit36.i.i.i.i" ] ; 17 uses
  %i.n = load i64, ptr %.sroa.055.076.i.i.i.i, align 8
  %.not.i.i.i.i.i.not.i.i.i.i = icmp ugt i64 %i.n, %1
  br i1 %.not.i.i.i.i.i.not.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = sub i64 %i.t, %i.r
  store i64 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 8
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i": ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 48
  %i.x = load i64, ptr %i.w, align 8
  %.not.i.i.i.i.i22.not.i.i.i.i = icmp ugt i64 %i.x, %1
  br i1 %.not.i.i.i.i.i22.not.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit26.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i"
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 88
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = sub i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 56
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit26.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i.i.i"
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 96
  %i.ai = load i64, ptr %i.ah, align 8
  %.not.i.i.i.i.i27.not.i.i.i.i = icmp ugt i64 %i.ai, %1
  br i1 %.not.i.i.i.i.i27.not.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit26.i.i.i.i"
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 136
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = sub i64 %i.ap, %i.an
  store i64 %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 104
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit26.i.i.i.i"
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 144
  %i.at = load i64, ptr %i.as, align 8
  %.not.i.i.i.i.i32.not.i.i.i.i = icmp ugt i64 %i.at, %1
  br i1 %.not.i.i.i.i.i32.not.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit36.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i"
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 144
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 184
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = sub i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 152
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit36.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit31.i.i.i.i"
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.055.076.i.i.i.i, i64 192
  %i.be = add nsw i64 %.077.i.i.i.i, -1
  %i.bf = icmp sgt i64 %.077.i.i.i.i, 1
  br i1 %i.bf, label %bb.b, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !14

._crit_edge.loopexit.i.i.i.i:                     ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit36.i.i.i.i"
  %.pre85.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre86.i.i.i.i = sub i64 %i.g, %.pre85.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi87.i.i.i.i = phi i64 [ %.pre86.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.i, %bb.a ]
  %.sroa.055.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.f, %bb.a ] ; 7 uses
  %i.bg = sdiv exact i64 %.pre-phi87.i.i.i.i, 48
  switch i64 %i.bg, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge82.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bh = load i64, ptr %.sroa.055.0.lcssa.i.i.i.i, align 8
  %.not.i.i.i.i.i37.not.i.i.i.i = icmp ugt i64 %i.bh, %1
  br i1 %.not.i.i.i.i.i37.not.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit41.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.055.0.lcssa.i.i.i.i, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = sub i64 %i.bn, %i.bl
  store i64 %i.bo, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.055.0.lcssa.i.i.i.i, i64 8
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit41.i.i.i.i": ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.055.0.lcssa.i.i.i.i, i64 48
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit41.i.i.i.i"
  %.sroa.055.1.i.i.i.i = phi ptr [ %i.bq, %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit41.i.i.i.i" ], [ %.sroa.055.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 5 uses
  %i.br = load i64, ptr %.sroa.055.1.i.i.i.i, align 8
  %.not.i.i.i.i.i42.not.i.i.i.i = icmp ugt i64 %i.br, %1
  br i1 %.not.i.i.i.i.i42.not.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit46.i.i.i.i", label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.055.1.i.i.i.i, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = sub i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bw, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.055.1.i.i.i.i, i64 8
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit46.i.i.i.i": ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.055.1.i.i.i.i, i64 48
  br label %._crit_edge._crit_edge82.i.i.i.i

._crit_edge._crit_edge82.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit46.i.i.i.i"
  %.sroa.055.2.i.i.i.i = phi ptr [ %i.ca, %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit46.i.i.i.i" ], [ %.sroa.055.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 4 uses
  %i.cb = load i64, ptr %.sroa.055.2.i.i.i.i, align 8
  %.not.i.i.i.i.i47.not.i.i.i.i = icmp ugt i64 %i.cb, %1
  br i1 %.not.i.i.i.i.i47.not.i.i.i.i, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge82.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.055.2.i.i.i.i, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = sub i64 %i.ch, %i.cf
  store i64 %i.ci, ptr %i.cg, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.055.2.i.i.i.i, i64 8
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i.i": ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi ptr [ %i.cj, %bb.j ], [ %i.bz, %bb.i ], [ %i.bp, %bb.h ], [ %i.bc, %bb.f ], [ %i.ar, %bb.e ], [ %i.ag, %bb.d ], [ %i.v, %bb.c ]
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.055.2.i.i.i.i, %bb.j ], [ %.sroa.055.1.i.i.i.i, %bb.i ], [ %.sroa.055.0.lcssa.i.i.i.i, %bb.h ], [ %i.au, %bb.f ], [ %i.aj, %bb.e ], [ %i.y, %bb.d ], [ %.sroa.055.076.i.i.i.i, %bb.c ] ; 5 uses
  call void @_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null, ptr noundef nonnull align 8 dereferenceable(40) %.sink)
  %i.ck = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.e
  br i1 %i.ck, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i.i"
  %.sroa.09.036.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 48 ; 2 uses
  %i.cl = icmp eq ptr %.sroa.09.036.i.i, %i.e
  br i1 %i.cl, label %"_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.k

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i", %.lr.ph.i.i
  %.sroa.09.039.i.i = phi ptr [ %.sroa.09.036.i.i, %.lr.ph.i.i ], [ %.sroa.09.0.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i" ] ; 3 uses
  %.sroa.015.038.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.lr.ph.i.i ], [ %.sroa.015.1.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i" ] ; 9 uses
  %.sroa.08.0.in.sroa.speculated.i.i.pn37.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.lr.ph.i.i ], [ %.sroa.09.039.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i" ] ; 6 uses
  %i.cq = load i64, ptr %.sroa.09.039.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.not.i.i = icmp ugt i64 %i.cq, %1
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn37.i.i, i64 56 ; 3 uses
  br i1 %.not.i.i.i.i.i.not.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn37.i.i, i64 88 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = load i64, ptr %i.cn, align 8
  %i.cx = sub i64 %i.cw, %i.cv
  store i64 %i.cx, ptr %i.cn, align 8
  %i.cy = load ptr, ptr %i.co, align 8            ; 7 uses
  %i.cz = load ptr, ptr %i.cp, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn37.i.i, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, i8 0, i64 24, i1 false)
  %i.dc = load ptr, ptr %i.db, align 8
  store ptr %i.dc, ptr %i.da, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn37.i.i, i64 72 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt12construct_atISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %i.cr, i64 16, i1 false)
  %i.dg = load ptr, ptr %i.dd, align 8
  store ptr %i.dg, ptr %i.df, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i.i.i.i.i.i.i.i.i

_ZSt12construct_atISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.di = load i64, ptr %i.cs, align 8
  store i64 %i.di, ptr %i.dh, align 8
  store ptr null, ptr %i.cs, align 8
  %i.dj = load ptr, ptr %i.co, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store ptr %i.dk, ptr %i.co, align 8
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i"

bb.o:                                             ; preds = %bb.l
  call void @_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %i.cr)
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i": ; preds = %bb.k
  store i64 %i.cq, ptr %.sroa.015.038.i.i, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.015.038.i.i, i64 8 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn37.i.i, i64 88 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  store ptr null, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.015.038.i.i, i64 40 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8
  %.not.i.i.i.i.i5.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i5.i.i, label %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.dp, ptr %i.b, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.015.038.i.i, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  %.not.i.i.i.i.i.i.i6.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i.i.i6.i.i, label %bb.q, label %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.015.038.i.i, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20, !inline_history !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i

_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn37.i.i, i64 72 ; 3 uses
  %i.dv = load <2 x ptr>, ptr %i.du, align 8
  %i.dw = load ptr, ptr %i.du, align 8
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.cr, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i

_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i: ; preds = %bb.r, %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.dl, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.015.038.i.i, i64 24 ; 3 uses
  %i.dy = load <2 x ptr>, ptr %i.dx, align 8
  %i.dz = load ptr, ptr %i.dx, align 8            ; 2 uses
  store <2 x ptr> %i.dv, ptr %i.dx, align 8
  store <2 x ptr> %i.dy, ptr %i.cm, align 8
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i
  %i.ea = call noundef zeroext i1 %i.dz(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #20, !inline_history !16 ; 0 uses
  br label %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i

_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i: ; preds = %bb.s, %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.015.038.i.i, i64 48
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i": ; preds = %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i, %bb.o, %_ZSt12construct_atISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i.i.i.i.i.i.i.i.i
  %.sroa.015.1.i.i = phi ptr [ %i.eb, %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i ], [ %.sroa.015.038.i.i, %_ZSt12construct_atISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.015.038.i.i, %bb.o ] ; 2 uses
  %.sroa.09.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.039.i.i, i64 48 ; 2 uses
  %i.ec = icmp eq ptr %.sroa.09.0.i.i, %i.e
  br i1 %i.ec, label %"_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i", label %bb.k, !llvm.loop !17

"_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i", %.preheader.i.i
  %.sroa.015.2.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.preheader.i.i ], [ %.sroa.015.1.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predISt17reference_wrapperIZN2v88internal10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEclINS_17__normal_iteratorIPSt4pairImSt10unique_ptrINS4_17LargePageMetadataESt8functionIFvPSE_EEEESt6vectorISK_SaISK_EEEEEEbT_.exit.thread.i.i" ] ; 2 uses
  %i.ed = icmp eq ptr %.sroa.015.2.i.i, %i.e
  br i1 %i.ed, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %"_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i"
  %i.ee = load ptr, ptr %i.d, align 8
  %i.ef = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.eg = ptrtoint ptr %.sroa.015.2.i.i to i64
  %i.eh = ptrtoint ptr %i.ef to i64               ; 2 uses
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  %i.ek = ptrtoint ptr %i.ee to i64
  %i.el = sub i64 %i.ek, %i.eh
  %i.em = getelementptr inbounds i8, ptr %i.ef, i64 %i.el
  %i.en = call ptr @_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPSA_SC_EESG_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.ej, ptr %i.em) ; 0 uses
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %._crit_edge.i.i.i.i, %._crit_edge._crit_edge82.i.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i.i", %"_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS5_10MemoryPool17LargePagePoolImpl11ReleaseUpToEmE3$_0EEEET_SQ_SQ_T0_.exit.i", %bb.t
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %i.eo = load ptr, ptr %3, align 8               ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.eo, %i.eq
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fa, %_ZSt8_DestroyISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i ], [ %i.eo, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit ] ; 8 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.es, ptr %i.a, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  %.not.i.i.i.i.i.i.i.i2 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i.i.i.i2, label %bb.v, label %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i: ; preds = %bb.u
  %i.ev = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  store ptr null, ptr %i.er, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i3 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i.i.i.i.i.i3, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ez = call noundef zeroext i1 %i.ey(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i, i32 noundef 3) #20, !inline_history !19 ; 0 uses
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i: ; preds = %bb.x, %bb.w
  %i.fa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fa, %i.eq
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit
  %i.fb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i ], [ %i.eo, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fb to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fg) #22
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK2v88internal10MemoryPool17LargePagePoolImpl16ComputeTotalSizeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %.lr.ph ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.05.08 = phi ptr [ %i.k, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, %.09                       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10MemoryPool17LargePagePoolImpl8TearDownEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10MemoryPoolD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvT_SC_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20, !inline_history !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  store ptr null, ptr %i.g, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
end_hunk_0
begin_hunk_1_@_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE8PutLocalEPNS0_7IsolateES9_:bb.a
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  %i.c = load i64, ptr %0, align 8, !noalias !60  ; 4 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !67
  %.not.i.i.i.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !67 ; 2 uses
  %i.h = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, align 8, !noalias !67
  %i.i = icmp eq ptr %i.h, %1
  br i1 %i.i, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !67
  store ptr %0, ptr %3, align 8, !noalias !67
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.j, align 8, !noalias !67
  %i.k = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPN2v88internal7IsolateEvE4HashES8_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #20, !noalias !67
  %i.l = extractvalue { ptr, ptr } %i.k, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !67
  %.pre = load ptr, ptr %i.a, align 8, !noalias !70
  br label %bb.f

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !71 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !71
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !71
  %sext.i = shl i64 %i.o, 48
  %i.p = ashr exact i64 %sext.i, 48
  %i.q = ptrtoint ptr %1 to i64
  %i.r = xor i64 %i.q, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.s = zext i64 %i.r to i128
  %i.t = mul nuw nsw i128 %i.s, 8779197792823184629 ; 2 uses
  %i.u = lshr i128 %i.t, 64
  %i.v = xor i128 %i.u, %i.t
  %i.w = trunc i128 %i.v to i64
  %i.x = xor i64 %i.p, %i.w                       ; 3 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.aa, align 8, !noalias !71 ; 2 uses
  %i.ab = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i
  %.pn.i = phi i64 [ %i.x, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i ], [ %i.au, %bb.e ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i.i.i ], [ %i.at, %bb.e ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.c             ; 5 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ad, i32 0, i32 3, i32 1), !noalias !71
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.af = load <16 x i8>, ptr %i.ae, align 1, !noalias !71 ; 2 uses
  %i.ag = icmp eq <16 x i8> %i.ac, %i.af
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.ah, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.aq, %.critedge.i ], [ %i.ah, %bb.d ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0.i, %i.aj
  %i.al = and i64 %i.ak, %i.c
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !noalias !71
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit, label %.critedge.i, !prof !21

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ap = add i16 %.sroa.035.065.i, -1
  %i.aq = and i16 %i.ap, %.sroa.035.065.i         ; 2 uses
  %.not.i2 = icmp eq i16 %i.aq, 0
  br i1 %.not.i2, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.d
  %i.ar = icmp eq <16 x i8> %i.af, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.as, 0
  br i1 %.not57.i, label %bb.e, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i, !prof !26

bb.e:                                             ; preds = %.critedge19.i
  %i.at = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.au = add i64 %i.at, %.sroa.7.0.i
  br label %bb.d

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i: ; preds = %.critedge19.i
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.c
  %i.az = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.x, i64 %i.ay, i64 %.sroa.15.0.i) #20, !noalias !71
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.aa, align 8, !noalias !71
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.az
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i
  %i.bb = phi ptr [ %.pre, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i ], [ %1, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i ]
  %.sroa.3.0 = phi ptr [ %i.l, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.thread.i.i.i ], [ %i.ba, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE22find_or_prepare_insertIS6_EESM_INSQ_8iteratorEbERKT_.exit.i._crit_edge.i.i ] ; 3 uses
  store ptr %i.bb, ptr %.sroa.3.0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit: ; preds = %.lr.ph.i, %bb.c, %bb.f
  %.sroa.3.1 = phi ptr [ %.sroa.3.0, %bb.f ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %bb.c ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.3.1, i64 16 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.3.1, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, i8 0, i64 24, i1 false)
  %i.bj = load ptr, ptr %i.bi, align 8
  store ptr %i.bj, ptr %i.bh, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt12construct_atISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 16, i1 false)
  %i.bn = load ptr, ptr %i.bk, align 8
  store ptr %i.bn, ptr %i.bm, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i

_ZSt12construct_atISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i: ; preds = %bb.h, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8
  store i64 %i.bq, ptr %i.bo, align 8
  store ptr null, ptr %i.bp, align 8
  %i.br = load ptr, ptr %i.bd, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store ptr %i.bs, ptr %i.bd, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

bb.i:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEEixIS6_SH_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISO_EPT_RSU_EclL_ZSt7declvalIRSO_EDTcl9__declvalISU_ELi0EEEvEEEEERKSU_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.3.1, i64 8
  call void @_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr %i.be, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZSt12construct_atISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit.i, %bb.i
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal10MemoryPool6RemoveEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.547", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE3GetEPNS0_7IsolateE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.547") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.d, i8 0, i64 9, i1 false)
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef 3) #20, !inline_history !74 ; 0 uses
  br label %_ZNSt14_Optional_baseISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.05 = phi ptr [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %.05
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10MemoryPool8PoolImplISt10unique_ptrINS0_19MutablePageMetadataESt8functionIFvPS4_EEEE3GetEPNS0_7IsolateE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.547") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %.sroa.0105 = alloca %"struct.std::_Tuple_impl.539", align 8 ; 5 uses
  %.sroa.0 = alloca { i64, i64 }, align 8         ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #20
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = icmp ult i64 %i.e, 2                     ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %.not.i.i.i = icmp ult i64 %i.h, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 2 uses
  %i.j = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, align 8
  %i.k = icmp eq ptr %i.j, %2
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %spec.select.i.i = select i1 %i.k, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %sext.i = shl i64 %i.n, 48
  %i.o = ashr exact i64 %sext.i, 48
  %i.p = ptrtoint ptr %2 to i64
  %i.q = xor i64 %i.p, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.r = zext i64 %i.q to i128
  %i.s = mul nuw nsw i128 %i.r, 8779197792823184629 ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = xor i128 %i.t, %i.s
  %i.v = trunc i128 %i.u to i64
  %i.w = xor i64 %i.o, %i.v                       ; 2 uses
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.z, align 8 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.w, %bb.d ], [ %i.au, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.at, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.e        ; 4 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1      ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.aq, %bb.f ], [ %i.ag, %bb.e ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.e                     ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %i.am, %2
  br i1 %i.an, label %.thread33.i.i, label %bb.f, !prof !21

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ak ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ap = add i16 %.sroa.017.047.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ar = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not44.i.i = icmp eq i16 %i.as, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i, !prof !26

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.at = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !37

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ao, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.al, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  %i.av = icmp ult i64 %i.n, 131072
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i
  %.not.i.i17 = phi i1 [ %i.av, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i ], [ true, %bb.b ], [ false, %bb.c ]
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE10find_largeIS6_EENSQ_8iteratorERKT_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.ax = extractvalue { ptr, ptr } %.pn.i, 1
  %i.ay = icmp eq ptr %i.aw, null                 ; 2 uses
  %i.az = icmp eq ptr %i.aw, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.ay, %i.az
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit
  %i.ba = load i8, ptr %i.aw, align 1
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE4findIS6_EENSQ_8iteratorERKT_.exit
  br i1 %i.az, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit, !prof !26

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.ay, label %bb.k, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 -16 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 5 uses
  %i.bl = icmp eq ptr %i.bi, %i.bk
  br i1 %i.bl, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0105)
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0105, i8 0, i64 24, i1 false)
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0105, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  br label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit

_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit: ; preds = %bb.m, %bb.n
  %i.br = getelementptr inbounds i8, ptr %i.bk, i64 -8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  store ptr null, ptr %i.br, align 8
  %i.bt = load ptr, ptr %i.bj, align 8            ; 5 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -40 ; 4 uses
  store ptr %i.bu, ptr %i.bj, align 8
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i14, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.bw, ptr %i.c, align 8
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 -24
  %i.by = load ptr, ptr %i.bx, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i, label %bb.p, label %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i: ; preds = %bb.o
  %i.bz = getelementptr inbounds i8, ptr %i.bt, i64 -16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #20, !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i, %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit
  store ptr null, ptr %i.bv, align 8
  %i.cb = getelementptr inbounds i8, ptr %i.bt, i64 -24
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = call noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i32 noundef 3) #20, !inline_history !76 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit: ; preds = %bb.q, %bb.r
  %i.ce = load ptr, ptr %i.bh, align 8
  %i.cf = load ptr, ptr %i.bj, align 8
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.s, label %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit
  %i.ch = load ptr, ptr %i.be, align 8            ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32
  store ptr %i.ci, ptr %i.be, align 8
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -24 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 -16
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.s, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.cw, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.s ] ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.co, ptr %i.b, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20, !inline_history !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  store ptr null, ptr %i.cn, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i, i32 noundef 3) #20, !inline_history !78 ; 0 uses
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i15 = icmp eq ptr %i.cw, %i.cm
  br i1 %.not.i.i.i.i.i.i15, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.cj, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i, %bb.s
  %i.cx = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i ], [ %i.ck, %bb.s ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i
  %i.cy = getelementptr inbounds i8, ptr %i.ch, i64 -8
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #22
  br label %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit

_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit: ; preds = %bb.x, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false)
  store ptr %i.bn, ptr %i.dd, align 8
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0105, i64 16, i1 false)
  store ptr %i.bp, ptr %i.de, align 8
  br label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit

_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EE8pop_backEv.exit, %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bs, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.dg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0105)
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

.critedge:                                        ; preds = %bb.l, %bb.k
  br i1 %.not.i.i17, label %.critedge13, label %bb.z, !prof !26

bb.z:                                             ; preds = %.critedge
  br i1 %i.f, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i19 = load ptr, ptr %i.dh, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit

bb.ab:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.di, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.dj, align 8 ; 2 uses
  %i.dk = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1
  %i.dl = icmp slt i8 %i.dk, -1
  br i1 %i.dl, label %.lr.ph.i.i18, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit

.lr.ph.i.i18:                                     ; preds = %bb.ab, %.lr.ph.i.i18
  %i.dm = phi ptr [ %i.dp, %.lr.ph.i.i18 ], [ %.sroa.0.0.copyload.i.i.i, %bb.ab ]
  %i.dn = phi ptr [ %i.do, %.lr.ph.i.i18 ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ab ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 32 ; 2 uses
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = icmp slt i8 %i.dq, -1
  br i1 %i.dr, label %.lr.ph.i.i18, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit, !llvm.loop !53

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit: ; preds = %.lr.ph.i.i18, %bb.ab, %bb.aa, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit
  %.sroa.038.0 = phi ptr [ %i.aw, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ab ], [ @_ZN4absl18container_internal11kSooControlE, %bb.aa ], [ %i.do, %.lr.ph.i.i18 ] ; 4 uses
  %.sroa.8.0 = phi ptr [ %i.ax, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit ], [ %.sroa.0.0.copyload.i.i.i, %bb.ab ], [ %.sroa.0.0.copyload.i.i.i.i.i.i19, %bb.aa ], [ %i.dp, %.lr.ph.i.i18 ] ; 3 uses
  %i.ds = icmp eq ptr %.sroa.038.0, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.ds, label %.critedge99, label %bb.ac

bb.ac:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit
  %i.dt = load i8, ptr %.sroa.038.0, align 1
  %i.du = icmp sgt i8 %i.dt, -1
  br i1 %i.du, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit, label %bb.ad, !prof !21

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.trap()
  unreachable

.critedge99:                                      ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5beginEv.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #20
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit: ; preds = %bb.ac
  %i.dv = load i8, ptr %.sroa.038.0, align 1
  %i.dw = icmp sgt i8 %i.dv, -1
  br i1 %i.dw, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit, label %bb.ae, !prof !21

bb.ae:                                            ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.10, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) #20
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit: ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorEST_.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 16 ; 4 uses
  %i.ea = load ptr, ptr %i.dz, align 8            ; 5 uses
  %i.eb = icmp eq ptr %i.dy, %i.ea
  br i1 %i.eb, label %.critedge13, label %bb.af

bb.af:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i8 0, i64 16, i1 false)
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 -24 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8            ; 3 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i21 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i21, label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit22, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eg = getelementptr inbounds i8, ptr %i.ea, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  br label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit22

_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit22: ; preds = %bb.af, %bb.ag
  %i.eh = getelementptr inbounds i8, ptr %i.ea, i64 -8 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8
  store ptr null, ptr %i.eh, align 8
  %i.ej = load ptr, ptr %i.dz, align 8            ; 5 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -40 ; 4 uses
  store ptr %i.ek, ptr %i.dz, align 8
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 -8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i23, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.em, ptr %i.a, align 8
  %i.en = getelementptr inbounds i8, ptr %i.ej, i64 -24
  %i.eo = load ptr, ptr %i.en, align 8
  %.not.i.i.i.i.i24 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i24, label %bb.ai, label %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i25

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i25: ; preds = %bb.ah
  %i.ep = getelementptr inbounds i8, ptr %i.ej, i64 -16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(40) %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20, !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i25, %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEEC2EOS7_.exit22
  store ptr null, ptr %i.el, align 8
  %i.er = getelementptr inbounds i8, ptr %i.ej, i64 -24
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %.not.i.i.i.i.i.i26 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i.i26, label %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit27, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = call noundef zeroext i1 %i.es(ptr noundef nonnull align 8 dereferenceable(40) %i.ek, ptr noundef nonnull align 8 dereferenceable(40) %i.ek, i32 noundef 3) #20, !inline_history !76 ; 0 uses
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit27

_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit27: ; preds = %bb.aj, %bb.ak
  %i.eu = load ptr, ptr %i.dx, align 8
  %i.ev = load ptr, ptr %i.dz, align 8
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit27
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE5eraseENSQ_8iteratorE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull %.sroa.038.0, ptr nonnull %.sroa.8.0)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEESaIS8_EE8pop_backEv.exit27
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false)
  store ptr %i.ed, ptr %i.ex, align 8
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i28, label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit34, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store ptr %i.ef, ptr %i.ey, align 8
  br label %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit34

_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit34: ; preds = %bb.am, %bb.an
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ei, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.fa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

.critedge13:                                      ; preds = %.critedge, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal7IsolateESt6vectorISt10unique_ptrINS4_19MutablePageMetadataESt8functionIFvPS9_EEESaISE_EEEENS0_6HashEqIS6_vE4HashENSJ_2EqESaISt4pairIKS6_SG_EEE8iteratorptEv.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.fb, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit34, %_ZNSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS2_EEED2Ev.exit, %.critedge13
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10MemoryPool8AddLargeEPNS0_7IsolateERSt6vectorIPNS0_17LargePageMetadataESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %4 = alloca %"class.std::unique_ptr.565", align 8 ; 5 uses
  %5 = alloca %"class.v8::SourceLocation", align 8 ; 4 uses
  %6 = alloca %"class.std::unique_ptr.565", align 8 ; 5 uses
  %7 = alloca %"class.v8::base::TimeDelta", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = tail call noundef zeroext i1 @_ZN2v88internal10MemoryPool17LargePagePoolImpl3AddERSt6vectorIPNS0_17LargePageMetadataESaIS5_EEm(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.b)
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1240), align 8 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  %or.cond = and i1 %i.d, %i.f
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.g = zext nneg i32 %i.e to i64
  %i.h = mul nuw nsw i64 %i.g, 1000000
  store i64 %i.h, ptr %7, align 8
  %i.i = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23, !noalias !79 ; 6 uses
  tail call void @_ZN2v88internal14CancelableTaskC2EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef %1) #20, !noalias !79
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskE, i64 16), ptr %i.i, align 8, !noalias !79
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskE, i64 64), ptr %i.j, align 8, !noalias !79
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %1, ptr %i.k, align 8, !noalias !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %0, ptr %i.l, align 8, !noalias !79
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %i.b, ptr %i.m, align 8, !noalias !79
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1966), align 2, !range !8, !noundef !9
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 63840
  %i.q = load ptr, ptr %i.p, align 8, !noalias !82 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 63848
  %i.s = load ptr, ptr %i.r, align 8, !noalias !82 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK2v88internal7Isolate11task_runnerEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !noalias !82
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.t, align 4, !noalias !82
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !noalias !82
  br label %_ZNK2v88internal7Isolate11task_runnerEv.exit

bb.f:                                             ; preds = %bb.d
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4, !noalias !82 ; 0 uses
  br label %_ZNK2v88internal7Isolate11task_runnerEv.exit

_ZNK2v88internal7Isolate11task_runnerEv.exit:     ; preds = %bb.c, %bb.e, %bb.f
  %i.y = call noundef double @_ZNK2v84base9TimeDelta10InSecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @.constant, ptr %5, align 8
  %i.z = ptrtoint ptr %i.j to i64
  store i64 %i.z, ptr %6, align 8
  %i.aa = load ptr, ptr %i.q, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %6, double noundef %i.y, ptr noundef nonnull align 8 dereferenceable(8) %5) #20, !inline_history !85
  %i.ad = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i: ; preds = %_ZNK2v88internal7Isolate11task_runnerEv.exit
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #20, !inline_history !86
  br label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i, %_ZNK2v88internal7Isolate11task_runnerEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ah, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.s, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !87
  %i.ap = load ptr, ptr %i.s, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20, !inline_history !87
  br label %_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.as = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.ak, %bb.j ], [ %i.au, %bb.k ]
  %i.av = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.av, label %bb.l, label %_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit, !prof !26

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20
  br label %_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit

bb.m:                                             ; preds = %bb.b
  %i.aw = tail call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #20 ; 2 uses
  %i.ax = call noundef double @_ZNK2v84base9TimeDelta10InSecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.constant.5, ptr %3, align 8
  %i.ay = ptrtoint ptr %i.j to i64
  store i64 %i.ay, ptr %4, align 8
  %i.az = load ptr, ptr %i.aw, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 152
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef zeroext 0, ptr noundef nonnull %4, double noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %3) #20, !inline_history !88
  %i.bc = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i8, label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit12, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i9

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i9: ; preds = %bb.m
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bc) #20, !inline_history !89
  br label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit12

_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit12: ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i9, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit12, %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal10MemoryPool28ReleasePooledLargeChunksTaskESt14default_deleteIS3_EED2Ev.exit, %bb.a
  ret void
}

declare noundef double @_ZNK2v84base9TimeDelta10InSecondsFEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal10MemoryPool11RemoveLargeEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %_ZN2v88internal10MemoryPool17LargePagePoolImpl6RemoveEPNS0_7IsolateEm.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.d
  %i.g = icmp eq ptr %.sroa.014.1.i, %i.d
  br i1 %i.g, label %_ZN2v88internal10MemoryPool17LargePagePoolImpl6RemoveEPNS0_7IsolateEm.exit, label %bb.e

end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE17_M_realloc_insertIJRKmS9_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNKSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load i64, ptr %2, align 8
  store i64 %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.u, align 8
  store ptr %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt12construct_atISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEJRKmS9_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 16, i1 false)
  store ptr %i.x, ptr %i.y, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEJRKmS9_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit

_ZSt12construct_atISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEJRKmS9_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit: ; preds = %_ZNKSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  store i64 %i.ab, ptr %i.z, align 8
  store ptr null, ptr %i.aa, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEJRKmS9_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit, %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEJRKmS9_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEJRKmS9_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.ac = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !109, !noalias !106
  store i64 %i.ac, ptr %.012.i.i.i, align 8, !alias.scope !106, !noalias !109
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i8 0, i64 24, i1 false), !alias.scope !106, !noalias !109
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !109, !noalias !106
  store ptr %i.ag, ptr %i.ae, align 8, !alias.scope !106, !noalias !109
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !109, !noalias !106 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 16, i1 false), !alias.scope !111
  store ptr %i.ai, ptr %i.ak, align 8, !alias.scope !106, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !109, !noalias !106
  br label %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !109, !noalias !106
  store i64 %i.an, ptr %i.al, align 8, !alias.scope !106, !noalias !109
  store ptr null, ptr %i.am, align 8, !alias.scope !109, !noalias !106
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, label %.lr.ph.i.i.i, !llvm.loop !112

_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEJRKmS9_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEJRKmS9_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSE_DpOSF_.exit ], [ %i.ap, %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit25, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit, %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.aq, %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 6 uses
  %.0911.i.i.i20 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.ar = load i64, ptr %.0911.i.i.i20, align 8, !alias.scope !116, !noalias !113
  store i64 %i.ar, ptr %.012.i.i.i19, align 8, !alias.scope !113, !noalias !116
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, i8 0, i64 24, i1 false), !alias.scope !113, !noalias !116
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !116, !noalias !113
  store ptr %i.av, ptr %i.at, align 8, !alias.scope !113, !noalias !116
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !116, !noalias !113 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i21, label %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i22, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i18
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 16, i1 false), !alias.scope !118
  store ptr %i.ax, ptr %i.az, align 8, !alias.scope !113, !noalias !116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false), !alias.scope !116, !noalias !113
  br label %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %bb.e, %.lr.ph.i.i.i18
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 40 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !116, !noalias !113
  store i64 %i.bc, ptr %i.ba, align 8, !alias.scope !113, !noalias !116
  store ptr null, ptr %i.bb, align 8, !alias.scope !116, !noalias !113
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 48 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 48 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit25, label %.lr.ph.i.i.i18, !llvm.loop !112

_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit25: ; preds = %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.aq, %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit ], [ %i.be, %_ZSt19__relocate_object_aISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESA_SaISA_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE13_M_deallocateEPSA_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit25
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #22
  br label %_ZNSt12_Vector_baseISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE13_M_deallocateEPSA_m.exit

_ZNSt12_Vector_baseISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE13_M_deallocateEPSA_m.exit: ; preds = %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit25, %bb.f
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bj, ptr %i.bf, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvPN2v88internal17LargePageMetadataEEZZNS1_10MemoryPool17LargePagePoolImpl3AddERSt6vectorIS3_SaIS3_EEmENK3$_0clES3_EUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_"(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8
  tail call void @_ZN2v88internal15MemoryAllocator17DeleteMemoryChunkEPNS0_19MutablePageMetadataE(ptr noundef %.val) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPN2v88internal17LargePageMetadataEEZZNS1_10MemoryPool17LargePagePoolImpl3AddERSt6vectorIS3_SaIS3_EEmENK3$_0clES3_EUlS3_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZZN2v88internal10MemoryPool17LargePagePoolImpl3AddERSt6vectorIPNS2_17LargePageMetadataESaIS7_EEmENK3$_0clES7_EUlS7_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit" [
    i32 1, label %"_ZNSt14_Function_base13_Base_managerIZZN2v88internal10MemoryPool17LargePagePoolImpl3AddERSt6vectorIPNS2_17LargePageMetadataESaIS7_EEmENK3$_0clES7_EUlS7_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit.sink.split"
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZZN2v88internal10MemoryPool17LargePagePoolImpl3AddERSt6vectorIPNS2_17LargePageMetadataESaIS7_EEmENK3$_0clES7_EUlS7_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZZN2v88internal10MemoryPool17LargePagePoolImpl3AddERSt6vectorIPNS2_17LargePageMetadataESaIS7_EEmENK3$_0clES7_EUlS7_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZZN2v88internal10MemoryPool17LargePagePoolImpl3AddERSt6vectorIPNS2_17LargePageMetadataESaIS7_EEmENK3$_0clES7_EUlS7_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZZN2v88internal10MemoryPool17LargePagePoolImpl3AddERSt6vectorIPNS2_17LargePageMetadataESaIS7_EEmENK3$_0clES7_EUlS7_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZZN2v88internal10MemoryPool17LargePagePoolImpl3AddERSt6vectorIPNS2_17LargePageMetadataESaIS7_EEmENK3$_0clES7_EUlS7_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

declare void @_ZN2v88internal15MemoryAllocator17DeleteMemoryChunkEPNS0_19MutablePageMetadataE(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPSA_SC_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.k = udiv exact i64 %i.i, 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.ag, %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i ] ; 2 uses
  %.0812.i.i.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.i.i ], [ %i.af, %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i ] ; 7 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i ], [ %i.ae, %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i ] ; 5 uses
  %i.m = load i64, ptr %.0911.i.i.i.i.i, align 8
  store i64 %i.m, ptr %.0812.i.i.i.i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  store ptr null, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20, !inline_history !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i

_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 3 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.x, align 8
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24 ; 3 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.aa, align 8            ; 2 uses
  store <2 x ptr> %i.ab, ptr %i.l, align 8
  store <2 x ptr> %i.y, ptr %i.aa, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #20, !inline_history !120 ; 0 uses
  br label %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i

_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 48
  %i.ag = add nsw i64 %.013.i.i.i.i.i, -1
  %i.ah = icmp sgt i64 %.013.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.c, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit.loopexit, !llvm.loop !121

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit.loopexit: ; preds = %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit.loopexit, %bb.b, %bb.a
  %i.ai = phi ptr [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit.loopexit ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 6 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -48
  store ptr %i.aj, ptr %i.d, align 8
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -40 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.am, ptr %i.a, align 8
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.ao = load ptr, ptr %i.an, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 -16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20, !inline_history !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit
  store ptr null, ptr %i.al, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt10destroy_atISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = call noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i32 noundef 3) #20, !inline_history !123 ; 0 uses
  br label %_ZSt10destroy_atISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit

_ZSt10destroy_atISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit: ; preds = %bb.j, %bb.k
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i8 0, i64 24, i1 false)
  %i.t = load ptr, ptr %i.s, align 8
  store ptr %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i, label %_ZSt12construct_atISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE12_M_check_lenEmPKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 16, i1 false)
  store ptr %i.v, ptr %i.w, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit

_ZSt12construct_atISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  store i64 %i.z, ptr %i.x, align 8
  store ptr null, ptr %i.y, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit, %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !124, !noalias !127
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !127, !noalias !124
  store ptr %i.ac, ptr %i.aa, align 8, !alias.scope !124, !noalias !127
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !127, !noalias !124 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 16, i1 false), !alias.scope !129
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !124, !noalias !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !alias.scope !127, !noalias !124
  br label %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !127, !noalias !124
  store i64 %i.ai, ptr %i.ag, align 8, !alias.scope !124, !noalias !127
  store ptr null, ptr %i.ah, align 8, !alias.scope !127, !noalias !124
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i, !llvm.loop !130

_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEJS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSA_DpOSB_.exit ], [ %i.ak, %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i18 = phi ptr [ %i.aw, %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.al, %_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.av, %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !131, !noalias !134
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !134, !noalias !131
  store ptr %i.ao, ptr %i.am, align 8, !alias.scope !131, !noalias !134
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !134, !noalias !131 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i19, i64 16, i1 false), !alias.scope !136
  store ptr %i.aq, ptr %i.ar, align 8, !alias.scope !131, !noalias !134
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !134, !noalias !131
  br label %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21

_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %bb.e, %.lr.ph.i.i.i17
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !134, !noalias !131
  store i64 %i.au, ptr %i.as, align 8, !alias.scope !131, !noalias !134
  store ptr null, ptr %i.at, align 8, !alias.scope !134, !noalias !131
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24, label %.lr.ph.i.i.i17, !llvm.loop !130

_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24: ; preds = %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ], [ %i.aw, %_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEES8_SaIS8_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #22
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit24, %bb.f
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bb, ptr %i.ax, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPSA_SC_EESG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp eq ptr %1, %2
  br i1 %i.c, label %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE15_M_erase_at_endEPSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp eq ptr %2, %i.e
  br i1 %i.f, label %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit_crit_edge, label %bb.c

._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit_crit_edge: ; preds = %bb.b
  %.pre12 = ptrtoint ptr %2 to i64                ; 2 uses
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c
  %i.k = udiv exact i64 %i.i, 48
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.ag, %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i ] ; 2 uses
  %.0812.i.i.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.i.i ], [ %i.af, %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i ] ; 7 uses
  %.0911.i.i.i.i.i = phi ptr [ %2, %.lr.ph.i.i.i.i.i ], [ %i.ae, %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i ] ; 5 uses
  %i.m = load i64, ptr %.0911.i.i.i.i.i, align 8
  store i64 %i.m, ptr %.0812.i.i.i.i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  store ptr null, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #20, !inline_history !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i

_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 3 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8
  %i.z = load ptr, ptr %i.x, align 8
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %_ZNSt15__uniq_ptr_implIN2v88internal17LargePageMetadataESt8functionIFvPS2_EEE5resetES4_.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.aa = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 24 ; 3 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.aa, align 8            ; 2 uses
  store <2 x ptr> %i.ab, ptr %i.l, align 8
  store <2 x ptr> %i.y, ptr %i.aa, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ad = call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #20, !inline_history !120 ; 0 uses
  br label %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i

_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i: ; preds = %bb.h, %_ZNSt8functionIFvPN2v88internal17LargePageMetadataEEEC2EOS5_.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.0812.i.i.i.i.i, i64 48
  %i.ag = add nsw i64 %.013.i.i.i.i.i, -1
  %i.ah = icmp sgt i64 %.013.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.d, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit.loopexit, !llvm.loop !121

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit.loopexit: ; preds = %_ZNSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS3_EEEEaSEOS9_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.d, align 8             ; 2 uses
  %.pre13 = ptrtoint ptr %.pre to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit: ; preds = %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit_crit_edge, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit.loopexit, %bb.c
  %.pre-phi14 = phi i64 [ %.pre12, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit_crit_edge ], [ %.pre13, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit.loopexit ], [ %i.g, %bb.c ]
  %.pre-phi = phi i64 [ %.pre12, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit_crit_edge ], [ %i.h, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit.loopexit ], [ %i.h, %bb.c ]
  %i.ai = phi ptr [ %2, %._ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit_crit_edge ], [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit.loopexit ], [ %i.e, %bb.c ] ; 2 uses
  %i.aj = sub i64 %.pre-phi14, %.pre-phi
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj ; 3 uses
  %.not.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i, label %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE15_M_erase_at_endEPSA_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.av, %_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i ], [ %i.ak, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.an, ptr %i.a, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20, !inline_history !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal17LargePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store ptr null, ptr %i.am, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i5 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i5, label %_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(40) %i.al, i32 noundef 3) #20, !inline_history !138 ; 0 uses
  br label %_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %i.ai
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvT_SC_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvT_SC_.exit.i: ; preds = %_ZSt8_DestroyISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvPT_.exit.i.i.i
  store ptr %i.ak, ptr %i.d, align 8
  br label %_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE15_M_erase_at_endEPSA_.exit

_ZNSt6vectorISt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEESaISA_EE15_M_erase_at_endEPSA_.exit: ; preds = %_ZSt8_DestroyIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS4_EEEEEvT_SC_.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImSt10unique_ptrIN2v88internal17LargePageMetadataESt8functionIFvPS6_EEEESt6vectorISC_SaISC_EEEESH_ET0_T_SJ_SI_.exit, %bb.a
  ret ptr %1
}

; Function Attrs: nounwind
declare void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !139
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !139
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairImS_ISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS4_EEESaIS9_EEESaISC_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS5_EEESaISA_EEEEvT_SF_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS5_EEESaISA_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.y, %_ZSt8_DestroyISt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS5_EEESaISA_EEEEvPT_.exit.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt25__throw_bad_function_callv() #21
  unreachable

_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20, !inline_history !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt8functionIFvPN2v88internal19MutablePageMetadataEEEclES3_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  store ptr null, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i.i.i.i.i.i, i32 noundef 3) #20, !inline_history !141 ; 0 uses
  br label %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.e, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i
  %i.s = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exitthread-pre-split.i.i.i.i.i.i ], [ %i.f, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairImSt6vectorISt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS5_EEESaISA_EEEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal19MutablePageMetadataESt8functionIFvPS3_EEEEvT_SA_.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
end_hunk_2
