Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/QueueObserver?download=true
inline.NumInlined: 427
inline.NumDeleted: 261
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0
%"struct.std::atomic.18" = type { %"struct.std::__atomic_base.19" }
%"struct.std::__atomic_base.19" = type { ptr }
%"struct.folly::WorkerProvider::IdsWithKeepAlive" = type { %"class.std::unique_ptr", %"class.std::vector" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.folly::SharedMutexImpl<false>::WaitForever" = type { i8 }
%"class.std::shared_lock" = type <{ ptr, %"struct.folly::SharedMutexToken", [4 x i8] }>
%"struct.folly::SharedMutexToken" = type { i16, i16 }
%"class.folly::LockedPtr" = type { %"class.std::shared_lock" }
%"struct.std::__detail::_AllocNode" = type { ptr }
%"class.folly::LockedPtr.24" = type { %"class.std::unique_lock" }
%"class.std::unique_lock" = type <{ ptr, i8, [7 x i8] }>
%"class.std::unique_ptr.30" = type { %"struct.std::__uniq_ptr_data.31" }
%"struct.std::__uniq_ptr_data.31" = type { %"class.std::__uniq_ptr_impl.32" }
%"class.std::__uniq_ptr_impl.32" = type { %"class.std::tuple.33" }
%"class.std::tuple.33" = type { %"struct.std::_Tuple_impl.34" }
%"struct.std::_Tuple_impl.34" = type { %"struct.std::_Head_base.37" }
%"struct.std::_Head_base.37" = type { ptr }

$_ZN5folly22ThreadIdWorkerProviderD2Ev = comdat any

$_ZN5folly22ThreadIdWorkerProviderD0Ev = comdat any

$_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev = comdat any

$_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_ = comdat any

$_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv = comdat any

$_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv = comdat any

$_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE1ELNSE_23SynchronizedMutexMethodE0EEEED2Ev = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j = comdat any

$_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_ = comdat any

$_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm = comdat any

$_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE = comdat any

$_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKi = comdat any

$_ZTIN5folly14WorkerProviderE = comdat any

$_ZTSN5folly14WorkerProviderE = comdat any

$_ZTIN5folly14WorkerProvider9KeepAliveE = comdat any

$_ZTSN5folly14WorkerProvider9KeepAliveE = comdat any

$_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache = comdat any

$_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl = comdat any

$_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state = comdat any

$_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl = comdat any

@_ZTVN5folly22ThreadIdWorkerProviderE = constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly22ThreadIdWorkerProviderE, ptr @_ZN5folly22ThreadIdWorkerProviderD2Ev, ptr @_ZN5folly22ThreadIdWorkerProviderD0Ev, ptr @_ZN5folly22ThreadIdWorkerProvider16collectThreadIdsEv] }, align 8
@_ZTIN5folly22ThreadIdWorkerProviderE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly22ThreadIdWorkerProviderE, ptr @_ZTIN5folly14WorkerProviderE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly22ThreadIdWorkerProviderE = constant [33 x i8] c"N5folly22ThreadIdWorkerProviderE\00", align 1
@_ZTIN5folly14WorkerProviderE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly14WorkerProviderE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5folly14WorkerProviderE = linkonce_odr constant [25 x i8] c"N5folly14WorkerProviderE\00", comdat, align 1
@_ZTVN12_GLOBAL__N_115WorkerKeepAliveE = internal constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_115WorkerKeepAliveE, ptr @_ZN12_GLOBAL__N_115WorkerKeepAliveD2Ev, ptr @_ZN12_GLOBAL__N_115WorkerKeepAliveD0Ev] }, align 8
@_ZTIN12_GLOBAL__N_115WorkerKeepAliveE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_115WorkerKeepAliveE, ptr @_ZTIN5folly14WorkerProvider9KeepAliveE }, align 8
@_ZTSN12_GLOBAL__N_115WorkerKeepAliveE = internal constant [34 x i8] c"N12_GLOBAL__N_115WorkerKeepAliveE\00", align 1
@_ZTIN5folly14WorkerProvider9KeepAliveE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly14WorkerProvider9KeepAliveE }, comdat, align 8
@_ZTSN5folly14WorkerProvider9KeepAliveE = linkonce_odr constant [35 x i8] c"N5folly14WorkerProvider9KeepAliveE\00", comdat, align 1
@_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache = linkonce_odr global { i32 } zeroinitializer, comdat, align 4
@_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl = linkonce_odr thread_local local_unnamed_addr global { i32 } zeroinitializer, comdat, align 4
@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE = external global [2048 x %"struct.std::atomic.16"], align 64
@_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state = linkonce_odr global { [257 x [256 x i8]], %"struct.std::atomic.18" } zeroinitializer, comdat, align 8
@_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl = linkonce_odr thread_local local_unnamed_addr global { i32 } zeroinitializer, comdat, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

@_ZN5folly14WorkerProvider9KeepAliveD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5folly14WorkerProvider9KeepAliveD2Ev

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly22ThreadIdWorkerProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly22ThreadIdWorkerProviderE, i64 16), ptr %0, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.d = load atomic i32, ptr %i.c monotonic, align 8 ; 2 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !14
  %.not.i = icmp ult i32 %i.d, 2048
  br i1 %.not.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE30cleanupTokenlessSharedDeferredERj(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #22
  unreachable

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.i = load atomic i32, ptr %i.h monotonic, align 8 ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !14
  %.not.i.i = icmp ult i32 %i.i, 2048
  br i1 %.not.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i, label %bb.d, !prof !15

bb.d:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE30cleanupTokenlessSharedDeferredERj(ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #22
  unreachable

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i: ; preds = %bb.d, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.m, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i ] ; 2 uses
  %i.n = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !26 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 16) #23
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !27

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit.i
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !30
  %i.r = shl i64 %i.q, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.r, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN5folly12SynchronizedISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.v = load i64, ptr %i.p, align 8, !tbaa !30
  %i.w = shl i64 %i.v, 3
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZN5folly12SynchronizedISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit

_ZN5folly12SynchronizedISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly22ThreadIdWorkerProviderD0Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5folly22ThreadIdWorkerProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly22ThreadIdWorkerProvider16collectThreadIdsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.folly::WorkerProvider::IdsWithKeepAlive") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(76) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %4 = alloca %"class.std::shared_lock", align 8  ; 8 uses
  %5 = alloca %"class.folly::LockedPtr", align 8  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i16 0, ptr %i.f, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 0, ptr %i.g, align 2, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.h = load atomic i32, ptr %i.e monotonic, align 8 ; 4 uses
  store i32 %i.h, ptr %i.d, align 4, !tbaa !14
  %i.i = and i32 %i.h, -1408
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = or disjoint i32 %i.h, 2048
  %i.l = cmpxchg ptr %i.e, i32 %i.h, i32 %i.k seq_cst seq_cst, align 4 ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  br i1 %i.m, label %bb.c, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.b
  %i.n = extractvalue { i32, i1 } %i.l, 0
  store i32 %i.n, ptr %i.d, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 2, ptr %i.f, align 8, !tbaa !37
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i, %bb.a
  %i.o = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 2 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  br label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.p = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.r ; 8 uses

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit
  %i.q = load ptr, ptr %4, align 8, !tbaa !39, !noalias !40
  %i.r = load i32, ptr %i.f, align 8, !noalias !40
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_115WorkerKeepAliveE, i64 16), ptr %i.p, align 8, !tbaa !12, !noalias !40
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 0, ptr %i.t, align 8, !noalias !40
  store ptr %i.q, ptr %i.s, align 8, !tbaa !39, !noalias !40
  store i32 %i.r, ptr %i.t, align 8, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !31, !alias.scope !43
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i16 0, ptr %i.v, align 8, !tbaa !37, !alias.scope !43
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 10 ; 2 uses
  store i16 0, ptr %i.w, align 2, !tbaa !38, !alias.scope !43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12, !noalias !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12, !noalias !43
  %i.x = load atomic i32, ptr %i.u monotonic, align 8, !noalias !43 ; 4 uses
  store i32 %i.x, ptr %i.c, align 4, !tbaa !14, !noalias !43
  %i.y = and i32 %i.x, -1408
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit
  %i.aa = or disjoint i32 %i.x, 2048
  %i.ab = cmpxchg ptr %i.u, i32 %i.x, i32 %i.aa seq_cst seq_cst, align 4, !noalias !43 ; 2 uses
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.ad = extractvalue { i32, i1 } %i.ab, 0
  store i32 %i.ad, ptr %i.c, align 4, !noalias !43
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  store i16 2, ptr %i.v, align 8, !tbaa !37, !alias.scope !43
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit
  %i.ae = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.h unwind label %_ZNKSt14default_deleteIN12_GLOBAL__N_115WorkerKeepAliveEEclEPS1_.exit.i16 ; 0 uses

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12, !noalias !43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12, !noalias !43
  store ptr %i.p, ptr %0, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  %i.ah = select i1 %.not.i.i, i64 16, i64 -40
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 0, %bb.h ] ; 2 uses
  %.sroa.02.04.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.aj, %bb.h ]
  %i.al = load ptr, ptr %.sroa.02.04.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.am = add nuw nsw i64 %.05.i.i.i, 1           ; 3 uses
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIiLb1ELb0EEEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !49

_ZSt10__distanceINSt8__detail20_Node_const_iteratorIiLb1ELb0EEEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ao = icmp samesign ugt i64 %.05.i.i.i, 2305843009213693950
  br i1 %i.ao, label %bb.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

bb.i:                                             ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIiLb1ELb0EEEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #25
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.i
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceINSt8__detail20_Node_const_iteratorIiLb1ELb0EEEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit.i.i
  %i.ap = shl nuw nsw i64 %i.am, 2
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  store ptr %i.aq, ptr %i.af, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !53
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc5.i
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.aq, %.noexc5.i ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %.noexc5.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !14
  store i32 %i.au, ptr %.07.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aw = load ptr, ptr %.sroa.03.06.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !54

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i:           ; preds = %bb.i, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #12, !call_target !55, !inline_history !70
  call void @_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit17

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.h ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.bc, align 8, !tbaa !71
  %i.bd = load i16, ptr %i.v, align 8, !tbaa !37  ; 2 uses
  %.not.i.i12 = icmp eq i16 %i.bd, 0
  br i1 %.not.i.i12, label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit, label %6

6:                                                ; preds = %.loopexit
  %7 = load ptr, ptr %5, align 8, !tbaa !31       ; 7 uses
  switch i16 %i.bd, label %bb.o [
    i16 1, label %bb.j
    i16 3, label %bb.n
  ]

bb.j:                                             ; preds = %6
  %i.be = load atomic i32, ptr %7 acquire, align 4
  %i.bf = and i32 %i.be, 768
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %.noexc29 unwind label %bb.q

.noexc29:                                         ; preds = %bb.k
  br i1 %i.bh, label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.noexc29, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bi = atomicrmw sub ptr %7, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bj = add i32 %i.bi, -2048                    ; 2 uses
  store i32 %i.bj, ptr %i.b, align 4, !tbaa !14
  %i.bk = icmp ugt i32 %i.bj, 2047
  %i.bl = and i32 %i.bi, 16
  %.not.i.i.i.i26 = icmp eq i32 %i.bl, 0
  %or.cond.i.i.i27 = or i1 %i.bk, %.not.i.i.i.i26
  br i1 %or.cond.i.i.i27, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i28, label %bb.m, !prof !72

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i28 unwind label %bb.q

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i28: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit

bb.n:                                             ; preds = %6
  %i.bm = load i16, ptr %i.w, align 2, !tbaa !38
  %i.bn = zext i16 %i.bm to i64
  %i.bo = ptrtoint ptr %7 to i64
  %.idx.i22 = shl nuw nsw i64 %i.bn, 5
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i22
  %i.bq = cmpxchg ptr %i.bp, i64 %i.bo, i64 0 seq_cst seq_cst, align 8
  %i.br = extractvalue { i64, i1 } %i.bq, 1
  br i1 %i.br, label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bs = atomicrmw sub ptr %7, i32 2048 seq_cst, align 4 ; 2 uses
  %i.bt = add i32 %i.bs, -2048                    ; 2 uses
  store i32 %i.bt, ptr %i.a, align 4, !tbaa !14
  %i.bu = icmp ugt i32 %i.bt, 2047
  %i.bv = and i32 %i.bs, 16
  %.not.i.i.i23 = icmp eq i32 %i.bv, 0
  %or.cond.i.i24 = or i1 %i.bu, %.not.i.i.i23
  br i1 %or.cond.i.i24, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i25, label %bb.p, !prof !72

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i25 unwind label %bb.q

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i25: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.k
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #22
  unreachable

_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit: ; preds = %.loopexit, %.noexc29, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i28, %bb.n, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void

bb.r:                                             ; preds = %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit17

_ZNKSt14default_deleteIN12_GLOBAL__N_115WorkerKeepAliveEEclEPS1_.exit.i16: ; preds = %bb.g
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.ca = load ptr, ptr %i.p, align 8, !tbaa !12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #12, !call_target !73, !inline_history !199
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit17

_ZNSt10unique_ptrIN12_GLOBAL__N_115WorkerKeepAliveESt14default_deleteIS1_EED2Ev.exit17: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_115WorkerKeepAliveEEclEPS1_.exit.i16, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.by, %bb.r ], [ %i.ay, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ], [ %i.bz, %_ZNKSt14default_deleteIN12_GLOBAL__N_115WorkerKeepAliveEEclEPS1_.exit.i16 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !37
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !31
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSE_22SynchronizedMutexLevelE2ELNSE_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !37
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !31
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115WorkerKeepAliveD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_115WorkerKeepAliveE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !37
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115WorkerKeepAliveD0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_115WorkerKeepAliveE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !37
  %.not.i.i = icmp eq i16 %i.b, 0
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_115WorkerKeepAliveD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZN12_GLOBAL__N_115WorkerKeepAliveD2Ev.exit unwind label %bb.c, !inline_history !200

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22, !inline_history !200
  unreachable

_ZN12_GLOBAL__N_115WorkerKeepAliveD2Ev.exit:      ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5folly14WorkerProvider9KeepAliveD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !201

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #26
  br label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit

_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.e, %bb.b ], [ %i.d, %bb.a ]
  %i.g = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl) ; 2 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.f, i32 256)
  %.sroa.speculated.i = zext nneg i32 %i.h to i64
  %i.i = getelementptr inbounds nuw [256 x i8], ptr @_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state, i64 %.sroa.speculated.i
  %i.j = icmp eq ptr %2, null                     ; 2 uses
  %i.k = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.l = or disjoint i64 %i.k, 1
  %i.m = tail call nonnull align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl)
end_hunk_0
begin_hunk_1_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_:bb.a
  br i1 %i.m, label %.loopexit, label %.outer, !llvm.loop !219

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef i64 @llvm.x86.rdtsc()
  %i.o = sub i64 %i.n, %i.d
  %i.p = icmp ult i64 %i.o, 4000
  br i1 %i.p, label %bb.f, label %.thread, !prof !15

.thread:                                          ; preds = %bb.e
  tail call void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %.1.ph)
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !202
  br label %bb.c, !llvm.loop !220

.loopexit:                                        ; preds = %bb.d, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !201

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.e = tail call noundef i32 @sched_yield() #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.235 = phi i32 [ %3, %bb.c ], [ %i.l, %bb.e ]  ; 3 uses
  %i.f = shl i32 %.235, 2
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.g
  %i.i = load atomic i64, ptr %i.h acquire, align 32
  %i.j = and i64 %i.i, -2
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i32 %.235, 1                         ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %.critedge, label %bb.d, !llvm.loop !221

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @sched_yield() #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.235.1 = phi i32 [ %.235, %bb.f ], [ %i.u, %bb.h ] ; 3 uses
  %i.o = shl i32 %.235.1, 2
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.p
  %i.r = load atomic i64, ptr %i.q acquire, align 32
  %i.s = and i64 %i.r, -2
  %i.t = icmp eq i64 %i.s, %i.d
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i32 %.235.1, 1                       ; 2 uses
  %i.v = icmp eq i32 %i.u, %i.c
  br i1 %i.v, label %.critedge, label %bb.g, !llvm.loop !221

bb.i:                                             ; preds = %bb.g
  %i.w = tail call noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.235.2 = phi i32 [ %.235.1, %bb.i ], [ %i.ad, %bb.k ] ; 4 uses
  %i.x = shl i32 %.235.2, 2
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.y
  %i.aa = load atomic i64, ptr %i.z acquire, align 32
  %i.ab = and i64 %i.aa, -2
  %i.ac = icmp eq i64 %i.ab, %i.d
  br i1 %i.ac, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = add i32 %.235.2, 1                      ; 2 uses
  %i.ae = icmp eq i32 %i.ad, %i.c
  br i1 %i.ae, label %.critedge, label %bb.j, !llvm.loop !221

bb.l:                                             ; preds = %bb.j
  %i.af = icmp ult i32 %.235.2, %i.c
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.l
  %i.ag = zext i32 %.235.2 to i64                 ; 4 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 2 uses
  %i.ah = sub nsw i64 %wide.trip.count, %i.ag     ; 3 uses
  %xtraiter = and i64 %i.ah, 1
  %i.ai = add nsw i64 %wide.trip.count, -1
  %i.aj = icmp eq i64 %i.ai, %i.ag
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ah, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.new
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 3 uses
  %.052 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.q ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.ak = shl i64 %indvars.iv, 2
  %i.al = and i64 %i.ak, 4294967292
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.al ; 2 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 32 ; 2 uses
  %i.ao = and i64 %i.an, -2
  %i.ap = icmp eq i64 %i.ao, %i.d
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = cmpxchg ptr %i.am, i64 %i.an, i64 0 seq_cst seq_cst, align 8
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  %i.as = zext i1 %i.ar to i32
  %..0 = add i32 %.052, %i.as
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi i32 [ %.052, %bb.m ], [ %..0, %bb.n ] ; 2 uses
  %indvars.iv.next = shl i64 %indvars.iv, 2
  %i.at = add i64 %indvars.iv.next, 4
  %i.au = and i64 %i.at, 4294967292
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.au ; 2 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 32 ; 2 uses
  %i.ax = and i64 %i.aw, -2
  %i.ay = icmp eq i64 %i.ax, %i.d
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = cmpxchg ptr %i.av, i64 %i.aw, i64 0 seq_cst seq_cst, align 8
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  %i.bb = zext i1 %i.ba to i32
  %..0.1 = add i32 %.1, %i.bb
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.1 = phi i32 [ %.1, %bb.o ], [ %..0.1, %bb.p ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !222

._crit_edge.unr-lcssa:                            ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ %i.ag, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.052.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod92 = trunc i64 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.bc = shl i64 %indvars.iv.epil.init, 2
  %i.bd = and i64 %i.bc, 4294967292
  %i.be = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %i.bd ; 2 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 32 ; 2 uses
  %i.bg = and i64 %i.bf, -2
  %i.bh = icmp eq i64 %i.bg, %i.d
  br i1 %i.bh, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %.epil.preheader
  %i.bi = cmpxchg ptr %i.be, i64 %i.bf, i64 0 seq_cst seq_cst, align 8
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  %i.bk = zext i1 %i.bj to i32
  %..0.epil = add i32 %.052.epil.init, %i.bk
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.r, %._crit_edge.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.unr-lcssa ], [ %.052.epil.init, %.epil.preheader ], [ %..0.epil, %bb.r ] ; 2 uses
  %.not40 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not40, label %.critedge, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bl = shl i32 %.1.lcssa, 11                   ; 2 uses
  %i.bm = atomicrmw add ptr %0, i32 %i.bl seq_cst, align 4
  %i.bn = add i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %1, align 4, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.k, %bb.l, %._crit_edge, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !223
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread35

.thread35:                                        ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !224  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %1, align 4                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !26 ; 4 uses
  %i.m = icmp eq ptr %.sroa.028.0, null
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !14
  %i.p = icmp eq i32 %i.l, %i.o
  br i1 %i.p, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !225

bb.e:                                             ; preds = %bb.c
  %i.q = sext i32 %i.l to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !30
  %i.t = urem i64 %i.q, %i.s
  br label %.critedge

bb.f:                                             ; preds = %.thread35
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !26   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !14
  %i.x = icmp eq i32 %i.c, %i.w
  br i1 %i.x, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.y = icmp eq i32 %i.c, %i.ab
  br i1 %i.y, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !226

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.z, %bb.g ], [ %i.u, %bb.f ]
  %i.z = load ptr, ptr %.020.i.i, align 8, !tbaa !26 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.z, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !14 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.f
  %.not19.i.i = icmp eq i64 %i.ad, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !226

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !226

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread35
  %i.ae = phi i64 [ %i.t, %bb.e ], [ %i.g, %.thread35 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.af = phi i64 [ %i.q, %bb.e ], [ %i.d, %.thread35 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.ag = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %4 = load i32, ptr %1, align 4, !tbaa !14
  store i32 %4, ptr %i.ah, align 8, !tbaa !14
  %i.ai = invoke ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull %i.ag, i64 noundef 1)
          to label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 16) #23
  resume { ptr, i32 } %i.aj

_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ai, %.critedge ], [ %i.u, %bb.f ], [ %i.z, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !223
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #12 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !227
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %i.q) #22
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !30
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !224  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26
  store ptr %i.w, ptr %3, align 8, !tbaa !26
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !224
  store ptr %3, ptr %i.x, align 8, !tbaa !26
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16
  store ptr %i.z, ptr %3, align 8, !tbaa !26
  store ptr %3, ptr %i.y, align 8, !tbaa !16
  %i.aa = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !30
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !224
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !224
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !223
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !223
  ret ptr %3
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !201

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !228
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !201

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !16
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !26 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !14
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !224  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !16
  store ptr %i.p, ptr %.02530, align 8, !tbaa !26
  store ptr %.02530, ptr %i.g, align 8, !tbaa !16
  store ptr %i.g, ptr %i.n, align 8, !tbaa !224
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !26
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !224
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !26
  store ptr %i.s, ptr %.02530, align 8, !tbaa !26
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !224
  store ptr %.02530, ptr %i.t, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
end_hunk_1
