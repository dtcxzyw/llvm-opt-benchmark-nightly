inline.NumInlined: 618
inline.NumDeleted: 303
begin_hunk_0
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 2147483647
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZN4absl12lts_2024011612log_internal21RegisterAndInitializeEPNS1_8VLogSiteE(ptr noundef nonnull %0)
  %i.b = icmp sge i32 %i.a, %2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2024011612log_internal21RegisterAndInitializeEPNS1_8VLogSiteE(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_114site_list_headE seq_cst, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = cmpxchg ptr %i.b, ptr null, ptr %i.a seq_cst seq_cst, align 8
  %i.d = extractvalue { ptr, i1 } %i.c, 1
  br i1 %i.d, label %_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.preheader, label %_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.thread

_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.preheader: ; preds = %bb.a
  %i.e = cmpxchg weak ptr @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_114site_list_headE, ptr %i.a, ptr %0 seq_cst seq_cst, align 8 ; 2 uses
  %i.f = extractvalue { ptr, i1 } %i.e, 1
  br i1 %i.f, label %_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.thread, label %_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit

_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit: ; preds = %_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.preheader, %_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit
  %i.g = phi { ptr, i1 } [ %i.i, %_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit ], [ %i.e, %_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.preheader ]
  %i.h = extractvalue { ptr, i1 } %i.g, 0         ; 2 uses
  store atomic ptr %i.h, ptr %i.b seq_cst, align 8
  %i.i = cmpxchg weak ptr @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_114site_list_headE, ptr %i.h, ptr %0 seq_cst seq_cst, align 8 ; 2 uses
  %i.j = extractvalue { ptr, i1 } %i.i, 1
  br i1 %i.j, label %_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.thread, label %_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit, !llvm.loop !8

_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.thread: ; preds = %_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit, %_ZNSt6atomicIPN4absl12lts_2024011612log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.preheader, %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #19
  %i.m = tail call noundef i32 @_ZN4absl12lts_2024011612log_internal9VLogLevelESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.l, ptr nonnull %i.k) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = cmpxchg ptr %i.n, i32 2147483647, i32 %i.m seq_cst seq_cst, align 4 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  %i.q = extractvalue { i32, i1 } %i.o, 0
  %.0 = select i1 %i.p, i32 %i.m, i32 %i.q
  ret i32 %.0
}

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal8VLogSite14SlowIsEnabled0Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef 0)
  ret i1 %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal8VLogSite14SlowIsEnabled1Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef 1)
  ret i1 %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef 2)
  ret i1 %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal8VLogSite14SlowIsEnabled3Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef 3)
  ret i1 %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal8VLogSite14SlowIsEnabled4Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef 4)
  ret i1 %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal8VLogSite14SlowIsEnabled5Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef 5)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2024011612log_internal9VLogLevelESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::base_internal::SpinLockHolder", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_15mutexE, ptr %2, align 8, !tbaa !19
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_15mutexE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2024011613base_internal8SpinLock11TryLockImplEv.exit.i.i, label %_ZN4absl12lts_2024011613base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2024011613base_internal8SpinLock11TryLockImplEv.exit.i.i: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_15mutexE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.f, label %_ZN4absl12lts_2024011613base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit, label %_ZN4absl12lts_2024011613base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2024011613base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_2024011613base_internal8SpinLock11TryLockImplEv.exit.i.i, %bb.a
  tail call void @_ZN4absl12lts_2024011613base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_15mutexE) #20
  br label %_ZN4absl12lts_2024011613base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit

_ZN4absl12lts_2024011613base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit: ; preds = %_ZN4absl12lts_2024011613base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZN4absl12lts_2024011613base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  %i.g = load ptr, ptr @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !22
  %i.h = load i32, ptr @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_18global_vE, align 4, !tbaa !3
  %i.i = invoke fastcc noundef i32 @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_19VLogLevelESt17basic_string_viewIcSt11char_traitsIcEEPKSt6vectorINS2_11VModuleInfoESaIS8_EEi(i64 %0, ptr %1, ptr noundef %i.g, i32 noundef %i.h)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN4absl12lts_2024011613base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !19     ; 3 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 4
  %i.l = and i32 %i.k, 2
  %i.m = atomicrmw xchg ptr %i.j, i32 %i.l release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.m, 8
  br i1 %.not4.i.i, label %_ZN4absl12lts_2024011613base_internal14SpinLockHolderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2024011613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.j, i32 noundef %i.m) #20
          to label %_ZN4absl12lts_2024011613base_internal14SpinLockHolderD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

_ZN4absl12lts_2024011613base_internal14SpinLockHolderD2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %i.i

bb.e:                                             ; preds = %_ZN4absl12lts_2024011613base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011613base_internal14SpinLockHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_19VLogLevelESt17basic_string_viewIcSt11char_traitsIcEEPKSt6vectorINS2_11VModuleInfoESaIS8_EEi(i64 %0, ptr %1, ptr noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val47 = load ptr, ptr %2, align 8, !tbaa !24  ; 2 uses
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val48 = load ptr, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp eq ptr %.val47, %.val48
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %.lr.ph.preheader, label %.preheader.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %.not13.i = icmp eq i64 %i.c, 0
  br i1 %.not13.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread, label %.preheader.preheader, !llvm.loop !26

.preheader.preheader:                             ; preds = %bb.c, %.preheader
  %.1.i107 = phi i64 [ %i.c, %.preheader ], [ %0, %bb.c ] ; 3 uses
  %i.c = add i64 %.1.i107, -1                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !27
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit, label %.preheader, !llvm.loop !26

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit: ; preds = %.preheader.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i107
  %i.h = sub i64 %0, %.1.i107
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread: ; preds = %.preheader, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit
  %.sroa.064.0 = phi i64 [ %i.h, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit ], [ %0, %.preheader ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %i.g, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit ], [ %1, %.preheader ] ; 6 uses
  %.not78 = icmp eq i64 %.sroa.064.0, 0
  br i1 %.not78, label %.lr.ph.preheader, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread
  %i.i = tail call ptr @memchr(ptr noundef %.sroa.7.0, i32 noundef 46, i64 noundef %.sroa.064.0) #19 ; 2 uses
  %.not.i51 = icmp eq ptr %i.i, null
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.sroa.7.0 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %.not42 = icmp eq i64 %i.l, -1
  %or.cond = select i1 %.not.i51, i1 true, i1 %.not42 ; 2 uses
  %.neg = sub i64 %0, %.sroa.064.0
  %i.m = add i64 %.neg, %i.l
  %.sroa.057.0 = select i1 %or.cond, i64 %.sroa.064.0, i64 %i.l ; 4 uses
  %.sroa.061.0 = select i1 %or.cond, i64 %0, i64 %i.m ; 3 uses
  %.not.i.i = icmp ult i64 %.sroa.057.0, 4
  br i1 %.not.i.i, label %.lr.ph.preheader, label %_ZN4absl12lts_202401168EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_202401168EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.n = add i64 %.sroa.057.0, -4                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 %i.n
  %i.p = load i32, ptr %i.o, align 1
  %i.q = icmp ne i32 %i.p, 1819175213
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0                      ; 2 uses
  %i.t = add i64 %.sroa.061.0, -4
  %spec.select79 = select i1 %i.s, i64 %i.n, i64 %.sroa.057.0
  %spec.select80 = select i1 %i.s, i64 %i.t, i64 %.sroa.061.0
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZN4absl12lts_202401168EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %.sroa.7.09499 = phi ptr [ %.sroa.7.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %.sroa.7.0, %_ZN4absl12lts_202401168EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ %.sroa.7.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread ], [ %1, %bb.c ]
  %.sroa.057.173 = phi i64 [ %.sroa.057.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %spec.select79, %_ZN4absl12lts_202401168EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread ], [ 0, %bb.c ]
  %.sroa.061.1 = phi i64 [ %.sroa.061.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %spec.select80, %_ZN4absl12lts_202401168EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ %0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread ], [ 0, %bb.c ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.sroa.054.084 = phi ptr [ %i.ac, %bb.f ], [ %.val47, %.lr.ph.preheader ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.054.084, i64 32
  %i.v = load i8, ptr %i.u, align 8, !tbaa !28, !range !34, !noundef !35
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = load ptr, ptr %.sroa.054.084, align 8, !tbaa !36 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.054.084, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !37   ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.aa = tail call noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %i.z, ptr %i.x, i64 %.sroa.061.1, ptr %1)
  br i1 %i.aa, label %.loopexit.sink.split, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ab = tail call noundef zeroext i1 @_ZN4absl12lts_2024011612log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %i.z, ptr %i.x, i64 %.sroa.057.173, ptr %.sroa.7.09499)
  br i1 %i.ab, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.054.084, i64 40 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %.val48
  br i1 %i.ad, label %.loopexit, label %.lr.ph

.loopexit.sink.split:                             ; preds = %bb.e, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.054.084, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !38 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -32768
  %.43 = select i1 %i.ag, i32 %3, i32 %i.af
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.loopexit.sink.split, %bb.a, %bb.b
  %.4 = phi i32 [ %3, %bb.a ], [ %3, %bb.b ], [ %.43, %.loopexit.sink.split ], [ %3, %bb.f ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2024011613base_internal14SpinLockHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = and i32 %i.b, 2
  %i.d = atomicrmw xchg ptr %i.a, i32 %i.c release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.d, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2024011613base_internal8SpinLock6UnlockEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2024011613base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.d) #20
          to label %_ZN4absl12lts_2024011613base_internal8SpinLock6UnlockEv.exit unwind label %bb.c

_ZN4absl12lts_2024011613base_internal8SpinLock6UnlockEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011612log_internal15UpdateVLogSitesEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::vector", align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %i.a = load ptr, ptr @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !22 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %._ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge

._ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge: ; preds = %bb.a
  %.val10.i.pre = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr @_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !22
  br label %_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit

_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit: ; preds = %._ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge, %bb.b
  %.val.i = phi ptr [ null, %bb.b ], [ %.val10.i.pre, %._ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge ] ; 5 uses
  %i.c = phi ptr [ %i.b, %bb.b ], [ %i.a, %._ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.val11.i = load ptr, ptr %i.d, align 8, !tbaa !41 ; 2 uses
  %i.e = ptrtoint ptr %.val11.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %.not.i.i.i.i = icmp eq ptr %.val11.i, %.val.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit
  %i.i = sdiv exact i64 %i.g, 40
  %i.j = icmp ugt i64 %i.i, 230584300921369395
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i, !prof !7

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #22
  %.val9.i.pre = load ptr, ptr %i.d, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i, %_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit
  %.val9.i = phi ptr [ %.val.i, %_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit ], [ %.val9.i.pre, %_ZNSt15__new_allocatorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %_ZN4absl12lts_2024011612log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit ], [ %i.k, %_ZNSt15__new_allocatorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i ] ; 11 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !42
  %i.p = icmp eq ptr %.val.i, %.val9.i
  br i1 %i.p, label %_ZNSt6vectorIN4absl12lts_2024011612log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.i
  %.019.i.i.i.i.i = phi ptr [ %i.ah, %bb.i ], [ %i.l, %bb.d ] ; 7 uses
  %.sroa.012.018.i.i.i.i.i = phi ptr [ %i.ag, %bb.i ], [ %.val.i, %bb.d ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.q, ptr %.019.i.i.i.i.i, align 8, !tbaa !43
  %i.r = load ptr, ptr %.sroa.012.018.i.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.018.i.i.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !37   ; 8 uses
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %bb.e, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = icmp slt i64 %i.t, 0
  br i1 %i.v, label %.noexc.i.i.i.i.i.i.i.i, label %bb.f

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #23
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i.i.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.w = add nuw i64 %i.t, 1                      ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.noexc6.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i, !prof !7

.noexc6.i.i.i.i.i.i.i.i:                          ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #23
          to label %.noexc10.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i

.noexc10.i.i.i.i.i:                               ; preds = %.noexc6.i.i.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22
          to label %.noexc11.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i ; 2 uses

.noexc11.i.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.y, ptr %.019.i.i.i.i.i, align 8, !tbaa !36
  store i64 %i.t, ptr %i.q, align 8, !tbaa !27
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc11.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.z = phi ptr [ %i.y, %.noexc11.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i ] ; 3 uses
  switch i64 %i.t, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !27
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !27
  br label %bb.i
end_hunk_0
