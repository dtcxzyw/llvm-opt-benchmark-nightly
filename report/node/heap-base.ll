Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/heap-base?download=true
inline.NumInlined: 570
inline.NumDeleted: 459
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"struct.std::atomic.91" = type { %"struct.std::__atomic_base.92" }
%"struct.std::__atomic_base.92" = type { i64 }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.cppgc::internal::NormalPage::IteratorImpl" = type { ptr, ptr, i64 }
%"class.cppgc::subtle::DisallowGarbageCollectionScope" = type { ptr }
%"class.cppgc::internal::PersistentRegionLock" = type { i8 }
%"struct.cppgc::HeapStatistics" = type { i64, i64, i64, i64, i8, %"class.std::vector.117", %"class.std::vector.122" }
%"class.std::vector.117" = type { %"struct.std::_Vector_base.118" }
%"struct.std::_Vector_base.118" = type { %"struct.std::_Vector_base<cppgc::HeapStatistics::SpaceStatistics, std::allocator<cppgc::HeapStatistics::SpaceStatistics>>::_Vector_impl" }
%"struct.std::_Vector_base<cppgc::HeapStatistics::SpaceStatistics, std::allocator<cppgc::HeapStatistics::SpaceStatistics>>::_Vector_impl" = type { %"struct.std::_Vector_base<cppgc::HeapStatistics::SpaceStatistics, std::allocator<cppgc::HeapStatistics::SpaceStatistics>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cppgc::HeapStatistics::SpaceStatistics, std::allocator<cppgc::HeapStatistics::SpaceStatistics>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.122" = type { %"struct.std::_Vector_base.123" }
%"struct.std::_Vector_base.123" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.cppgc::internal::HeapStatisticsCollector" = type { ptr, ptr, ptr, %"class.std::unordered_map.128" }
%"class.std::unordered_map.128" = type { %"class.std::_Hashtable.129" }
%"class.std::_Hashtable.129" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }

$_ZN5cppgc8internal8HeapBase5stackEv = comdat any

$_ZN5cppgc8internal28ProcessHeapStatisticsUpdater22AllocationObserverImpl28AllocatedObjectSizeIncreasedEm = comdat any

$_ZN5cppgc8internal28ProcessHeapStatisticsUpdater22AllocationObserverImpl28AllocatedObjectSizeDecreasedEm = comdat any

$_ZN5cppgc8internal28ProcessHeapStatisticsUpdater22AllocationObserverImpl24ResetAllocatedObjectSizeEm = comdat any

$_ZN5cppgc8internal28ProcessHeapStatisticsUpdater22AllocationObserverImpl22AllocatedSizeIncreasedEm = comdat any

$_ZN5cppgc8internal28ProcessHeapStatisticsUpdater22AllocationObserverImpl22AllocatedSizeDecreasedEm = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt8_Rb_treeIiSt4pairIKiN4heap4base5Stack7SegmentEESt10_Select1stIS6_ESt4lessIiESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZTVN5cppgc8internal28ProcessHeapStatisticsUpdater22AllocationObserverImplE = comdat any

@_ZTVN5cppgc8internal8HeapBaseE = hidden unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr null, ptr @_ZN5cppgc8internal8HeapBaseD2Ev, ptr @_ZN5cppgc8internal8HeapBaseD0Ev, ptr @_ZN5cppgc8internal8HeapBase5stackEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK5cppgc8internal8HeapBase13IsGCForbiddenEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK5cppgc8internal8HeapBase25CurrentThreadIsHeapThreadEv, ptr @__cxa_pure_virtual, ptr @_ZNK5cppgc8internal8HeapBase11IsGCAllowedEv] }, align 8
@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"!IsMarking()\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"!IsGCForbidden()\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"!sweeper().IsSweepingOnMutatorThread()\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"0u == strong_persistent_region_.NodesInUse()\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"0u == weak_persistent_region_.NodesInUse()\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"0u == strong_cross_thread_persistent_region_.NodesInUse()\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"0u == weak_cross_thread_persistent_region_.NodesInUse()\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"gc_count <= kMaxTerminationGCs\00", align 1
@_ZTVN5cppgc8internal28ProcessHeapStatisticsUpdater22AllocationObserverImplE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN5cppgc8internal28ProcessHeapStatisticsUpdater22AllocationObserverImpl28AllocatedObjectSizeIncreasedEm, ptr @_ZN5cppgc8internal28ProcessHeapStatisticsUpdater22AllocationObserverImpl28AllocatedObjectSizeDecreasedEm, ptr @_ZN5cppgc8internal28ProcessHeapStatisticsUpdater22AllocationObserverImpl24ResetAllocatedObjectSizeEm, ptr @_ZN5cppgc8internal28ProcessHeapStatisticsUpdater22AllocationObserverImpl22AllocatedSizeIncreasedEm, ptr @_ZN5cppgc8internal28ProcessHeapStatisticsUpdater22AllocationObserverImpl22AllocatedSizeDecreasedEm] }, comdat, align 8
@_ZN5cppgc21ProcessHeapStatistics28total_allocated_object_size_E = external global %"struct.std::atomic.91", align 8
@_ZN5cppgc21ProcessHeapStatistics22total_allocated_space_E = external global %"struct.std::atomic.91", align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"IsEmpty()\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN5cppgc8internal8HeapBaseD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5cppgc8internal8HeapBaseD2Ev
@_ZN5cppgc8internal30ClassNameAsHeapObjectNameScopeC1ERNS0_8HeapBaseE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5cppgc8internal30ClassNameAsHeapObjectNameScopeC2ERNS0_8HeapBaseE
@_ZN5cppgc8internal30ClassNameAsHeapObjectNameScopeD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5cppgc8internal30ClassNameAsHeapObjectNameScopeD2Ev

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal8HeapBaseC2ESt10shared_ptrINS_8PlatformEERKSt6vectorISt10unique_ptrINS_15CustomSpaceBaseESt14default_deleteIS7_EESaISA_EENS_4Heap12StackSupportENSF_11MarkingTypeENSF_12SweepingTypeERNS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(512) initializes((0, 10), (12, 16)) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(8) %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.b, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5cppgc8internal8HeapBaseE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = tail call noundef i32 @_ZN2v84base2OS18GetCurrentThreadIdEv() #18
  store i32 %i.d, ptr %i.c, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @_ZN5cppgc8internal7RawHeapC1EPNS0_8HeapBaseERKSt6vectorISt10unique_ptrINS_15CustomSpaceBaseESt14default_deleteIS6_EESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load ptr, ptr %1, align 8
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  store ptr null, ptr %i.i, align 8
  store ptr %i.j, ptr %i.h, align 8
  store ptr null, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.l = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19, !noalias !22 ; 3 uses
  store ptr %0, ptr %i.l, align 8, !noalias !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %i.m, align 8, !noalias !22
  store ptr %i.l, ptr %i.k, align 8, !alias.scope !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.o = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #18, !inline_history !23 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.t = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #19, !noalias !26 ; 2 uses
  tail call void @_ZN5cppgc8internal11PageBackendC1ERN2v813PageAllocatorES4_(ptr noundef nonnull align 8 dereferenceable(216) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.s) #18, !noalias !26
  store ptr %i.t, ptr %i.n, align 8, !alias.scope !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %0, ptr %i.u, align 8
  tail call void @_ZN5cppgc8internal12HeapRegistry12RegisterHeapERNS0_8HeapBaseE(ptr noundef nonnull align 8 dereferenceable(512) %0) #18
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.w = load ptr, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.x = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #19, !noalias !27 ; 2 uses
  tail call void @_ZN5cppgc8internal14StatsCollectorC1EPNS_8PlatformE(ptr noundef nonnull align 8 dereferenceable(336) %i.x, ptr noundef %i.w) #18, !noalias !27
  store ptr %i.x, ptr %i.v, align 8, !alias.scope !27
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.z = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #19, !noalias !28 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, i8 0, i64 80, i1 false), !noalias !28
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #18, !noalias !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !noalias !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr null, ptr %i.ac, align 8, !noalias !28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr %i.ab, ptr %i.ad, align 8, !noalias !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store ptr %i.ab, ptr %i.ae, align 8, !noalias !28
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !noalias !28
  store ptr %i.z, ptr %i.y, align 8, !alias.scope !28
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.ah = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19, !noalias !29 ; 2 uses
  tail call void @_ZN5cppgc8internal19PreFinalizerHandlerC1ERNS0_8HeapBaseE(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(512) %0) #18, !noalias !29
  store ptr %i.ah, ptr %i.ag, align 8, !alias.scope !29
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN5cppgc8internal9CompactorC1ERNS0_7RawHeapE(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = load ptr, ptr %i.n, align 8
  %i.am = load ptr, ptr %i.v, align 8
  %i.an = load ptr, ptr %i.ag, align 8
  %i.ao = load ptr, ptr %i.k, align 8
  tail call void @_ZN5cppgc8internal15ObjectAllocatorC1ERNS0_7RawHeapERNS0_11PageBackendERNS0_14StatsCollectorERNS0_19PreFinalizerHandlerERNS0_23FatalOutOfMemoryHandlerERNS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(216) %i.al, ptr noundef nonnull align 8 dereferenceable(336) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN5cppgc8internal7SweeperC1ERNS0_8HeapBaseE(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(512) %0) #18
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ar = load ptr, ptr %i.k, align 8
  tail call void @_ZN5cppgc8internal20PersistentRegionBaseC2ERKNS0_23FatalOutOfMemoryHandlerE(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.au = load ptr, ptr %i.k, align 8
  tail call void @_ZN5cppgc8internal20PersistentRegionBaseC2ERKNS0_23FatalOutOfMemoryHandlerE(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au) #18
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ax = load ptr, ptr %i.k, align 8
  tail call void @_ZN5cppgc8internal27CrossThreadPersistentRegionC1ERKNS0_23FatalOutOfMemoryHandlerE(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #18
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.az = load ptr, ptr %i.k, align 8
  tail call void @_ZN5cppgc8internal27CrossThreadPersistentRegionC1ERKNS0_23FatalOutOfMemoryHandlerE(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az) #18
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5cppgc8internal28ProcessHeapStatisticsUpdater22AllocationObserverImplE, i64 16), ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  store i8 %3, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 476
  store i32 1, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i8 0, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 481
  store i8 %4, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 482
  store i8 %5, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 483
  store i8 1, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  %i.bj = load ptr, ptr %i.v, align 8
  tail call void @_ZN5cppgc8internal14StatsCollector16RegisterObserverEPNS1_18AllocationObserverE(ptr noundef nonnull align 8 dereferenceable(336) %i.bj, ptr noundef nonnull %i.ba) #18
  %i.bk = load ptr, ptr %i.y, align 8
  %i.bl = tail call i64 @_ZN2v84base5Stack13GetStackStartEv() #18
  %i.bm = inttoptr i64 %i.bl to ptr
  store ptr %i.bm, ptr %i.bk, align 8
  ret void
}

declare noundef i32 @_ZN2v84base2OS18GetCurrentThreadIdEv() local_unnamed_addr #1

declare void @_ZN5cppgc8internal7RawHeapC1EPNS0_8HeapBaseERKSt6vectorISt10unique_ptrINS_15CustomSpaceBaseESt14default_deleteIS6_EESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal8HeapBase21InitializePageBackendERN2v813PageAllocatorE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.2") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.a = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #19, !noalias !32 ; 2 uses
  tail call void @_ZN5cppgc8internal11PageBackendC1ERN2v813PageAllocatorES4_(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %1) #18, !noalias !32
  store ptr %i.a, ptr %0, align 8, !alias.scope !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK5cppgc8internal8HeapBase14page_allocatorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #18
  ret ptr %i.f
}

declare void @_ZN5cppgc8internal9CompactorC1ERNS0_7RawHeapE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZN5cppgc8internal15ObjectAllocatorC1ERNS0_7RawHeapERNS0_11PageBackendERNS0_14StatsCollectorERNS0_19PreFinalizerHandlerERNS0_23FatalOutOfMemoryHandlerERNS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN5cppgc8internal7SweeperC1ERNS0_8HeapBaseE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(512)) unnamed_addr #1

declare void @_ZN5cppgc8internal27CrossThreadPersistentRegionC1ERKNS0_23FatalOutOfMemoryHandlerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN5cppgc8internal14StatsCollector16RegisterObserverEPNS1_18AllocationObserverE(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal8HeapBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(512) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5cppgc8internal8HeapBaseE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5cppgc8internal12MoveListenerESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorIPN5cppgc8internal12MoveListenerESaIS3_EED2Ev.exit

_ZNSt6vectorIPN5cppgc8internal12MoveListenerESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392
end_hunk_0
begin_hunk_1_@_ZNK5cppgc8internal8HeapBase17ObjectPayloadSizeEv:bb.a
  %i.l = load ptr, ptr %.sroa.08.011.i.i.i, align 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 8
  %i.o = icmp eq i8 %i.n, 1
  br i1 %i.o, label %bb.c, label %_ZN5cppgc8internal10NormalPage3endEv.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.p = call noundef ptr @_ZN5cppgc8internal9LargePage12ObjectHeaderEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l) #18 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp ult i16 %i.r, 4
  br i1 %i.s, label %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE8TraverseERNS0_8BasePageE.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.u = load i16, ptr %i.t, align 2              ; 2 uses
  %i.v = icmp ult i16 %i.u, 2
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = and i64 %i.w, -131072
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load i64, ptr %i.z, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_117ObjectSizeCounter10ObjectSizeERKNS0_16HeapObjectHeaderE.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ab = lshr i16 %i.u, 1
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  br label %_ZN5cppgc8internal12_GLOBAL__N_117ObjectSizeCounter10ObjectSizeERKNS0_16HeapObjectHeaderE.exit.i.i.i.i.i.i

_ZN5cppgc8internal12_GLOBAL__N_117ObjectSizeCounter10ObjectSizeERKNS0_16HeapObjectHeaderE.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.in.i.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.ad, %bb.f ]
  %i.ae = add i64 %.sroa.0.1, -8
  %i.af = add i64 %i.ae, %.in.i.i.i.i.i.i.i
  br label %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE8TraverseERNS0_8BasePageE.exit.i.i.i

_ZN5cppgc8internal10NormalPage3endEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZN5cppgc8internal10NormalPage5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.cppgc::internal::NormalPage::IteratorImpl") align 8 %1, ptr noundef nonnull align 8 dereferenceable(2104) %i.l) #18
  %i.ag = call noundef ptr @_ZN5cppgc8internal10NormalPage10PayloadEndEv(ptr noundef nonnull align 8 dereferenceable(2104) %i.l) #18, !noalias !38 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8  ; 2 uses
  %.not16.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, %i.ag
  br i1 %.not16.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5cppgc8internal10NormalPage3endEv.exit.i.i.i.i
  %i.ah = load ptr, ptr %i.d, align 8
  %i.ai = load i64, ptr %i.e, align 8
  %i.aj = lshr i64 %i.ai, 3
  br label %bb.g

._crit_edge.i.i.i.i:                              ; preds = %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE25VisitHeapObjectHeaderImplERNS0_16HeapObjectHeaderE.exit13.i.i.i.i, %_ZN5cppgc8internal10NormalPage3endEv.exit.i.i.i.i
  %.sroa.0.4 = phi i64 [ %.sroa.0.1, %_ZN5cppgc8internal10NormalPage3endEv.exit.i.i.i.i ], [ %.sroa.0.3, %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE25VisitHeapObjectHeaderImplERNS0_16HeapObjectHeaderE.exit13.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE8TraverseERNS0_8BasePageE.exit.i.i.i

bb.g:                                             ; preds = %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE25VisitHeapObjectHeaderImplERNS0_16HeapObjectHeaderE.exit13.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %.lr.ph.i.i.i.i ], [ %.sroa.0.3, %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE25VisitHeapObjectHeaderImplERNS0_16HeapObjectHeaderE.exit13.i.i.i.i ] ; 2 uses
  %i.ak = phi ptr [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE25VisitHeapObjectHeaderImplERNS0_16HeapObjectHeaderE.exit13.i.i.i.i ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i16, ptr %i.al, align 2
  %i.an = icmp ult i16 %i.am, 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ak, i64 6
  %.pre = load i16, ptr %.phi.trans.insert, align 2 ; 3 uses
  br i1 %i.an, label %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE25VisitHeapObjectHeaderImplERNS0_16HeapObjectHeaderE.exit13.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp ult i16 %.pre, 2
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = and i64 %i.ap, -131072
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load i64, ptr %i.as, align 8
  br label %_ZN5cppgc8internal12_GLOBAL__N_117ObjectSizeCounter10ObjectSizeERKNS0_16HeapObjectHeaderE.exit.i.i11.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.au = lshr i16 %.pre, 1
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 3
  br label %_ZN5cppgc8internal12_GLOBAL__N_117ObjectSizeCounter10ObjectSizeERKNS0_16HeapObjectHeaderE.exit.i.i11.i.i.i.i

_ZN5cppgc8internal12_GLOBAL__N_117ObjectSizeCounter10ObjectSizeERKNS0_16HeapObjectHeaderE.exit.i.i11.i.i.i.i: ; preds = %bb.j, %bb.i
  %.in.i.i.i12.i.i.i.i = phi i64 [ %i.at, %bb.i ], [ %i.aw, %bb.j ]
  %i.ax = add i64 %.sroa.0.2, -8
  %i.ay = add i64 %i.ax, %.in.i.i.i12.i.i.i.i
  br label %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE25VisitHeapObjectHeaderImplERNS0_16HeapObjectHeaderE.exit13.i.i.i.i

_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE25VisitHeapObjectHeaderImplERNS0_16HeapObjectHeaderE.exit13.i.i.i.i: ; preds = %bb.g, %_ZN5cppgc8internal12_GLOBAL__N_117ObjectSizeCounter10ObjectSizeERKNS0_16HeapObjectHeaderE.exit.i.i11.i.i.i.i
  %.sroa.0.3 = phi i64 [ %i.ay, %_ZN5cppgc8internal12_GLOBAL__N_117ObjectSizeCounter10ObjectSizeERKNS0_16HeapObjectHeaderE.exit.i.i11.i.i.i.i ], [ %.sroa.0.2, %bb.g ] ; 2 uses
  %i.az = lshr i16 %.pre, 1
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ba ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ah
  %spec.select.idx.i.i.i.i = select i1 %i.bc, i64 %i.aj, i64 0
  %spec.select.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %spec.select.idx.i.i.i.i ; 3 uses
  store ptr %spec.select.i.i.i.i, ptr %1, align 8
  %.not.i.i.i.i = icmp eq ptr %spec.select.i.i.i.i, %i.ag
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.g

_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE8TraverseERNS0_8BasePageE.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_ZN5cppgc8internal12_GLOBAL__N_117ObjectSizeCounter10ObjectSizeERKNS0_16HeapObjectHeaderE.exit.i.i.i.i.i.i, %bb.c
  %.sroa.0.5 = phi i64 [ %.sroa.0.1, %bb.c ], [ %i.af, %_ZN5cppgc8internal12_GLOBAL__N_117ObjectSizeCounter10ObjectSizeERKNS0_16HeapObjectHeaderE.exit.i.i.i.i.i.i ], [ %.sroa.0.4, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i, i64 8 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.j
  br i1 %i.be, label %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE8TraverseERNS0_9BaseSpaceE.exit.i.i, label %.lr.ph.i.i.i

_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE8TraverseERNS0_9BaseSpaceE.exit.i.i: ; preds = %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE8TraverseERNS0_8BasePageE.exit.i.i.i, %bb.b
  %.sroa.0.6 = phi i64 [ %.sroa.0.0, %bb.b ], [ %.sroa.0.5, %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE8TraverseERNS0_8BasePageE.exit.i.i.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 8 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %.val1
  br i1 %i.bg, label %_ZN5cppgc8internal12_GLOBAL__N_117ObjectSizeCounter7GetSizeERNS0_7RawHeapE.exit, label %bb.b

_ZN5cppgc8internal12_GLOBAL__N_117ObjectSizeCounter7GetSizeERNS0_7RawHeapE.exit: ; preds = %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE8TraverseERNS0_9BaseSpaceE.exit.i.i, %bb.a
  %.sroa.0.7 = phi i64 [ 0, %bb.a ], [ %.sroa.0.6, %_ZN5cppgc8internal11HeapVisitorINS0_12_GLOBAL__N_117ObjectSizeCounterEE8TraverseERNS0_9BaseSpaceE.exit.i.i ]
  ret i64 %.sroa.0.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN5cppgc8internal8HeapBase20ExecutePreFinalizersEv(ptr noundef nonnull align 8 dereferenceable(512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.cppgc::subtle::DisallowGarbageCollectionScope", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5cppgc6subtle30DisallowGarbageCollectionScopeC1ERNS_10HeapHandleE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(2) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  call void @_ZN5cppgc8internal19PreFinalizerHandler19InvokePreFinalizersEv(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #18
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  store i64 0, ptr %i.e, align 8
  call void @_ZN5cppgc6subtle30DisallowGarbageCollectionScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i64 %i.f
}

declare void @_ZN5cppgc6subtle30DisallowGarbageCollectionScopeC1ERNS_10HeapHandleE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 1 dereferenceable(2)) unnamed_addr #1

declare void @_ZN5cppgc8internal19PreFinalizerHandler19InvokePreFinalizersEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN5cppgc6subtle30DisallowGarbageCollectionScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal8HeapBase9TerminateEv(ptr noundef nonnull align 8 dereferenceable(512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.cppgc::internal::PersistentRegionLock", align 1 ; 4 uses
  %2 = alloca %"class.cppgc::subtle::DisallowGarbageCollectionScope", align 8 ; 4 uses
  %3 = alloca %"class.cppgc::internal::PersistentRegionLock", align 1 ; 4 uses
  %4 = alloca %"class.cppgc::internal::PersistentRegionLock", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(512) %0) #18
  br i1 %i.f, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.h = tail call noundef zeroext i1 @_ZNK5cppgc8internal7Sweeper25IsSweepingOnMutatorThreadEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18
  br i1 %i.h, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = tail call noundef zeroext i1 @_ZN5cppgc8internal7Sweeper15FinishIfRunningEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.g
  %.0 = phi i64 [ 0, %bb.g ], [ %i.af, %bb.l ]    ; 3 uses
  call void @_ZN5cppgc8internal20PersistentRegionBase17ClearAllUsedNodesEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j) #18
  call void @_ZN5cppgc8internal20PersistentRegionBase17ClearAllUsedNodesEv(ptr noundef nonnull align 8 dereferenceable(48) %i.k) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN5cppgc8internal20PersistentRegionLockC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @_ZN5cppgc8internal27CrossThreadPersistentRegion17ClearAllUsedNodesEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l) #18
  call void @_ZN5cppgc8internal27CrossThreadPersistentRegion17ClearAllUsedNodesEv(ptr noundef nonnull align 8 dereferenceable(48) %i.m) #18
  call void @_ZN5cppgc8internal20PersistentRegionLockD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  store i8 1, ptr %i.n, align 8
  %i.s = load ptr, ptr %i.o, align 8
  call void @_ZN5cppgc8internal14StatsCollector20NotifyMarkingStartedENS0_14CollectionTypeENS_4Heap11MarkingTypeENS0_13MarkingConfig10IsForcedGCE(ptr noundef nonnull align 8 dereferenceable(336) %i.s, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1) #18
  call void @_ZN5cppgc8internal15ObjectAllocator28ResetLinearAllocationBuffersEv(ptr noundef nonnull align 8 dereferenceable(48) %i.p) #18
  %i.t = load ptr, ptr %i.o, align 8
  call void @_ZN5cppgc8internal14StatsCollector22NotifyMarkingCompletedEm(ptr noundef nonnull align 8 dereferenceable(336) %i.t, i64 noundef 0) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN5cppgc6subtle30DisallowGarbageCollectionScopeC1ERNS_10HeapHandleE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %i.q) #18
  %i.u = load ptr, ptr %i.r, align 8
  call void @_ZN5cppgc8internal19PreFinalizerHandler19InvokePreFinalizersEv(ptr noundef nonnull align 8 dereferenceable(56) %i.u) #18
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 0, ptr %i.w, align 8
  call void @_ZN5cppgc6subtle30DisallowGarbageCollectionScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @_ZN5cppgc8internal7Sweeper5StartENS0_14SweepingConfigE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 0, i8 0) #18
  store i8 0, ptr %i.n, align 8
  %i.x = call noundef zeroext i1 @_ZN5cppgc8internal7Sweeper15FinishIfRunningEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #18 ; 0 uses
  %i.y = call noundef i64 @_ZNK5cppgc8internal20PersistentRegionBase10NodesInUseEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j) #18
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.z = call noundef i64 @_ZNK5cppgc8internal20PersistentRegionBase10NodesInUseEv(ptr noundef nonnull align 8 dereferenceable(48) %i.k) #18
  %.not14 = icmp eq i64 %i.z, 0
  br i1 %.not14, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZN5cppgc8internal20PersistentRegionLockC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  %i.aa = call noundef i64 @_ZNK5cppgc8internal27CrossThreadPersistentRegion10NodesInUseEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l) #18
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %bb.k, label %"_ZZN5cppgc8internal8HeapBase9TerminateEvENK3$_0clEv.exit"

bb.k:                                             ; preds = %bb.j
  %i.ab = call noundef i64 @_ZNK5cppgc8internal27CrossThreadPersistentRegion10NodesInUseEv(ptr noundef nonnull align 8 dereferenceable(48) %i.m) #18
  %i.ac = icmp ne i64 %i.ab, 0
  br label %"_ZZN5cppgc8internal8HeapBase9TerminateEvENK3$_0clEv.exit"

"_ZZN5cppgc8internal8HeapBase9TerminateEvENK3$_0clEv.exit": ; preds = %bb.j, %bb.k
  %i.ad = phi i1 [ true, %bb.j ], [ %i.ac, %bb.k ]
  call void @_ZN5cppgc8internal20PersistentRegionLockD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.l

bb.l:                                             ; preds = %"_ZZN5cppgc8internal8HeapBase9TerminateEvENK3$_0clEv.exit", %bb.i, %bb.h
  %i.ae = phi i1 [ true, %bb.i ], [ true, %bb.h ], [ %i.ad, %"_ZZN5cppgc8internal8HeapBase9TerminateEvENK3$_0clEv.exit" ]
  %i.af = add nuw nsw i64 %.0, 1
  %i.ag = icmp samesign ult i64 %.0, 19
  %i.ah = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.h, label %bb.m, !llvm.loop !39

bb.m:                                             ; preds = %bb.l
  %i.ai = call noundef i64 @_ZNK5cppgc8internal20PersistentRegionBase10NodesInUseEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j) #18
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %bb.n, !prof !5

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #21
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ak = call noundef i64 @_ZNK5cppgc8internal20PersistentRegionBase10NodesInUseEv(ptr noundef nonnull align 8 dereferenceable(48) %i.k) #18
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.q, label %bb.p, !prof !5

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #21
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN5cppgc8internal20PersistentRegionLockC1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  %i.am = call noundef i64 @_ZNK5cppgc8internal27CrossThreadPersistentRegion10NodesInUseEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l) #18
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.s, label %bb.r, !prof !5

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #21
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ao = call noundef i64 @_ZNK5cppgc8internal27CrossThreadPersistentRegion10NodesInUseEv(ptr noundef nonnull align 8 dereferenceable(48) %i.m) #18
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %5, label %bb.t, !prof !5

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #21
  unreachable

5:                                                ; preds = %bb.s
  call void @_ZN5cppgc8internal20PersistentRegionLockD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %6 = icmp samesign ult i64 %.0, 20
  br i1 %6, label %bb.u, label %7, !prof !5

7:                                                ; preds = %5
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #21
  unreachable

bb.u:                                             ; preds = %5
  call void @_ZN5cppgc8internal15ObjectAllocator28ResetLinearAllocationBuffersEv(ptr noundef nonnull align 8 dereferenceable(48) %i.p) #18
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK5cppgc8internal7Sweeper25IsSweepingOnMutatorThreadEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5cppgc8internal7Sweeper15FinishIfRunningEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN5cppgc8internal20PersistentRegionBase17ClearAllUsedNodesEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN5cppgc8internal20PersistentRegionLockC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

declare void @_ZN5cppgc8internal27CrossThreadPersistentRegion17ClearAllUsedNodesEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN5cppgc8internal20PersistentRegionLockD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

declare void @_ZN5cppgc8internal14StatsCollector20NotifyMarkingStartedENS0_14CollectionTypeENS_4Heap11MarkingTypeENS0_13MarkingConfig10IsForcedGCE(ptr noundef nonnull align 8 dereferenceable(336), i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @_ZN5cppgc8internal15ObjectAllocator28ResetLinearAllocationBuffersEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN5cppgc8internal14StatsCollector22NotifyMarkingCompletedEm(ptr noundef nonnull align 8 dereferenceable(336), i64 noundef) local_unnamed_addr #1

declare void @_ZN5cppgc8internal7Sweeper5StartENS0_14SweepingConfigE(ptr noundef nonnull align 8 dereferenceable(16), i64, i8) local_unnamed_addr #1

declare noundef i64 @_ZNK5cppgc8internal20PersistentRegionBase10NodesInUseEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef i64 @_ZNK5cppgc8internal27CrossThreadPersistentRegion10NodesInUseEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal8HeapBase17CollectStatisticsENS_14HeapStatistics11DetailLevelE(ptr dead_on_unwind noalias writable sret(%"struct.cppgc::HeapStatistics") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.cppgc::internal::HeapStatisticsCollector", align 8 ; 10 uses
  %i.a = icmp eq i8 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = tail call noundef i64 @_ZNK5cppgc8internal20NormalPageMemoryPool12PooledMemoryEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d) #18 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 @_ZNK5cppgc8internal14StatsCollector21allocated_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(336) %i.g) #18
  %i.i = add i64 %i.h, %i.e
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = tail call noundef i64 @_ZNK5cppgc8internal14StatsCollector20resident_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(336) %i.j) #18
  %i.l = add i64 %i.k, %i.e
  store i64 %i.i, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = tail call noundef i64 @_ZNK5cppgc8internal14StatsCollector21allocated_object_sizeEv(ptr noundef nonnull align 8 dereferenceable(336) %i.o) #18
  store i64 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i8 0, i64 48, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.u = tail call noundef zeroext i1 @_ZN5cppgc8internal7Sweeper15FinishIfRunningEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #18 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @_ZN5cppgc8internal15ObjectAllocator28ResetLinearAllocationBuffersEv(ptr noundef nonnull align 8 dereferenceable(48) %i.v) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  store ptr %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i64 1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  call void @_ZN5cppgc8internal23HeapStatisticsCollector25CollectDetailedStatisticsEPNS0_8HeapBaseE(ptr dead_on_unwind writable sret(%"struct.cppgc::HeapStatistics") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull %1) #18
  %i.ac = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPKvSt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.ac, %bb.c ] ; 2 uses
  %i.ad = load ptr, ptr %.06.i.i.i.i.i, align 8   ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #20
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIPKvSt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !40

_ZNSt10_HashtableIPKvSt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %i.ae = load ptr, ptr %i.w, align 8
  %i.af = load i64, ptr %i.y, align 8
  %i.ag = shl i64 %i.af, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.ag, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.x
  br i1 %i.ai, label %_ZN5cppgc8internal23HeapStatisticsCollectorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIPKvSt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.aj = load i64, ptr %i.y, align 8
  %i.ak = shl i64 %i.aj, 3
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #20
  br label %_ZN5cppgc8internal23HeapStatisticsCollectorD2Ev.exit

_ZN5cppgc8internal23HeapStatisticsCollectorD2Ev.exit: ; preds = %_ZNSt10_HashtableIPKvSt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.e

bb.e:                                             ; preds = %_ZN5cppgc8internal23HeapStatisticsCollectorD2Ev.exit, %bb.b
  ret void
}

declare noundef i64 @_ZNK5cppgc8internal20NormalPageMemoryPool12PooledMemoryEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef i64 @_ZNK5cppgc8internal14StatsCollector21allocated_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #1

declare noundef i64 @_ZNK5cppgc8internal14StatsCollector20resident_memory_sizeEv(ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #1

declare noundef i64 @_ZNK5cppgc8internal14StatsCollector21allocated_object_sizeEv(ptr noundef nonnull align 8 dereferenceable(336)) local_unnamed_addr #1

declare void @_ZN5cppgc8internal23HeapStatisticsCollector25CollectDetailedStatisticsEPNS0_8HeapBaseE(ptr dead_on_unwind writable sret(%"struct.cppgc::HeapStatistics") align 8, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal8HeapBase17CallMoveListenersEPhS2_m(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.06.09 = phi ptr [ %i.i, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.06.09, align 8      ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %1, ptr noundef %2, i64 noundef %3) #18
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal8HeapBase20RegisterMoveListenerEPNS0_12MoveListenerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(512) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN5cppgc8internal12MoveListenerESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIPN5cppgc8internal12MoveListenerESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #21
  unreachable

_ZNKSt6vectorIPN5cppgc8internal12MoveListenerESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #19 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
end_hunk_1
