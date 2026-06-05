inline.NumInlined: 626
inline.NumDeleted: 299
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::atomic.0" = type { %"struct.std::__atomic_base.1" }
%"struct.std::__atomic_base.1" = type { ptr }
%"class.absl::lts_20250512::NoDestructor" = type { %"class.absl::lts_20250512::NoDestructor<absl::lts_20250512::Mutex>::PlacementImpl" }
%"class.absl::lts_20250512::NoDestructor<absl::lts_20250512::Mutex>::PlacementImpl" = type { [8 x i8] }
%"class.absl::lts_20250512::base_internal::SpinLockHolder" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<absl::lts_20250512::log_internal::(anonymous namespace)::VModuleInfo, std::allocator<absl::lts_20250512::log_internal::(anonymous namespace)::VModuleInfo>>::_Vector_impl" }
%"struct.std::_Vector_base<absl::lts_20250512::log_internal::(anonymous namespace)::VModuleInfo, std::allocator<absl::lts_20250512::log_internal::(anonymous namespace)::VModuleInfo>>::_Vector_impl" = type { %"struct.std::_Vector_base<absl::lts_20250512::log_internal::(anonymous namespace)::VModuleInfo, std::allocator<absl::lts_20250512::log_internal::(anonymous namespace)::VModuleInfo>>::_Vector_impl_data" }
%"struct.std::_Vector_base<absl::lts_20250512::log_internal::(anonymous namespace)::VModuleInfo, std::allocator<absl::lts_20250512::log_internal::(anonymous namespace)::VModuleInfo>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.absl::lts_20250512::strings_internal::Splitter" = type <{ %"class.std::basic_string_view", %"class.absl::lts_20250512::ByChar", [7 x i8] }>
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20250512::ByChar" = type { i8 }
%"class.absl::lts_20250512::strings_internal::SplitIterator" = type <{ i64, i32, [4 x i8], %"class.std::basic_string_view", ptr, %"class.absl::lts_20250512::ByChar", [7 x i8] }>
%"struct.std::vector<absl::lts_20250512::log_internal::(anonymous namespace)::VModuleInfo>::_Temporary_value" = type { ptr, %"union.std::vector<absl::lts_20250512::log_internal::(anonymous namespace)::VModuleInfo>::_Temporary_value::_Storage" }
%"union.std::vector<absl::lts_20250512::log_internal::(anonymous namespace)::VModuleInfo>::_Temporary_value::_Storage" = type { %"struct.absl::lts_20250512::log_internal::(anonymous namespace)::VModuleInfo" }
%"struct.absl::lts_20250512::log_internal::(anonymous namespace)::VModuleInfo" = type { %"class.std::__cxx11::basic_string", i8, i32 }

$_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorISt8functionIFvvEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112vmodule_infoE = internal unnamed_addr global ptr null, align 8
@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_18global_vE = internal unnamed_addr global i32 0, align 4
@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_114site_list_headE = internal global %"struct.std::atomic.0" zeroinitializer, align 8
@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116update_callbacksE = internal unnamed_addr global ptr null, align 8
@_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE = internal global { { i32 } } zeroinitializer, align 4
@_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex = internal global %"class.absl::lts_20250512::NoDestructor" zeroinitializer, align 8
@_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 2147483647
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZN4absl12lts_2025051212log_internal21RegisterAndInitializeEPNS1_8VLogSiteE(ptr noundef nonnull %0)
  %i.b = icmp sge i32 %i.a, %2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2025051212log_internal21RegisterAndInitializeEPNS1_8VLogSiteE(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_114site_list_headE seq_cst, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = cmpxchg ptr %i.b, ptr null, ptr %i.a seq_cst seq_cst, align 8
  %i.d = extractvalue { ptr, i1 } %i.c, 1
  br i1 %i.d, label %_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.preheader, label %_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.thread

_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.preheader: ; preds = %bb.a
  %i.e = cmpxchg weak ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_114site_list_headE, ptr %i.a, ptr %0 seq_cst seq_cst, align 8 ; 2 uses
  %i.f = extractvalue { ptr, i1 } %i.e, 1
  br i1 %i.f, label %_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.thread, label %_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit

_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit: ; preds = %_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.preheader, %_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit
  %i.g = phi { ptr, i1 } [ %i.i, %_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit ], [ %i.e, %_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.preheader ]
  %i.h = extractvalue { ptr, i1 } %i.g, 0         ; 2 uses
  store atomic ptr %i.h, ptr %i.b seq_cst, align 8
  %i.i = cmpxchg weak ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_114site_list_headE, ptr %i.h, ptr %0 seq_cst seq_cst, align 8 ; 2 uses
  %i.j = extractvalue { ptr, i1 } %i.i, 1
  br i1 %i.j, label %_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.thread, label %_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit, !llvm.loop !8

_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.thread: ; preds = %_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit, %_ZNSt6atomicIPN4absl12lts_2025051212log_internal8VLogSiteEE23compare_exchange_strongERS4_S4_St12memory_orderS7_.exit.preheader, %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #19
  %i.m = tail call noundef i32 @_ZN4absl12lts_2025051212log_internal9VLogLevelESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.l, ptr nonnull %i.k) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = cmpxchg ptr %i.n, i32 2147483647, i32 %i.m seq_cst seq_cst, align 4 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  %i.q = extractvalue { i32, i1 } %i.o, 0
  %.0 = select i1 %i.p, i32 %i.m, i32 %i.q
  ret i32 %.0
}

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled0Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef 0)
  ret i1 %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled1Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef 1)
  ret i1 %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled2Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef 2)
  ret i1 %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled3Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef 3)
  ret i1 %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled4Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef 4)
  ret i1 %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite14SlowIsEnabled5Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal8VLogSite13SlowIsEnabledEii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef 5)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2025051212log_internal9VLogLevelESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::base_internal::SpinLockHolder", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE, ptr %2, align 8, !tbaa !19
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE monotonic, align 4 ; 3 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i: ; preds = %bb.a
  %i.c = or disjoint i32 %i.a, 1
  %i.d = cmpxchg ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE, i32 %i.a, i32 %i.c acquire monotonic, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 0
  %.pre.i.i.i = and i32 %i.e, 1
  %i.f = icmp eq i32 %.pre.i.i.i, 0
  br i1 %i.f, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %bb.a
  tail call void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE) #20
  br label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit

_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i.i, %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i.i
  %i.g = load ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !22
  %i.h = load i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_18global_vE, align 4, !tbaa !3
  %i.i = invoke fastcc noundef i32 @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_19VLogLevelESt17basic_string_viewIcSt11char_traitsIcEEPKSt6vectorINS2_11VModuleInfoESaIS8_EEi(i64 %0, ptr %1, ptr noundef %i.g, i32 noundef %i.h)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  %i.j = load ptr, ptr %2, align 8, !tbaa !19     ; 3 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 4
  %i.l = and i32 %i.k, 2
  %i.m = atomicrmw xchg ptr %i.j, i32 %i.l release, align 4 ; 2 uses
  %.not4.i.i = icmp ult i32 %i.m, 8
  br i1 %.not4.i.i, label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.j, i32 noundef %i.m) #20
          to label %_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %i.i

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213base_internal14SpinLockHolderC2EPNS1_8SpinLockE.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_19VLogLevelESt17basic_string_viewIcSt11char_traitsIcEEPKSt6vectorINS2_11VModuleInfoESaIS8_EEi(i64 %0, ptr %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val45 = load ptr, ptr %2, align 8, !tbaa !24  ; 2 uses
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val46 = load ptr, ptr %i.a, align 8, !tbaa !24 ; 2 uses
  %i.b = icmp eq ptr %.val45, %.val46
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %.lr.ph.preheader, label %.preheader.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %.not13.i = icmp eq i64 %i.c, 0
  br i1 %.not13.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread, label %.preheader.preheader, !llvm.loop !26

.preheader.preheader:                             ; preds = %bb.c, %.preheader
  %.1.i109 = phi i64 [ %i.c, %.preheader ], [ %0, %bb.c ] ; 3 uses
  %i.c = add i64 %.1.i109, -1                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !27
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit, label %.preheader, !llvm.loop !26

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit: ; preds = %.preheader.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i109
  %i.h = sub i64 %0, %.1.i109
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread: ; preds = %.preheader, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit
  %.sroa.064.0 = phi i64 [ %i.h, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit ], [ %0, %.preheader ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %i.g, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit ], [ %1, %.preheader ] ; 6 uses
  %.not79 = icmp eq i64 %.sroa.064.0, 0
  br i1 %.not79, label %.lr.ph.preheader, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

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
  %i.n = icmp ult i64 %.sroa.057.0, 4
  br i1 %i.n, label %.lr.ph.preheader, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.o = add i64 %.sroa.057.0, -4                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 %i.o
  %i.q = load i32, ptr %i.p, align 1
  %i.r = icmp ne i32 %i.q, 1819175213
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0                      ; 2 uses
  %i.u = add i64 %.sroa.061.0, -4
  %spec.select81 = select i1 %i.t, i64 %i.o, i64 %.sroa.057.0
  %spec.select82 = select i1 %i.t, i64 %i.u, i64 %.sroa.061.0
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %.sroa.7.097101 = phi ptr [ %.sroa.7.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %.sroa.7.0, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ %.sroa.7.0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread ], [ %1, %bb.c ]
  %.sroa.057.174 = phi i64 [ %.sroa.057.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %spec.select81, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread ], [ 0, %bb.c ]
  %.sroa.061.1 = phi i64 [ %.sroa.061.0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i ], [ %spec.select82, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ], [ %0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindEcm.exit.thread ], [ 0, %bb.c ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.sroa.054.087 = phi ptr [ %i.ad, %bb.f ], [ %.val45, %.lr.ph.preheader ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.054.087, i64 32
  %i.w = load i8, ptr %i.v, align 8, !tbaa !28, !range !34, !noundef !35
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = load ptr, ptr %.sroa.054.087, align 8, !tbaa !36 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.054.087, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37  ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ab = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %i.aa, ptr %i.y, i64 %.sroa.061.1, ptr %1)
  br i1 %i.ab, label %.loopexit.sink.split, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ac = tail call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64 %i.aa, ptr %i.y, i64 %.sroa.057.174, ptr %.sroa.7.097101)
  br i1 %i.ac, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.054.087, i64 40 ; 2 uses
  %.not80 = icmp eq ptr %i.ad, %.val46
  br i1 %.not80, label %.loopexit, label %.lr.ph

.loopexit.sink.split:                             ; preds = %bb.e, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.054.087, i64 36
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
define linkonce_odr void @_ZN4absl12lts_2025051213base_internal14SpinLockHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = and i32 %i.b, 2
  %i.d = atomicrmw xchg ptr %i.a, i32 %i.c release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.d, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.d) #20
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit unwind label %bb.c

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %bb.a, %bb.b
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
define void @_ZN4absl12lts_2025051212log_internal15UpdateVLogSitesEv() local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %0 = alloca %"class.std::vector", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  %i.b = load ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !22 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge

._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge: ; preds = %bb.a
  %.val10.i.pre = load ptr, ptr %i.b, align 8, !tbaa !39
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_112vmodule_infoE, align 8, !tbaa !22
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit: ; preds = %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge, %bb.b
  %.val.i = phi ptr [ null, %bb.b ], [ %.val10.i.pre, %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge ] ; 5 uses
  %i.d = phi ptr [ %i.c, %bb.b ], [ %i.b, %._ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit_crit_edge ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.val11.i = load ptr, ptr %i.e, align 8, !tbaa !41 ; 2 uses
  %i.f = ptrtoint ptr %.val11.i to i64
  %i.g = ptrtoint ptr %.val.i to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %.val11.i, %.val.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = icmp ugt i64 %i.i, 230584300921369395
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i, !prof !7

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #22
  %.val9.i.pre = load ptr, ptr %i.e, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit
  %.val9.i = phi ptr [ %.val.i, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit ], [ %.val9.i.pre, %_ZNSt15__new_allocatorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit ], [ %i.k, %_ZNSt15__new_allocatorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEE8allocateEmPKv.exit.i.i.i.i ] ; 11 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !42
  %.not12.i.i.i.i.i = icmp eq ptr %.val.i, %.val9.i
  br i1 %.not12.i.i.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.g
  %.014.i.i.i.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.l, %bb.d ] ; 9 uses
  %.sroa.010.013.i.i.i.i.i = phi ptr [ %i.af, %bb.g ], [ %.val.i, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.014.i.i.i.i.i, align 8, !tbaa !43
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051212log_internal15UpdateVLogSitesEv:bb.a
.body.i:                                          ; preds = %bb.i
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.l

bb.l:                                             ; preds = %.body.i
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.h) #24
  br label %common.resume

common.resume:                                    ; preds = %.body.i, %bb.l, %_ZN4absl12lts_202505129MutexLockD2Ev.exit34
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN4absl12lts_202505129MutexLockD2Ev.exit34 ], [ %i.ak, %bb.l ], [ %i.ak, %.body.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit: ; preds = %bb.g, %bb.d
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %bb.d ], [ %i.ag, %bb.g ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !41
  %i.an = load i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_18global_vE, align 4, !tbaa !3
  %i.ao = load atomic i8, ptr @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.m, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit, !prof !46

bb.m:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit
  %i.aq = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex) #19
  %.not.i28 = icmp eq i32 %i.aq, 0
  br i1 %.not.i28, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex, align 8, !tbaa !47
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex) #19
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit: ; preds = %bb.n, %bb.m, %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EEC2ERKS6_.exit
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %bb.q

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.ar = load atomic i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE monotonic, align 4
  %i.as = and i32 %i.ar, 2
  %i.at = atomicrmw xchg ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE, i32 %i.as release, align 4 ; 2 uses
  %.not4.i = icmp ult i32 %i.at, 8
  br i1 %.not4.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE, i32 noundef %i.at) #20
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit unwind label %bb.r

_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit: ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit, %bb.o
  %i.au = load atomic ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_114site_list_headE seq_cst, align 8 ; 2 uses
  %.not44 = icmp eq ptr %i.au, null
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit, %bb.t
  %.01647 = phi i32 [ %.117, %bb.t ], [ 0, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit ]
  %.01846 = phi ptr [ %.119, %bb.t ], [ null, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit ] ; 2 uses
  %.02045 = phi ptr [ %i.bd, %bb.t ], [ %i.au, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit ] ; 3 uses
  %i.av = load ptr, ptr %.02045, align 8, !tbaa !10 ; 4 uses
  %.not24 = icmp eq ptr %i.av, %.01846
  br i1 %.not24, label %bb.t, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.aw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.av) #19
  %i.ax = invoke fastcc noundef i32 @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_19VLogLevelESt17basic_string_viewIcSt11char_traitsIcEEPKSt6vectorINS2_11VModuleInfoESaIS8_EEi(i64 %i.aw, ptr nonnull %i.av, ptr noundef nonnull %0, i32 noundef %i.an)
          to label %bb.t unwind label %bb.s

bb.q:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit34

bb.r:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.s:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.t:                                             ; preds = %bb.p, %.lr.ph
  %.119 = phi ptr [ %.01846, %.lr.ph ], [ %i.av, %bb.p ]
  %.117 = phi i32 [ %.01647, %.lr.ph ], [ %i.ax, %bb.p ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02045, i64 8
  store atomic i32 %.117, ptr %i.bb seq_cst, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.02045, i64 16
  %i.bd = load atomic ptr, ptr %i.bc seq_cst, align 8 ; 2 uses
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.t, %_ZN4absl12lts_2025051213base_internal8SpinLock6UnlockEv.exit
  %i.be = load ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116update_callbacksE, align 8, !tbaa !50 ; 3 uses
  %.not23 = icmp eq ptr %i.be, null
  br i1 %.not23, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !52 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !52 ; 2 uses
  %.not4148 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not4148, label %.loopexit, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.u, %_ZNKSt8functionIFvvEEclEv.exit
  %.sroa.035.049 = phi ptr [ %i.bm, %_ZNKSt8functionIFvvEEclEv.exit ], [ %i.bf, %bb.u ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.035.049, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph51
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %.lr.ph51
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.035.049, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !56
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.049)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %.loopexit42, !inline_history !58

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.035.049, i64 32 ; 2 uses
  %.not41 = icmp eq ptr %i.bm, %i.bh
  br i1 %.not41, label %.loopexit, label %.lr.ph51

.loopexit42:                                      ; preds = %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit:                                        ; preds = %_ZNKSt8functionIFvvEEclEv.exit, %bb.u, %._crit_edge
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #21
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %.loopexit
  %.not4.i.i.i = icmp eq ptr %i.l, %.0.lcssa.i.i.i.i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bu, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i ], [ %i.l, %_ZN4absl12lts_202505129MutexLockD2Ev.exit ] ; 3 uses
  %i.bp = load ptr, ptr %.05.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !27
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #24
  br label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bu, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i.i31, label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !59

_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i, %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %.not.i.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.h) #24
  br label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  ret void

bb.z:                                             ; preds = %.loopexit42, %.loopexit.split-lp, %bb.s, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.az, %bb.r ], [ %i.ba, %bb.s ], [ %lpad.loopexit, %.loopexit42 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit34 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #21
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit34:      ; preds = %bb.z, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %.pn.pn, %bb.z ]
  call fastcc void @_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #19
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !36 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !27
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !59

_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !39
  br label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.k = ptrtoint ptr %.val1 to i64
  %i.l = ptrtoint ptr %.val to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.m) #24
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051212log_internal13UpdateVModuleESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 8 uses
  %4 = alloca %"class.absl::lts_20250512::strings_internal::SplitIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i64 %0, ptr %3, align 8, !tbaa !44, !alias.scope !60
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !63, !alias.scope !60
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 44, ptr %i.d, align 8, !tbaa !27, !alias.scope !60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 0, ptr %4, align 8, !tbaa !64, !alias.scope !71
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i32 0, ptr %i.e, align 8, !tbaa !74, !alias.scope !71
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !alias.scope !71
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %3, ptr %i.g, align 8, !tbaa !75, !alias.scope !71
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i8 44, ptr %i.h, align 8, !tbaa !27, !alias.scope !71
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.e, align 8, !tbaa !74, !alias.scope !71
  br label %.split

bb.c:                                             ; preds = %bb.a
  %i.j = invoke { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.h, i64 %0, ptr nonnull %1, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  store i32 1, ptr %i.e, align 8, !tbaa !74, !alias.scope !71
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %i.o = load i64, ptr %4, align 8, !tbaa !64, !alias.scope !71 ; 5 uses
  %i.p = icmp ugt i64 %i.o, %0
  br i1 %i.p, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i64 noundef %i.o, i64 noundef %0) #23
          to label %.noexc33 unwind label %bb.g

.noexc33:                                         ; preds = %bb.f
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i: ; preds = %bb.e
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.q, %i.s
  %i.u = sub nuw i64 %0, %i.o
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.t) ; 2 uses
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.f, align 8, !tbaa !44, !alias.scope !71
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !63, !alias.scope !71
  %i.v = add i64 %i.o, %i.k
  %i.w = add i64 %i.v, %.sroa.speculated.i.i.i.i
  %.sroa.0.0.copyload.i.i.i34.pre = load i64, ptr %3, align 8, !tbaa !44, !noalias !76
  %.pre = load i32, ptr %i.e, align 8, !tbaa !74
  %i.x = icmp ne i32 %.pre, 2
  br label %.split, !llvm.loop !79

.split:                                           ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i, %bb.b
  %i.y = phi i1 [ %i.x, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ false, %bb.b ]
  %.sroa.0.0.copyload.i.i.i34 = phi i64 [ %.sroa.0.0.copyload.i.i.i34.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %0, %bb.b ] ; 2 uses
  %storemerge.i = phi i64 [ %i.w, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %0, %bb.b ] ; 2 uses
  store i64 %storemerge.i, ptr %4, align 8, !tbaa !64, !alias.scope !71
  %i.z = icmp ne i64 %storemerge.i, %.sroa.0.0.copyload.i.i.i34
  %.not3.i150 = select i1 %i.y, i1 true, i1 %i.z
  br i1 %.not3.i150, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.split
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %.split
  %.sroa.14.0.lcssa = phi ptr [ null, %.split ], [ %.sroa.14.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 6 uses
  %.sroa.980.0.lcssa = phi ptr [ null, %.split ], [ %.sroa.980.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 2 uses
  %.sroa.076.0.lcssa = phi ptr [ null, %.split ], [ %.sroa.076.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.aa = load atomic i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE monotonic, align 4 ; 3 uses
  %i.ab = and i32 %i.aa, 1
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i: ; preds = %._crit_edge
  %i.ac = or disjoint i32 %i.aa, 1
  %i.ad = cmpxchg ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE, i32 %i.aa, i32 %i.ac acquire monotonic, align 4
  %i.ae = extractvalue { i32, i1 } %i.ad, 0
  %.pre.i.i = and i32 %i.ae, 1
  %i.af = icmp eq i32 %.pre.i.i, 0
  br i1 %i.af, label %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit, label %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i

_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051213base_internal8SpinLock11TryLockImplEv.exit.i, %._crit_edge
  invoke void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4) @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_15mutexE) #20
          to label %_ZN4absl12lts_2025051213base_internal8SpinLock4LockEv.exit unwind label %bb.w

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit106:                                     ; preds = %bb.q
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp107:                            ; preds = %bb.t
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.h:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  %.sroa.076.0153 = phi ptr [ null, %.lr.ph ], [ %.sroa.076.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 11 uses
  %.sroa.980.0152 = phi ptr [ null, %.lr.ph ], [ %.sroa.980.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 13 uses
  %.sroa.14.0151 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 6 uses
  %.sroa.068.0.copyload = load i64, ptr %i.f, align 8, !tbaa !44 ; 3 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !63 ; 4 uses
  %.not.i = icmp eq i64 %.sroa.068.0.copyload, 0
  br i1 %.not.i, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RiEEERS5_DpOT_.exit, label %.preheader.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %.not13.i = icmp eq i64 %i.ah, 0
  br i1 %.not13.i, label %_ZNSt6vectorISt4pairISt17basic_string_viewIcSt11char_traitsIcEEiESaIS5_EE12emplace_backIJRKS4_RiEEERS5_DpOT_.exit, label %.preheader.preheader, !llvm.loop !26

.preheader.preheader:                             ; preds = %bb.h, %.preheader
  %.1.i240 = phi i64 [ %i.ah, %.preheader ], [ %.sroa.068.0.copyload, %bb.h ] ; 3 uses
  %i.ah = add i64 %.1.i240, -1                    ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !27
  %i.ak = icmp eq i8 %i.aj, 61
  br i1 %i.ak, label %bb.i, label %.preheader, !llvm.loop !26

bb.i:                                             ; preds = %.preheader.preheader
  %i.al = sub nuw i64 %.sroa.068.0.copyload, %.1.i240
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.1.i240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.an = invoke noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strto32_baseESt17basic_string_viewIcSt11char_traitsIcEEPii(i64 %i.al, ptr nonnull %i.am, ptr noundef nonnull %i.c, i32 noundef 10)
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051212log_internal14PrependVModuleESt17basic_string_viewIcSt11char_traitsIcEEi:bb.a
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_120PrependVModuleLockedESt17basic_string_viewIcSt11char_traitsIcEEi.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.kf, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i.i.i.i ], [ %i.jz, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i ] ; 3 uses
  %i.ka = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i13.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !27
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #24
  br label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i13.i.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i54.i = icmp eq ptr %i.kf, %.val.i.i.i
  br i1 %.not.i.i.i.i.i54.i, label %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !59

_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i.i.i.i.i.i
  store ptr %i.jz, ptr %i.fu, align 8, !tbaa !41
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_120PrependVModuleLockedESt17basic_string_viewIcSt11char_traitsIcEEi.exit

bb.bh:                                            ; preds = %bb.ae, %.noexc.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.invoke.i, %.noexc.i.i.i.i.i.i.i
  %i.kg = landingpad { ptr, i32 }
          cleanup
  %i.kh = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.ae
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i: ; preds = %bb.bh
  %i.kj = load i64, ptr %i.ae, align 8, !tbaa !27
  %i.kk = add i64 %i.kj, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.kg

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_120PrependVModuleLockedESt17basic_string_viewIcSt11char_traitsIcEEi.exit: ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116get_vmodule_infoEv.exit52.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i, %_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %.val2.i.i = load i32, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_18global_vE, align 4
  %.0.i.i = select i1 %.not.not73.i, i32 %.val2.i.i, i32 %.sroa.065.0.i
  call void @_ZN4absl12lts_2025051212log_internal15UpdateVLogSitesEv()
  ret i32 %.0.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051212log_internal21OnVLogVerbosityUpdateESt8functionIFvvEE(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex) #19
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex, align 8, !tbaa !47
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex) #19
  br label %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit

_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
  %i.d = load ptr, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116update_callbacksE, align 8, !tbaa !50 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.e unwind label %bb.f       ; 3 uses

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr %i.e, ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_116update_callbacksE, align 8, !tbaa !50
  br label %bb.h

bb.f:                                             ; preds = %bb.k, %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #21
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.f
  resume { ptr, i32 } %i.f

bb.h:                                             ; preds = %bb.e, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit
  %i.i = phi ptr [ %i.e, %bb.e ], [ %i.d, %_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEv.exit ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56
  store ptr %i.p, ptr %i.n, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54
  %.not.i.i.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !96
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !54
  store ptr %i.t, ptr %i.s, align 8, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i:             ; preds = %bb.j, %bb.i
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.v, ptr %i.j, align 8, !tbaa !93
  br label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit

bb.k:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorISt8functionIFvvEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit unwind label %bb.f

_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i, %bb.k
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051212log_internal12_GLOBAL__N_119GetUpdateSitesMutexEvE18update_sites_mutex)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit1 unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #21
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit1:       ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE9push_backEOS2_.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef ptr @_ZN4absl12lts_2025051212log_internal29SetVModuleListHeadForTestOnlyEPNS1_8VLogSiteE(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = atomicrmw xchg ptr @_ZN4absl12lts_2025051212log_internal12_GLOBAL__N_114site_list_headE, ptr %0 seq_cst, align 8
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal7FNMatchESt17basic_string_viewIcSt11char_traitsIcEES5_(i64, ptr, i64, ptr) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #11

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051213base_internal8SpinLock10SlowUnlockEj(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) local_unnamed_addr #12

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051213base_internal8SpinLock8SlowLockEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbRiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %1, ptr nofree readonly captures(address_is_null) %.0.val, i64 %.8.val, i8 %.0.val1, i32 %.0.val3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.val28 = load ptr, ptr %0, align 8, !tbaa !39  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val29 = load ptr, ptr %i.b, align 8, !tbaa !41 ; 4 uses
  %i.c = ptrtoint ptr %.val29 to i64
  %i.d = ptrtoint ptr %.val28 to i64              ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp eq i64 %i.e, 9223372036854775800
  br i1 %i.f, label %bb.b, label %_ZNKSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
  unreachable

_ZNKSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.g = sdiv exact i64 %i.e, 40                  ; 3 uses
  %i.h = icmp eq ptr %.val29, %.val28
  %.sroa.speculated.i = select i1 %i.h, i64 1, i64 %i.g
  %i.i = add nsw i64 %.sroa.speculated.i, %i.g    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.d
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %2 = mul nuw nsw i64 %i.l, 40                   ; 2 uses
  %3 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %2) #22 ; 6 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 %i.n ; 8 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %5, ptr %4, align 8, !tbaa !43
  %.not.i.a = icmp eq ptr %.0.val, null
  %6 = icmp ne i64 %.8.val, 0
  %or.cond.i.i.i.i = and i1 %.not.i.a, %6
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE12_M_check_lenEmPKc.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #23
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %_ZNKSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE12_M_check_lenEmPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %.8.val, ptr %i.a, align 8, !tbaa !44
  %i.o = icmp ugt i64 %.8.val, 15
  br i1 %i.o, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.c
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %bb.k   ; 2 uses

.noexc32:                                         ; preds = %.noexc.i.i.i.i
  store ptr %i.p, ptr %4, align 8, !tbaa !36
  %i.q = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.q, ptr %5, align 8, !tbaa !27
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc32, %bb.c
  %i.r = phi ptr [ %i.p, %.noexc32 ], [ %5, %bb.c ] ; 2 uses
  switch i64 %.8.val, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.s = load i8, ptr %.0.val, align 1, !tbaa !27
  store i8 %i.s, ptr %i.r, align 1, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr readonly align 1 %.0.val, i64 %.8.val, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !37
  %i.v = load ptr, ptr %4, align 8, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.x = and i8 %.0.val1, 1
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 %i.x, ptr %i.y, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %.0.val3, ptr %i.z, align 4, !tbaa !38
  %.not1.i.i.i = icmp eq ptr %.val28, %1
  br i1 %.not1.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.03.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %3, %bb.f ] ; 6 uses
  %.092.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %.val28, %bb.f ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.aa = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 16 ; 3 uses
  store ptr %i.aa, ptr %.03.i.i.i, align 8, !tbaa !43, !alias.scope !97, !noalias !100
  %i.ab = load ptr, ptr %.092.i.i.i, align 8, !tbaa !36, !alias.scope !100, !noalias !97 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 16 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !37, !alias.scope !100, !noalias !97 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false), !alias.scope !102
  br label %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ab, ptr %.03.i.i.i, align 8, !tbaa !36, !alias.scope !97, !noalias !100
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !27, !alias.scope !100, !noalias !97
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !27, !alias.scope !97, !noalias !100
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !37, !alias.scope !100, !noalias !97
  br label %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.g
  %i.aj = phi i64 [ %i.af, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 8
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !37, !alias.scope !97, !noalias !100
  store ptr %i.ac, ptr %.092.i.i.i, align 8, !tbaa !36, !alias.scope !100, !noalias !97
  store i64 0, ptr %i.ak, align 8, !tbaa !37, !alias.scope !100, !noalias !97
  store i8 0, ptr %i.ac, align 8, !tbaa !27, !alias.scope !100, !noalias !97
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !100, !noalias !97
  store i64 %i.ao, ptr %i.am, align 8, !alias.scope !97, !noalias !100
  %i.ap = getelementptr inbounds nuw i8, ptr %.092.i.i.i, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !103

_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %3, %bb.f ], [ %i.aq, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not1.i.i.i33 = icmp eq ptr %1, %.val29
  br i1 %.not1.i.i.i33, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit43, label %.lr.ph.i.i.i34

.lr.ph.i.i.i34:                                   ; preds = %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40
  %.03.i.i.i35 = phi ptr [ %i.bi, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40 ], [ %i.ar, %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  %.092.i.i.i36 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40 ], [ %1, %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.as = getelementptr inbounds nuw i8, ptr %.03.i.i.i35, i64 16 ; 3 uses
  store ptr %i.as, ptr %.03.i.i.i35, align 8, !tbaa !43, !alias.scope !104, !noalias !107
  %i.at = load ptr, ptr %.092.i.i.i36, align 8, !tbaa !36, !alias.scope !107, !noalias !104 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.092.i.i.i36, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37

bb.h:                                             ; preds = %.lr.ph.i.i.i34
  %i.aw = getelementptr inbounds nuw i8, ptr %.092.i.i.i36, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !37, !alias.scope !107, !noalias !104 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !109
  br label %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i34
  store ptr %i.at, ptr %.03.i.i.i35, align 8, !tbaa !36, !alias.scope !104, !noalias !107
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !27, !alias.scope !107, !noalias !104
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !27, !alias.scope !104, !noalias !107
  %.phi.trans.insert.i.i.i.i38 = getelementptr inbounds nuw i8, ptr %.092.i.i.i36, i64 8
  %.pre.i.i.i.i39 = load i64, ptr %.phi.trans.insert.i.i.i.i38, align 8, !tbaa !37, !alias.scope !107, !noalias !104
  br label %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40

_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37, %bb.h
  %i.bb = phi i64 [ %i.ax, %bb.h ], [ %.pre.i.i.i.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i37 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.092.i.i.i36, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.03.i.i.i35, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !37, !alias.scope !104, !noalias !107
  store ptr %i.au, ptr %.092.i.i.i36, align 8, !tbaa !36, !alias.scope !107, !noalias !104
  store i64 0, ptr %i.bc, align 8, !tbaa !37, !alias.scope !107, !noalias !104
  store i8 0, ptr %i.au, align 8, !tbaa !27, !alias.scope !107, !noalias !104
  %i.be = getelementptr inbounds nuw i8, ptr %.03.i.i.i35, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %.092.i.i.i36, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !107, !noalias !104
  store i64 %i.bg, ptr %i.be, align 8, !alias.scope !104, !noalias !107
  %i.bh = getelementptr inbounds nuw i8, ptr %.092.i.i.i36, i64 40 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.03.i.i.i35, i64 40 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bh, %.val29
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit43, label %.lr.ph.i.i.i34, !llvm.loop !103

_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit43: ; preds = %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40, %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i42 = phi ptr [ %i.ar, %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bi, %_ZSt19__relocate_object_aIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i40 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %.val28, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit43
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.d
  call void @_ZdlPvm(ptr noundef nonnull %.val28, i64 noundef %i.bm) #24
  br label %_ZNSt12_Vector_baseIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit43, %bb.i
  store ptr %3, ptr %0, align 8, !tbaa !39
  store ptr %.0.lcssa.i.i.i42, ptr %i.b, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %i.l
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !42
  ret void

bb.j:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i.i.i.i, %.noexc.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = call ptr @__cxa_begin_catch(ptr %i.bq) #19 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %2) #24
  invoke void @__cxa_rethrow() #23
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bo

bb.m:                                             ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #21
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt8_DestroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvT_S6_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEEvT_S8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !27
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #24
  br label %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i

_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEEvT_S8_.exit, label %.lr.ph.i, !llvm.loop !59

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEEvT_S8_.exit: ; preds = %_ZSt8_DestroyIN4absl12lts_2025051212log_internal12_GLOBAL__N_111VModuleInfoEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

declare { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1), i64, ptr, i64 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strto32_baseESt17basic_string_viewIcSt11char_traitsIcEEPii(i64, ptr, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt8functionIFvvEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !110    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
  unreachable

_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 24, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56
  store ptr %i.t, ptr %i.r, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !96
  store ptr %i.v, ptr %i.w, align 8, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit

_ZNSt8functionIFvvEEC2EOS1_.exit:                 ; preds = %_ZNKSt6vectorISt8functionIFvvEESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt8functionIFvvEEC2EOS1_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt8functionIFvvEEC2EOS1_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !111, !noalias !114
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56, !alias.scope !114, !noalias !111
  store ptr %i.z, ptr %i.x, align 8, !tbaa !56, !alias.scope !111, !noalias !114
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54, !alias.scope !114, !noalias !111 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i:         ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !96, !alias.scope !116
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !54, !alias.scope !111, !noalias !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !alias.scope !114, !noalias !111
  br label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !117

_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt8functionIFvvEEC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt8functionIFvvEEC2EOS1_.exit ], [ %i.ae, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i18 = phi ptr [ %i.an, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.af, %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.am, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !118, !noalias !121
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56, !alias.scope !121, !noalias !118
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !56, !alias.scope !118, !noalias !121
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !54, !alias.scope !121, !noalias !118 ; 2 uses
  %.not.i.i.not.i.i.i.i.i20 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.not.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22, label %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i21

_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i21:       ; preds = %.lr.ph.i.i.i17
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !96, !alias.scope !123
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !54, !alias.scope !118, !noalias !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false), !alias.scope !121, !noalias !118
  br label %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNSt8functionIFvvEEC2EOS1_.exit.i.i.i.i21, %.lr.ph.i.i.i17
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !117

_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25: ; preds = %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.af, %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.an, %_ZSt19__relocate_object_aISt8functionIFvvEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseISt8functionIFvvEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #24
  br label %_ZNSt12_Vector_baseISt8functionIFvvEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt8functionIFvvEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorISt8functionIFvvEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit25, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !110
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !95
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
end_hunk_2
