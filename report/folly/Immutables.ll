Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Immutables?download=true
inline.NumInlined: 904
inline.NumDeleted: 431
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0

$_ZN5folly15throw_exceptionISt9bad_allocEEvOT_ = comdat any

$_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv = comdat any

$_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPS8_m = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_ = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j = comdat any

$_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSK_22SynchronizedMutexLevelE2ELNSK_23SynchronizedMutexMethodE0EEEED2Ev = comdat any

$_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_ = comdat any

$_ZN5folly14AccessSpreaderISt6atomicE14pickGetcpuFuncEv = comdat any

$_ZN5folly14FallbackGetcpuINS_18SequentialThreadIdEE6getcpuEPjS3_Pv = comdat any

$_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_ = comdat any

$_ZNK5folly12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEESaIS7_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEE4copyEv = comdat any

$_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSD_EEvOT_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE26buildFromF14TableCatchColdEPSD_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15directBuildFromIRKSD_EEvOT_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_ = comdat any

$_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSB_ZNSB_11beforeBuildEmmSE_EUlRKS8_E_EEbmOT_RKT0_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE5resetEv = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv = comdat any

$_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = comdat any

$_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = comdat any

$_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE = comdat any

$_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0 = comdat any

$_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg = comdat any

$_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache = comdat any

$_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl = comdat any

$_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state = comdat any

$_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl = comdat any

$_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_E30__folly_detail_safe_assert_arg_0 = comdat any

@_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11 = internal global %"class.folly::Indestructible" zeroinitializer, align 8
@_ZGVZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11 = internal global i64 0, align 8
@_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = linkonce_odr constant %"struct.folly::f14::detail::F14EmptyTagVector" { %"struct.std::array" zeroinitializer, i8 -1 }, comdat, align 16
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str = private unnamed_addr constant [11 x i8] c"rehashImpl\00", align 1
@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.1, ptr @.str.2, i32 2479, ptr @.str, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"hp.second == srcChunk->tag(srcI)\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/folly/folly/folly/container/detail/F14Table.h\00", align 1
@_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE = linkonce_odr constant %"struct.folly::c_array" { [2 x i8] c"\01\00" }, comdat, align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"setTag\00", align 1
@_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0 = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.5, ptr @.str.2, i32 779, ptr @.str.4, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"tags_[index] == 0\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"clearTag\00", align 1
@_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.7, ptr @.str.2, i32 784, ptr @.str.6, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"tags_[index] != 0\00", align 1
@_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache = linkonce_odr global { i32 } zeroinitializer, comdat, align 4
@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE = external global [2048 x %"struct.std::atomic.28"], align 64
@_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE26tls_lastDeferredReaderSlotEvE2tl = linkonce_odr thread_local local_unnamed_addr global { i32 } zeroinitializer, comdat, align 4
@_ZZN5folly14AccessSpreaderISt6atomicE5stateEvE5state = linkonce_odr global { [257 x [256 x i8]], %"struct.std::atomic.31" } zeroinitializer, comdat, align 8
@_ZZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE21tls_lastTokenlessSlotEvE2tl = linkonce_odr thread_local local_unnamed_addr global { i32 } zeroinitializer, comdat, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"rehashBuildFrom\00", align 1
@_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_E30__folly_detail_safe_assert_arg_0 = linkonce_odr constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.10, ptr @.str.2, i32 2205, ptr @.str.9, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJLNS0_20safe_assert_msg_typeE1EEEEE5valueE }, comdat, align 8
@.str.10 = private unnamed_addr constant [30 x i8] c"hp.second == srcChunk->tag(i)\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

@_ZN5folly8settings21FrozenSettingProjectsC1ENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5folly8settings21FrozenSettingProjectsC2ENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEE

; Function Attrs: mustprogress uwtable
define void @_ZN5folly8settings16freezeImmutablesENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEESaIS7_EEE(ptr noundef align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"struct.std::pair.10", align 8     ; 3 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.folly::LockedPtr", align 8  ; 7 uses
  %i.c = load atomic i8, ptr @_ZGVZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11 acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11) #20
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i8 0, i64 32, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i64 8), align 8, !tbaa !28
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11) #20
  br label %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit

_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i64 24), ptr %3, align 8, !tbaa !32, !alias.scope !93
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 0, ptr %i.f, align 8, !tbaa !33, !alias.scope !93
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !93
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i64 24) acquire, align 8, !noalias !93 ; 4 uses
  store i32 %i.g, ptr %i.b, align 4, !tbaa !34, !noalias !93
  %i.h = and i32 %i.g, -1312
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %.critedge.i.i.i.i.i.i.i, !prof !35

bb.d:                                             ; preds = %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit
  %i.j = or disjoint i32 %i.g, 128
  %i.k = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i64 24), i32 %i.g, i32 %i.j seq_cst seq_cst, align 4, !noalias !93 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, !prof !36

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.m = extractvalue { i32, i1 } %i.k, 0
  store i32 %i.m, ptr %i.b, align 4, !noalias !93
  br label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i.i, %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit
  %i.n = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !93 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.critedge.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !93
  store i8 1, ptr %i.f, align 8, !tbaa !33, !alias.scope !93
  %i.o = load ptr, ptr %3, align 8, !tbaa !32     ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.o, null            ; 2 uses
  %.neg.i.i.i = select i1 %.not.i.i.i, i64 0, i64 -24
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %.neg.i.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !37
  %i.s = lshr i64 %i.r, 8                         ; 2 uses
  %.not.i.i.i.not.i.i = icmp eq i64 %i.s, 0
  %i.t = load ptr, ptr %0, align 8                ; 3 uses
  br i1 %.not.i.i.i.not.i.i, label %"_ZZN5folly8settings16freezeImmutablesENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEESaIS7_EEEENK3$_0clISD_EEDaRT_.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.s
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %"_ZN5folly3f146detail16F14VectorSetImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_ESt17integral_constantIbLb1EEE15eraseUnderlyingIRZZNS_8settings16freezeImmutablesENS_10F14FastSetIS8_SA_SC_SD_EEENK3$_0clISK_EEDaRT_EUlOSN_E_EEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESP_.exit.i.i.i", %.lr.ph.i.i.i
  %.pn.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %.sroa.01.043.i.i.i, %"_ZN5folly3f146detail16F14VectorSetImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_ESt17integral_constantIbLb1EEE15eraseUnderlyingIRZZNS_8settings16freezeImmutablesENS_10F14FastSetIS8_SA_SC_SD_EEENK3$_0clISK_EEDaRT_EUlOSN_E_EEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESP_.exit.i.i.i" ]
  %.sroa.01.043.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -32 ; 3 uses
  %i.x = ptrtoint ptr %.sroa.01.043.i.i.i to i64
  %i.y = sub i64 %i.x, %i.v                       ; 4 uses
  %i.z = ashr exact i64 %i.y, 5                   ; 4 uses
  %i.aa = icmp ult i64 %i.z, 4294967296
  call void @llvm.assume(i1 %i.aa)
  %i.ab = trunc nuw i64 %i.z to i32               ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y
  %i.ae = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %.noexc.i unwind label %bb.v   ; 2 uses

.noexc.i:                                         ; preds = %bb.f
  %i.af = lshr i64 %i.ae, 56
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.af, i64 1) ; 2 uses
  %i.ag = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i, 1
  %i.ah = or disjoint i64 %i.ag, 1
  %i.ai = trunc nuw i64 %.sroa.speculated.i.i.i.i.i.i to i8
  %i.aj = insertelement <16 x i8> poison, i8 %i.ai, i64 0
  %i.ak = shufflevector <16 x i8> %i.aj, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.al = load i64, ptr %i.q, align 8, !tbaa !37
  %i.am = and i64 %i.al, 255
  %notmask.i.i.i.i = shl nsw i64 -1, %i.am
  %i.an = xor i64 %notmask.i.i.i.i, -1
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i.i.i, %.noexc.i
  %.025.i.i.i.i = phi i64 [ %i.ae, %.noexc.i ], [ %i.bj, %.loopexit.i.i.i ] ; 2 uses
  %i.ap = and i64 %.025.i.i.i.i, %i.an
  %i.aq = shl nsw i64 %i.ap, 6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq ; 3 uses
  %i.as = load <16 x i8>, ptr %i.ar, align 16
  %i.at = icmp eq <16 x i8> %i.as, %i.ak
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = zext i16 %i.au to i32                   ; 2 uses
  %i.aw = and i32 %i.av, 4095
  %.not30.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not30.i.i.i, label %.loopexit.i.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.g
  %i.ax = icmp ne ptr %i.ar, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ax)
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.i.i, %.preheader.i.i.i
  %.sroa.09.0.i.i.i = phi i32 [ %i.bh, %.critedge.i.i.i.i ], [ %i.av, %.preheader.i.i.i ] ; 4 uses
  %i.ay = icmp ne i32 %.sroa.09.0.i.i.i, 0
  call void @llvm.assume(i1 %i.ay)
  %i.az = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.09.0.i.i.i, i1 true)
  %i.ba = zext nneg i32 %i.az to i64              ; 3 uses
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = getelementptr i8, ptr %i.ar, i64 %i.bb  ; 3 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !34
  %i.bf = icmp eq i32 %i.be, %i.ab
  br i1 %i.bf, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSD_8PrefetchE.exit.i.i.i, label %.critedge.i.i.i.i, !prof !35

.critedge.i.i.i.i:                                ; preds = %bb.h
  %i.bg = add nsw i32 %.sroa.09.0.i.i.i, -1
  %i.bh = and i32 %i.bg, %.sroa.09.0.i.i.i        ; 2 uses
  %i.bi = and i32 %i.bh, 4094
  %.not31.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not31.i.i.i, label %.loopexit.i.i.i, label %bb.h, !llvm.loop !86

.loopexit.i.i.i:                                  ; preds = %.critedge.i.i.i.i, %bb.g
  %i.bj = add i64 %i.ah, %.025.i.i.i.i
  br label %bb.g, !llvm.loop !87

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSD_8PrefetchE.exit.i.i.i: ; preds = %bb.h
  %i.bk = getelementptr i8, ptr %i.bc, i64 16
  %i.bl = load ptr, ptr %0, align 8, !tbaa !38    ; 5 uses
  %.neg.i.i.i.i.i.i.i = mul nsw i64 %i.ba, -4
  %i.bm = getelementptr inbounds i8, ptr %i.bc, i64 %.neg.i.i.i.i.i.i.i ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 14 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !42
  %.not.i20.i.i.i.i = icmp ult i8 %i.bo, 16
  br i1 %.not.i20.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSD_8PrefetchE.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.y
  %i.bq = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %.noexc3.i unwind label %bb.v  ; 2 uses

.noexc3.i:                                        ; preds = %bb.i
  %i.br = lshr i64 %i.bq, 56
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, 1
  %i.bt = or disjoint i64 %i.bs, 1
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !38
  %.pre55.i.i.i.i = load i32, ptr %i.bk, align 4, !tbaa !34
  %i.bu = zext i32 %.pre55.i.i.i.i to i64
  br label %bb.j

bb.j:                                             ; preds = %.noexc3.i, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSD_8PrefetchE.exit.i.i.i
  %i.bv = phi i64 [ %i.z, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSD_8PrefetchE.exit.i.i.i ], [ %i.bu, %.noexc3.i ]
  %i.bw = phi ptr [ %i.bl, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSD_8PrefetchE.exit.i.i.i ], [ %.pre.i.i.i.i, %.noexc3.i ]
  %.sroa.5.0.i.i.i.i.i = phi i64 [ 1, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSD_8PrefetchE.exit.i.i.i ], [ %i.bt, %.noexc3.i ]
  %.sroa.04.0.i.i.i.i.i = phi i64 [ 0, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSD_8PrefetchE.exit.i.i.i ], [ %i.bq, %.noexc3.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.bv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20, !noalias !94
  %i.by = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.bx)
          to label %.noexc4.i unwind label %bb.v  ; 2 uses

.noexc4.i:                                        ; preds = %bb.j
  %i.bz = lshr i64 %i.by, 56
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JS9_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.10") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 %i.by, i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.bx)
          to label %.noexc5.i unwind label %bb.v

.noexc5.i:                                        ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !94
  %i.ca = load i64, ptr %i.q, align 8, !tbaa !37
  %i.cb = add i64 %i.ca, -256
  store i64 %i.cb, ptr %i.q, align 8, !tbaa !37
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ba ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.noexc5.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.3) #28
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i.i.i.i: ; preds = %.noexc5.i
  store i8 0, ptr %i.cc, align 1, !tbaa !43
  %i.ce = load i8, ptr %i.bn, align 2, !tbaa !42
  %.not.i.i.i.i.i.i.i = icmp ult i8 %i.ce, 16
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIRZZNS_8settings16freezeImmutablesENS_10F14FastSetIS9_NS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENK3$_0clISM_EEDaRT_EUlOSP_E_EEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESR_.exit.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i.i.i.i
  %i.cf = load i64, ptr %i.q, align 8, !tbaa !37
  %i.cg = and i64 %i.cf, 255
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.cg
  %i.ch = xor i64 %notmask.i.i.i.i.i.i.i.i, -1    ; 2 uses
  %i.ci = load ptr, ptr %i.w, align 8, !tbaa !28  ; 4 uses
  %i.cj = and i64 %.sroa.04.0.i.i.i.i.i, %i.ch
  %i.ck = shl nsw i64 %i.cj, 6                    ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ck
  %i.cm = icmp eq ptr %i.cl, %i.bm
  br i1 %i.cm, label %.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %bb.n, %bb.l
  %.010.lcssa.i.i.i.i.i.i.i = phi i8 [ 0, %bb.l ], [ -16, %bb.n ]
  %i.cn = phi i64 [ %i.ck, %bb.l ], [ %i.cz, %bb.n ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 14 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !42
  %i.cr = add i8 %i.cq, %.010.lcssa.i.i.i.i.i.i.i
  store i8 %i.cr, ptr %i.cp, align 2, !tbaa !42
  br label %"_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIRZZNS_8settings16freezeImmutablesENS_10F14FastSetIS9_NS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENK3$_0clISM_EEDaRT_EUlOSP_E_EEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESR_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.l, %bb.n
  %i.cs = phi i64 [ %i.cz, %bb.n ], [ %i.ck, %bb.l ]
  %.01126.i.i.i.i.i.i.i = phi i64 [ %i.cx, %bb.n ], [ %.sroa.04.0.i.i.i.i.i, %bb.l ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 15 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !44  ; 2 uses
  %.not.i17.i.i.i.i.i.i.i = icmp eq i8 %i.cv, -2
  br i1 %.not.i17.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cw = add i8 %i.cv, -1
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !44
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i
  %i.cx = add i64 %.01126.i.i.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i ; 2 uses
  %i.cy = and i64 %i.cx, %i.ch
  %i.cz = shl nsw i64 %i.cy, 6                    ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cz
  %i.db = icmp eq ptr %i.da, %i.bm
  br i1 %i.db, label %.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

"_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIRZZNS_8settings16freezeImmutablesENS_10F14FastSetIS9_NS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENK3$_0clISM_EEDaRT_EUlOSP_E_EEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESR_.exit.i.i.i.i": ; preds = %.thread.i.i.i.i.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.y ; 5 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !48 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 5 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %"_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIRZZNS_8settings16freezeImmutablesENS_10F14FastSetIS9_NS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENK3$_0clISM_EEDaRT_EUlOSP_E_EEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESR_.exit.i.i.i.i"
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !43
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #29
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %"_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIRZZNS_8settings16freezeImmutablesENS_10F14FastSetIS9_NS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENK3$_0clISM_EEDaRT_EUlOSP_E_EEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESR_.exit.i.i.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.di = load i64, ptr %i.q, align 8, !tbaa !37
  %i.dj = lshr i64 %i.di, 8                       ; 5 uses
  %.not.i12.i.i.i = icmp eq i64 %i.dj, %i.z
  br i1 %.not.i12.i.i.i, label %"_ZN5folly3f146detail16F14VectorSetImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_ESt17integral_constantIbLb1EEE15eraseUnderlyingIRZZNS_8settings16freezeImmutablesENS_10F14FastSetIS8_SA_SC_SD_EEENK3$_0clISK_EEDaRT_EUlOSN_E_EEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESP_.exit.i.i.i", label %bb.o

bb.o:                                             ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = icmp ne i64 %i.dj, 0
  call void @llvm.assume(i1 %i.dl)
  %i.dm = load ptr, ptr %0, align 8, !tbaa !38
  %i.dn = and i64 %i.dj, 4294967295
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.do)
          to label %.noexc6.i unwind label %bb.v  ; 2 uses

.noexc6.i:                                        ; preds = %bb.o
  %i.dq = lshr i64 %i.dp, 56
  %.sroa.speculated.i.i.i21.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dq, i64 1) ; 2 uses
  %i.dr = shl nuw nsw i64 %.sroa.speculated.i.i.i21.i.i.i.i, 1
  %i.ds = or disjoint i64 %i.dr, 1
  %i.dt = trunc nuw i64 %.sroa.speculated.i.i.i21.i.i.i.i to i8
  %i.du = insertelement <16 x i8> poison, i8 %i.dt, i64 0
  %i.dv = shufflevector <16 x i8> %i.du, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.dw = load i64, ptr %i.q, align 8, !tbaa !37
  %i.dx = and i64 %i.dw, 255
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.dx
  %i.dy = xor i64 %notmask.i.i.i.i.i, -1
  %i.dz = load ptr, ptr %i.w, align 8, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.i.i.i.i, %.noexc6.i
  %.025.i.i.i.i.i = phi i64 [ %i.dp, %.noexc6.i ], [ %i.eu, %.loopexit.i.i.i.i ] ; 2 uses
  %i.ea = and i64 %.025.i.i.i.i.i, %i.dy
  %i.eb = shl nsw i64 %i.ea, 6
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eb ; 3 uses
  %i.ed = load <16 x i8>, ptr %i.ec, align 16
  %i.ee = icmp eq <16 x i8> %i.ed, %i.dv
  %i.ef = bitcast <16 x i1> %i.ee to i16
  %i.eg = zext i16 %i.ef to i32                   ; 2 uses
  %i.eh = and i32 %i.eg, 4095
  %.not48.i.i.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not48.i.i.i.i, label %.loopexit.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.p
  %i.ei = icmp ne ptr %i.ec, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ei)
  br label %bb.q

bb.q:                                             ; preds = %.critedge.i.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.027.0.i.i.i.i = phi i32 [ %i.es, %.critedge.i.i.i.i.i ], [ %i.eg, %.preheader.i.i.i.i ] ; 4 uses
  %i.ej = icmp ne i32 %.sroa.027.0.i.i.i.i, 0
  call void @llvm.assume(i1 %i.ej)
  %i.ek = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.027.0.i.i.i.i, i1 true)
  %i.el = shl nuw nsw i32 %i.ek, 2
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr i8, ptr %i.ec, i64 %i.em  ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !34
  %i.eq = icmp eq i32 %i.ep, %i.dk
  br i1 %i.eq, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSD_8PrefetchE.exit.i.i.i.i, label %.critedge.i.i.i.i.i, !prof !35

.critedge.i.i.i.i.i:                              ; preds = %bb.q
  %i.er = add nsw i32 %.sroa.027.0.i.i.i.i, -1
  %i.es = and i32 %i.er, %.sroa.027.0.i.i.i.i     ; 2 uses
  %i.et = and i32 %i.es, 4094
  %.not49.i.i.i.i = icmp eq i32 %i.et, 0
  br i1 %.not49.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.q, !llvm.loop !86

.loopexit.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.i, %bb.p
  %i.eu = add i64 %i.ds, %.025.i.i.i.i.i
  br label %bb.p, !llvm.loop !87

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSD_8PrefetchE.exit.i.i.i.i: ; preds = %bb.q
  %i.ev = getelementptr i8, ptr %i.en, i64 16
  store i32 %i.ab, ptr %i.ev, align 4, !tbaa !34
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.ew = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.dj ; 5 uses
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !49
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !48 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 5 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i.i.i.i

bb.r:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSD_8PrefetchE.exit.i.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !50 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, 16
  call void @llvm.assume(i1 %i.fc)
  %i.fd = add nuw nsw i64 %i.fb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.de, ptr noundef nonnull align 8 dereferenceable(1) %i.ey, i64 %i.fd, i1 false)
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i.i.i.i: ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSD_8PrefetchE.exit.i.i.i.i
  store ptr %i.ex, ptr %i.dc, align 8, !tbaa !48
  %i.fe = load i64, ptr %i.ey, align 8, !tbaa !43
  store i64 %i.fe, ptr %i.de, align 8, !tbaa !43
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i.i.i.i, %bb.r
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !50
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !50
  store ptr %i.ey, ptr %i.ew, align 8, !tbaa !48
  store i64 0, ptr %i.ff, align 8, !tbaa !50
  store i8 0, ptr %i.ey, align 8, !tbaa !43
  br label %"_ZN5folly3f146detail16F14VectorSetImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_ESt17integral_constantIbLb1EEE15eraseUnderlyingIRZZNS_8settings16freezeImmutablesENS_10F14FastSetIS8_SA_SC_SD_EEENK3$_0clISK_EEDaRT_EUlOSN_E_EEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESP_.exit.i.i.i"

"_ZN5folly3f146detail16F14VectorSetImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_ESt17integral_constantIbLb1EEE15eraseUnderlyingIRZZNS_8settings16freezeImmutablesENS_10F14FastSetIS8_SA_SC_SD_EEENK3$_0clISK_EEDaRT_EUlOSN_E_EEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESP_.exit.i.i.i": ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %i.fi = icmp eq ptr %i.t, %.sroa.01.043.i.i.i
  br i1 %i.fi, label %"_ZZN5folly8settings16freezeImmutablesENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEESaIS7_EEEENK3$_0clISD_EEDaRT_.exit.i", label %bb.f, !llvm.loop !92

"_ZZN5folly8settings16freezeImmutablesENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEESaIS7_EEEENK3$_0clISD_EEDaRT_.exit.i": ; preds = %"_ZN5folly3f146detail16F14VectorSetImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_ESt17integral_constantIbLb1EEE15eraseUnderlyingIRZZNS_8settings16freezeImmutablesENS_10F14FastSetIS8_SA_SC_SD_EEENK3$_0clISK_EEDaRT_EUlOSN_E_EEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESP_.exit.i.i.i", %bb.e
  br i1 %.not.i.i.i, label %"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withWLockIZNS_8settings16freezeImmutablesESE_E3$_0EEDaOT_.exit", label %bb.s

bb.s:                                             ; preds = %"_ZZN5folly8settings16freezeImmutablesENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEESaIS7_EEEENK3$_0clISD_EEDaRT_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.fj = atomicrmw and ptr %i.o, i32 -401 seq_cst, align 4 ; 2 uses
  %i.fk = and i32 %i.fj, -401
  store i32 %i.fk, ptr %i.a, align 4, !tbaa !34
  %i.fl = and i32 %i.fj, 15
  %.not.i.i.i.i.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i.i, label %bb.t, !prof !35

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i.i unwind label %bb.u

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withWLockIZNS_8settings16freezeImmutablesESE_E3$_0EEDaOT_.exit"

bb.u:                                             ; preds = %bb.t
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #30
  unreachable

bb.v:                                             ; preds = %bb.o, %.noexc4.i, %bb.j, %bb.i, %bb.f
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSK_22SynchronizedMutexLevelE1ELNSK_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.fo

"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE9withWLockIZNS_8settings16freezeImmutablesESE_E3$_0EEDaOT_.exit": ; preds = %"_ZZN5folly8settings16freezeImmutablesENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEESaIS7_EEEENK3$_0clISD_EEDaRT_.exit.i", %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #30
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSK_22SynchronizedMutexLevelE1ELNSK_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !33, !range !51, !noundef !52
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !34
  %i.h = and i32 %i.f, 15
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.d, !prof !35

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #30
  unreachable

_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !48     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50   ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = icmp ult i64 %i.c, 17
end_hunk_0
begin_hunk_1_@_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_:bb.a

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 -4
  %.0.copyload.i.i16 = load i32, ptr %i.a, align 1
  %i.k = zext i32 %.0.copyload.i.i16 to i64
  %.0.copyload.i.i17 = load i32, ptr %i.j, align 1
  %i.l = zext i32 %.0.copyload.i.i17 to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.a, align 1, !tbaa !43
  %i.n = sext i8 %i.m to i64
  %i.o = shl nsw i64 %i.n, 45
  %i.p = getelementptr i8, ptr %i.d, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43
  %i.r = sext i8 %i.q to i64
  %i.s = or i64 %i.o, %i.r
  %i.t = lshr i64 %i.c, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !43
  %i.w = sext i8 %i.v to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.f:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.c, 48
  br i1 %i.x, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2: ; preds = %bb.f, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %.069.i = phi i64 [ %i.bc, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.c, %bb.f ]
  %.067.i = phi i64 [ %i.ag, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.066.i = phi ptr [ %i.bb, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.a, %bb.f ] ; 7 uses
  %.065.i = phi i64 [ %i.aq, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.i = phi i64 [ %i.ba, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.copyload.i.i18 = load i64, ptr %.066.i, align 1
  %i.y = xor i64 %.0.copyload.i.i18, 3257665815644502181
  %i.z = getelementptr inbounds nuw i8, ptr %.066.i, i64 8
  %.0.copyload.i.i19 = load i64, ptr %i.z, align 1
  %i.aa = xor i64 %.0.copyload.i.i19, %.067.i
  %i.ab = zext i64 %i.y to i128
  %i.ac = zext i64 %i.aa to i128
  %i.ad = mul nuw i128 %i.ac, %i.ab               ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad
  %i.ag = trunc i128 %i.af to i64                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.066.i, i64 16
  %.0.copyload.i.i20 = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i20, -8378864009470890807
  %i.aj = getelementptr inbounds nuw i8, ptr %.066.i, i64 24
  %.0.copyload.i.i21 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i.i21, %.065.i
  %i.al = zext i64 %i.ai to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.am, %i.al               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.066.i, i64 32
  %.0.copyload.i.i22 = load i64, ptr %i.ar, align 1
  %i.as = xor i64 %.0.copyload.i.i22, 5418857496715711651
  %i.at = getelementptr inbounds nuw i8, ptr %.066.i, i64 40
  %.0.copyload.i.i23 = load i64, ptr %i.at, align 1
  %i.au = xor i64 %.0.copyload.i.i23, %.0.i
  %i.av = zext i64 %i.as to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = mul nuw i128 %i.aw, %i.av               ; 2 uses
  %i.ay = lshr i128 %i.ax, 64
  %i.az = xor i128 %i.ay, %i.ax
  %i.ba = trunc i128 %i.az to i64                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.066.i, i64 48 ; 3 uses
  %i.bc = add i64 %.069.i, -48                    ; 5 uses
  %i.bd = icmp ugt i64 %i.bc, 48
  br i1 %i.bd, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %bb.g, !llvm.loop !0

bb.g:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %i.be = xor i64 %i.aq, %i.ag
  %i.bf = xor i64 %i.be, %i.ba                    ; 2 uses
  %i.bg = icmp samesign ugt i64 %i.bc, 16
  br i1 %i.bg, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10: ; preds = %bb.f, %bb.g
  %.1.i72 = phi ptr [ %i.bb, %bb.g ], [ %i.a, %bb.f ] ; 6 uses
  %.168.i70 = phi i64 [ %i.bf, %bb.g ], [ 4766890152743124950, %bb.f ]
  %.170.i69 = phi i64 [ %i.bc, %bb.g ], [ %i.c, %bb.f ] ; 3 uses
  %.0.copyload.i.i24 = load i64, ptr %.1.i72, align 1
  %i.bh = xor i64 %.0.copyload.i.i24, 5418857496715711651
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i72, i64 8
  %.0.copyload.i.i25 = load i64, ptr %i.bi, align 1
  %i.bj = xor i64 %.0.copyload.i.i25, %.168.i70
  %i.bk = zext i64 %i.bh to i128
  %i.bl = zext i64 %i.bj to i128
  %i.bm = mul nuw i128 %i.bl, %i.bk               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = xor i128 %i.bn, %i.bm
  %i.bp = trunc i128 %i.bo to i64                 ; 2 uses
  %i.bq = icmp samesign ugt i64 %.170.i69, 32
  br i1 %i.bq, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i72, i64 16
  %.0.copyload.i.i26 = load i64, ptr %i.br, align 1
  %i.bs = xor i64 %.0.copyload.i.i26, 5418857496715711651
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i72, i64 24
  %.0.copyload.i.i27 = load i64, ptr %i.bt, align 1
  %i.bu = xor i64 %.0.copyload.i.i27, %i.bp
  %i.bv = zext i64 %i.bs to i128
  %i.bw = zext i64 %i.bu to i128
  %i.bx = mul nuw i128 %i.bw, %i.bv               ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = xor i128 %i.by, %i.bx
  %i.ca = trunc i128 %i.bz to i64
  br label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, %bb.g
  %.1.i71 = phi ptr [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bb, %bb.g ]
  %.170.i68 = phi i64 [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bc, %bb.g ] ; 3 uses
  %.2.i = phi i64 [ %i.ca, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %i.bp, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bf, %bb.g ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.1.i71, i64 %.170.i68 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  %.0.copyload.i.i28 = load i64, ptr %i.cc, align 1
  %i.cd = xor i64 %.0.copyload.i.i28, %.170.i68
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %.0.copyload.i.i29 = load i64, ptr %i.ce, align 1
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit: ; preds = %bb.d, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit, %bb.e, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12
  %.064 = phi i64 [ %.0.copyload.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.k, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %i.cd, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ %i.s, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %.0.copyload.i.i15, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.l, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %.0.copyload.i.i29, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ %i.w, %bb.e ], [ 0, %bb.d ]
  %.271.i = phi i64 [ %i.c, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.c, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %.170.i68, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ %i.c, %bb.e ], [ 0, %bb.d ]
  %.3.i = phi i64 [ %i.g, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.g, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %.2.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ 4766890152743124950, %bb.e ], [ 4766890152743124950, %bb.d ]
  %i.cf = xor i64 %.064, -8378864009470890807
  %i.cg = xor i64 %.3.i, %.0
  %i.ch = zext i64 %i.cf to i128
  %i.ci = zext i64 %i.cg to i128
  %i.cj = mul nuw i128 %i.ci, %i.ch               ; 2 uses
  %i.ck = trunc i128 %i.cj to i64
  %i.cl = lshr i128 %i.cj, 64
  %i.cm = trunc nuw i128 %i.cl to i64
  %i.cn = xor i64 %i.ck, -6148914691236517206
  %i.co = xor i64 %.271.i, %i.cm
  %i.cp = xor i64 %i.co, -8378864009470890807
  %i.cq = zext i64 %i.cn to i128
  %i.cr = zext i64 %i.cp to i128
  %i.cs = mul nuw i128 %i.cr, %i.cq               ; 2 uses
  %i.ct = lshr i128 %i.cs, 64
  %i.cu = xor i128 %i.ct, %i.cs
  %i.cv = trunc i128 %i.cu to i64
  ret i64 %i.cv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JS9_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESF_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread68_crit_edge, label %bb.b

..thread68_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28
  %.pre107 = shl nuw i64 1, %i.b
  br label %.thread68

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.i = and i64 %i.b, 255                        ; 6 uses
  %i.j = shl nuw i64 1, %i.i                      ; 6 uses
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 6 uses
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %.fr92 = freeze i64 %i.p                        ; 3 uses
  %i.q = icmp eq i64 %.fr92, 0
  br i1 %i.q, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %bb.d
  %.023.i86.us = phi i64 [ %i.ar, %bb.d ], [ %i.j, %bb.b ]
  %.025.i85.us = phi i64 [ %i.as, %bb.d ], [ %2, %bb.b ] ; 2 uses
  %i.r = and i64 %.025.i85.us, %i.k
  %i.s = shl nsw i64 %i.r, 6
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s ; 3 uses
  %i.u = load <16 x i8>, ptr %i.t, align 16       ; 2 uses
  %i.v = icmp eq <16 x i8> %i.u, %i.h
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %i.y = and i32 %i.x, 4095
  %.not70.us = icmp eq i32 %i.y, 0
  %i.z = extractelement <16 x i8> %i.u, i64 15
  br i1 %.not70.us, label %.loopexit.split.us.us, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us
  %i.aa = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aa)
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.us.us, %.preheader.us
  %.sroa.042.0.us.us = phi i32 [ %i.ao, %.critedge.i.us.us ], [ %i.x, %.preheader.us ] ; 4 uses
  %i.ab = icmp ne i32 %.sroa.042.0.us.us, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0.us.us, i1 true)
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !34
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !50
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, label %.critedge.i.us.us, !prof !36

.critedge.i.us.us:                                ; preds = %bb.c
  %i.an = add nsw i32 %.sroa.042.0.us.us, -1
  %i.ao = and i32 %i.an, %.sroa.042.0.us.us       ; 2 uses
  %i.ap = and i32 %i.ao, 4094
  %.not71.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not71.us.us, label %.loopexit.split.us.us, label %bb.c, !llvm.loop !95

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.split.us
  %i.aq = icmp eq i8 %i.z, 0
  br i1 %i.aq, label %.thread68, label %bb.d, !prof !35

bb.d:                                             ; preds = %.loopexit.split.us.us
  %i.ar = add i64 %.023.i86.us, -1                ; 2 uses
  %i.as = add i64 %i.e, %.025.i85.us
  %.not.i.us = icmp eq i64 %i.ar, 0
  br i1 %.not.i.us, label %.thread68, label %.split.us, !llvm.loop !96

.split:                                           ; preds = %bb.b, %bb.f
  %.023.i86 = phi i64 [ %i.bw, %bb.f ], [ %i.j, %bb.b ]
  %.025.i85 = phi i64 [ %i.bx, %bb.f ], [ %2, %bb.b ] ; 2 uses
  %i.at = and i64 %.025.i85, %i.k
  %i.au = shl nsw i64 %i.at, 6
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.au ; 3 uses
  %i.aw = load <16 x i8>, ptr %i.av, align 16     ; 2 uses
  %i.ax = icmp eq <16 x i8> %i.aw, %i.h
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = zext i16 %i.ay to i32                   ; 2 uses
  %i.ba = and i32 %i.az, 4095
  %.not70 = icmp eq i32 %i.ba, 0
  %i.bb = extractelement <16 x i8> %i.aw, i64 15
  br i1 %.not70, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.bc = icmp ne ptr %i.av, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bc)
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.042.0 = phi i32 [ %i.bg, %.critedge.i ], [ %i.az, %.preheader ] ; 4 uses
  %i.bd = icmp ne i32 %.sroa.042.0, 0
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.bf = add nsw i32 %.sroa.042.0, -1
  %i.bg = and i32 %i.bf, %.sroa.042.0             ; 2 uses
  %i.bh = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = getelementptr i8, ptr %i.av, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !34
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !50
  %i.bq = icmp eq i64 %.fr92, %i.bp
  br i1 %i.bq, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit, label %.critedge.i, !prof !36

_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit: ; preds = %bb.e
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !48
  %i.bs = load ptr, ptr %4, align 8, !tbaa !48
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.bs, ptr %i.br, i64 %.fr92)
  %i.bt = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bt, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, label %.critedge.i, !prof !53

.critedge.i:                                      ; preds = %bb.e, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit
  %i.bu = and i32 %i.bg, 4094
  %.not71 = icmp eq i32 %i.bu, 0
  br i1 %.not71, label %.loopexit.split, label %bb.e, !llvm.loop !95

.loopexit.split:                                  ; preds = %.critedge.i, %.split
  %i.bv = icmp eq i8 %i.bb, 0
  br i1 %i.bv, label %.thread68, label %bb.f, !prof !35

bb.f:                                             ; preds = %.loopexit.split
  %i.bw = add i64 %.023.i86, -1                   ; 2 uses
  %i.bx = add i64 %i.e, %.025.i85
  %.not.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i, label %.thread68, label %.split, !llvm.loop !96

_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread: ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit, %bb.c
  %.us-phi = phi ptr [ %i.af, %bb.c ], [ %i.bj, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit ]
  %.us-phi80 = phi i64 [ %i.ad, %bb.c ], [ %i.bh, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit ]
  %i.by = getelementptr i8, ptr %.us-phi, i64 16
  br label %bb.o

.thread68:                                        ; preds = %.loopexit.split, %bb.f, %bb.d, %.loopexit.split.us.us, %..thread68_crit_edge
  %.pre-phi108 = phi i64 [ %.pre107, %..thread68_crit_edge ], [ %i.j, %bb.d ], [ %i.j, %.loopexit.split.us.us ], [ %i.j, %bb.f ], [ %i.j, %.loopexit.split ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread68_crit_edge ], [ %i.i, %bb.d ], [ %i.i, %.loopexit.split.us.us ], [ %i.i, %bb.f ], [ %i.i, %.loopexit.split ]
  %i.bz = phi ptr [ %.pre, %..thread68_crit_edge ], [ %i.m, %bb.d ], [ %i.m, %.loopexit.split.us.us ], [ %i.m, %bb.f ], [ %i.m, %.loopexit.split ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ca, align 1
  %i.cb = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.cc = add i64 %.pre-phi108, -1
  %i.cd = lshr i64 %i.cc, 12
  %i.ce = add nuw nsw i64 %i.cd, 1
  %i.cf = mul i64 %i.ce, %i.cb                    ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.cf
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread68
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi108, i64 noundef %i.cb, i64 noundef %i.cf)
  %.pre104 = load i64, ptr %i.a, align 8, !tbaa !37
  %.pre105 = load ptr, ptr %i.cg, align 8, !tbaa !28
  %.pre109 = and i64 %.pre104, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread68, %bb.g
  %.pre-phi110 = phi i64 [ %.pre-phi, %.thread68 ], [ %.pre109, %bb.g ]
  %i.ch = phi ptr [ %i.bz, %.thread68 ], [ %.pre105, %bb.g ] ; 4 uses
  %notmask.i31 = shl nsw i64 -1, %.pre-phi110
  %i.ci = xor i64 %notmask.i31, -1                ; 2 uses
  %i.cj = and i64 %2, %i.ci
  %i.ck = shl nsw i64 %i.cj, 6                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck ; 2 uses
  %i.cm = load <16 x i8>, ptr %i.cl, align 16, !tbaa !43
  %i.cn = icmp eq <16 x i8> %i.cm, zeroinitializer
  %i.co = bitcast <16 x i1> %i.cn to i16
  %i.cp = and i16 %i.co, 4095                     ; 2 uses
  %.not72 = icmp eq i16 %i.cp, 0
  br i1 %.not72, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.cq = shl i64 %3, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.cs = phi i64 [ %i.ck, %bb.h ], [ %i.cz, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.h ], [ %i.cx, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 15 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !44  ; 2 uses
  %.not.i32 = icmp eq i8 %i.cv, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = add i8 %i.cv, 1
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !44
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.cx = add i64 %i.cr, %.028                    ; 2 uses
  %i.cy = and i64 %i.cx, %i.ci
  %i.cz = shl nsw i64 %i.cy, 6                    ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cz
  %i.db = load <16 x i8>, ptr %i.da, align 16     ; 2 uses
  %i.dc = icmp eq <16 x i8> %i.db, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16
  %i.de = and i16 %i.dd, 4095                     ; 2 uses
  %.not73 = icmp eq i16 %i.de, 0
  br i1 %.not73, label %bb.i, label %bb.k, !llvm.loop !97

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cz ; 2 uses
  %i.dg = extractelement <16 x i8> %i.db, i64 14
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 14
  %i.di = add i8 %i.dg, 16
  store i8 %i.di, ptr %i.dh, align 2, !tbaa !42
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.036.0.in = phi i16 [ %i.cp, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.de, %bb.k ]
  %.1 = phi ptr [ %i.cl, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.df, %bb.k ] ; 3 uses
  %i.dj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.dk = zext nneg i16 %i.dj to i64              ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.1, i64 %i.dk ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !43
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.do = trunc i64 %3 to i8
  store i8 %i.do, ptr %i.dl, align 1, !tbaa !43
  %i.dp = shl nuw nsw i64 %i.dk, 2
  %i.dq = getelementptr i8, ptr %.1, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 16     ; 3 uses
  %i.ds = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ds)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !37
  %i.du = lshr i64 %i.dt, 8                       ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !34
  %i.dw = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !52, !noundef !52
  %i.dx = and i64 %i.du, 4294967295
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %i.dx ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 3 uses
  store ptr %i.dz, ptr %i.dy, align 8, !tbaa !49
  %i.ea = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !50 ; 2 uses
  %i.ef = icmp ult i64 %i.ee, 16
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = add nuw nsw i64 %i.ee, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dz, ptr noundef nonnull align 8 dereferenceable(1) %i.eb, i64 %i.eg, i1 false)
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !48
  %i.eh = load i64, ptr %i.eb, align 8, !tbaa !43
  store i64 %i.eh, ptr %i.dz, align 8, !tbaa !43
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !50
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !50
  store ptr %i.eb, ptr %5, align 8, !tbaa !48
  store i64 0, ptr %i.ei, align 8, !tbaa !50
  store i8 0, ptr %i.eb, align 8, !tbaa !43
  %i.el = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.em = and i64 %i.el, -256
  %i.en = add i64 %i.em, 256
  %i.eo = and i64 %i.el, 255
  %i.ep = or disjoint i64 %i.en, %i.eo
  store i64 %i.ep, ptr %i.a, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit
  %.sink134 = phi ptr [ %i.by, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.dr, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit ]
  %.us-phi80.sink = phi i64 [ %.us-phi80, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.dk, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJS9_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink134, ptr %0, align 8, !tbaa !99
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi80.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !54
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.eq, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
  %i.u = add nsw i64 %i.p, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %i.t
  %i.y = icmp ugt i64 %i.x, 4294967295
  br i1 %i.y, label %bb.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #14
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.b, %bb.c
  %.pn22.i = phi i64 [ 1, %bb.b ], [ 1, %bb.c ], [ %i.p, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %.0.pn.i = phi i64 [ 2, %bb.b ], [ %spec.select.i, %bb.c ], [ %i.t, %_ZN5folly11findLastSetImEEjT_.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37
  %i.ab = lshr i64 %i.aa, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef %2, i64 noundef %3, i64 noundef %.pn22.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 15 uses
  %7 = alloca %"struct.std::array.17", align 1    ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !54
  store i64 %2, ptr %i.b, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28   ; 5 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.m = add i64 %2, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = mul i64 %i.o, %3
  store i64 %i.p, ptr %i.d, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.q = icmp eq i64 %2, 1                        ; 2 uses
  %i.r = shl i64 %3, 2
  %i.s = add i64 %i.r, 16
  %i.t = shl i64 %2, 6                            ; 2 uses
  %.0.i = select i1 %i.q, i64 %i.s, i64 %i.t
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.u = add i64 %4, -1
  %i.v = lshr i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = mul i64 %i.w, %5                         ; 2 uses
  store i64 %i.x, ptr %i.f, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.y = icmp eq i64 %4, 1                        ; 2 uses
  %i.z = shl i64 %5, 2
  %i.aa = add i64 %i.z, 16
  %i.ab = shl i64 %4, 6
  %.0.i53 = select i1 %i.y, i64 %i.aa, i64 %i.ab  ; 2 uses
  store i64 %.0.i53, ptr %i.g, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a
  %i.ec = zext i32 %.sroa.875.1.in to i64         ; 2 uses
  %i.ed = shl nuw nsw i64 %i.ec, 2
  %i.ee = getelementptr i8, ptr %.034134, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 16     ; 2 uses
  %i.eg = load ptr, ptr %0, align 8, !tbaa !38
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !34
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.eg, i64 %i.ei ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !48 ; 7 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !50 ; 13 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.em ; 3 uses
  %i.eo = icmp ult i64 %i.em, 17
  br i1 %i.eo, label %bb.p, label %bb.t, !prof !35

bb.p:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit60
  %i.ep = icmp samesign ugt i64 %i.em, 3
  br i1 %i.ep, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eq = xor i64 %i.em, 4766890152743124950      ; 2 uses
  %i.er = icmp samesign ugt i64 %i.em, 7
  br i1 %i.er, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i: ; preds = %bb.q
  %i.es = getelementptr inbounds i8, ptr %i.en, i64 -8
  %.0.copyload.i.i.i = load i64, ptr %i.ek, align 1
  %.0.copyload.i.i15.i = load i64, ptr %i.es, align 1
  br label %bb.v

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i: ; preds = %bb.q
  %i.et = getelementptr inbounds i8, ptr %i.en, i64 -4
  %.0.copyload.i.i16.i = load i32, ptr %i.ek, align 1
  %i.eu = zext i32 %.0.copyload.i.i16.i to i64
  %.0.copyload.i.i17.i = load i32, ptr %i.et, align 1
  %i.ev = zext i32 %.0.copyload.i.i17.i to i64
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %.not.i.i66 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i66, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ew = load i8, ptr %i.ek, align 1, !tbaa !43
  %i.ex = sext i8 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 45
  %i.ez = getelementptr i8, ptr %i.en, i64 -1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !43
  %i.fb = sext i8 %i.fa to i64
  %i.fc = or i64 %i.ey, %i.fb
  %i.fd = lshr i64 %i.em, 1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !43
  %i.fg = sext i8 %i.ff to i64
  br label %bb.v

bb.t:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit60
  %i.fh = icmp ugt i64 %i.em, 48
  br i1 %i.fh, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i: ; preds = %bb.t, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i
  %.069.i.i = phi i64 [ %i.gm, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ %i.em, %bb.t ]
  %.067.i.i = phi i64 [ %i.fq, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.t ]
  %.066.i.i = phi ptr [ %i.gl, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ %i.ek, %bb.t ] ; 7 uses
  %.065.i.i = phi i64 [ %i.ga, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.t ]
  %.0.i.i = phi i64 [ %i.gk, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.t ]
  %.0.copyload.i.i18.i = load i64, ptr %.066.i.i, align 1
  %i.fi = xor i64 %.0.copyload.i.i18.i, 3257665815644502181
  %i.fj = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 8
  %.0.copyload.i.i19.i = load i64, ptr %i.fj, align 1
  %i.fk = xor i64 %.0.copyload.i.i19.i, %.067.i.i
  %i.fl = zext i64 %i.fi to i128
  %i.fm = zext i64 %i.fk to i128
  %i.fn = mul nuw i128 %i.fm, %i.fl               ; 2 uses
  %i.fo = lshr i128 %i.fn, 64
  %i.fp = xor i128 %i.fo, %i.fn
  %i.fq = trunc i128 %i.fp to i64                 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 16
  %.0.copyload.i.i20.i = load i64, ptr %i.fr, align 1
  %i.fs = xor i64 %.0.copyload.i.i20.i, -8378864009470890807
  %i.ft = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 24
  %.0.copyload.i.i21.i = load i64, ptr %i.ft, align 1
  %i.fu = xor i64 %.0.copyload.i.i21.i, %.065.i.i
  %i.fv = zext i64 %i.fs to i128
  %i.fw = zext i64 %i.fu to i128
  %i.fx = mul nuw i128 %i.fw, %i.fv               ; 2 uses
  %i.fy = lshr i128 %i.fx, 64
  %i.fz = xor i128 %i.fy, %i.fx
  %i.ga = trunc i128 %i.fz to i64                 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 32
  %.0.copyload.i.i22.i = load i64, ptr %i.gb, align 1
  %i.gc = xor i64 %.0.copyload.i.i22.i, 5418857496715711651
  %i.gd = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 40
  %.0.copyload.i.i23.i = load i64, ptr %i.gd, align 1
  %i.ge = xor i64 %.0.copyload.i.i23.i, %.0.i.i
  %i.gf = zext i64 %i.gc to i128
  %i.gg = zext i64 %i.ge to i128
  %i.gh = mul nuw i128 %i.gg, %i.gf               ; 2 uses
  %i.gi = lshr i128 %i.gh, 64
  %i.gj = xor i128 %i.gi, %i.gh
  %i.gk = trunc i128 %i.gj to i64                 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 48 ; 3 uses
  %i.gm = add i64 %.069.i.i, -48                  ; 5 uses
  %i.gn = icmp ugt i64 %i.gm, 48
  br i1 %i.gn, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i, label %bb.u, !llvm.loop !0

bb.u:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i
  %i.go = xor i64 %i.ga, %i.fq
  %i.gp = xor i64 %i.go, %i.gk                    ; 2 uses
  %i.gq = icmp samesign ugt i64 %i.gm, 16
  br i1 %i.gq, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i: ; preds = %bb.u, %bb.t
  %.1.i72.i = phi ptr [ %i.gl, %bb.u ], [ %i.ek, %bb.t ] ; 6 uses
  %.168.i70.i = phi i64 [ %i.gp, %bb.u ], [ 4766890152743124950, %bb.t ]
  %.170.i69.i = phi i64 [ %i.gm, %bb.u ], [ %i.em, %bb.t ] ; 3 uses
  %.0.copyload.i.i24.i = load i64, ptr %.1.i72.i, align 1
  %i.gr = xor i64 %.0.copyload.i.i24.i, 5418857496715711651
  %i.gs = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 8
  %.0.copyload.i.i25.i = load i64, ptr %i.gs, align 1
  %i.gt = xor i64 %.0.copyload.i.i25.i, %.168.i70.i
  %i.gu = zext i64 %i.gr to i128
  %i.gv = zext i64 %i.gt to i128
  %i.gw = mul nuw i128 %i.gv, %i.gu               ; 2 uses
  %i.gx = lshr i128 %i.gw, 64
  %i.gy = xor i128 %i.gx, %i.gw
  %i.gz = trunc i128 %i.gy to i64                 ; 2 uses
  %i.ha = icmp samesign ugt i64 %.170.i69.i, 32
  br i1 %i.ha, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 16
  %.0.copyload.i.i26.i = load i64, ptr %i.hb, align 1
  %i.hc = xor i64 %.0.copyload.i.i26.i, 5418857496715711651
  %i.hd = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 24
  %.0.copyload.i.i27.i = load i64, ptr %i.hd, align 1
  %i.he = xor i64 %.0.copyload.i.i27.i, %i.gz
  %i.hf = zext i64 %i.hc to i128
  %i.hg = zext i64 %i.he to i128
  %i.hh = mul nuw i128 %i.hg, %i.hf               ; 2 uses
  %i.hi = lshr i128 %i.hh, 64
  %i.hj = xor i128 %i.hi, %i.hh
  %i.hk = trunc i128 %i.hj to i64
  br label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i, %bb.u
  %.1.i71.i = phi ptr [ %.1.i72.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %.1.i72.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.gl, %bb.u ]
  %.170.i68.i = phi i64 [ %.170.i69.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %.170.i69.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.gm, %bb.u ] ; 3 uses
  %.2.i.i = phi i64 [ %i.hk, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %i.gz, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.gp, %bb.u ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.1.i71.i, i64 %.170.i68.i ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -16
  %.0.copyload.i.i28.i = load i64, ptr %i.hm, align 1
  %i.hn = xor i64 %.0.copyload.i.i28.i, %.170.i68.i
  %i.ho = getelementptr inbounds i8, ptr %i.hl, i64 -8
  %.0.copyload.i.i29.i = load i64, ptr %i.ho, align 1
  br label %bb.v

bb.v:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i, %bb.s, %bb.r, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i
  %.064.i = phi i64 [ %.0.copyload.i.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.eu, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %i.hn, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.fc, %bb.s ], [ 0, %bb.r ]
  %.0.i65 = phi i64 [ %.0.copyload.i.i15.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.ev, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.0.copyload.i.i29.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.fg, %bb.s ], [ 0, %bb.r ]
  %.271.i.i = phi i64 [ %i.em, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.em, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.170.i68.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.em, %bb.s ], [ 0, %bb.r ]
  %.3.i.i = phi i64 [ %i.eq, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.eq, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.2.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ 4766890152743124950, %bb.s ], [ 4766890152743124950, %bb.r ]
  %i.hp = xor i64 %.064.i, -8378864009470890807
  %i.hq = xor i64 %.3.i.i, %.0.i65
  %i.hr = zext i64 %i.hp to i128
  %i.hs = zext i64 %i.hq to i128
  %i.ht = mul nuw i128 %i.hs, %i.hr               ; 2 uses
  %i.hu = trunc i128 %i.ht to i64
  %i.hv = lshr i128 %i.ht, 64
  %i.hw = trunc nuw i128 %i.hv to i64
  %i.hx = xor i64 %i.hu, -6148914691236517206
  %i.hy = xor i64 %.271.i.i, %i.hw
  %i.hz = xor i64 %i.hy, -8378864009470890807
  %i.ia = zext i64 %i.hx to i128
  %i.ib = zext i64 %i.hz to i128
  %i.ic = mul nuw i128 %i.ib, %i.ia               ; 2 uses
  %i.id = lshr i128 %i.ic, 64
  %i.ie = xor i128 %i.id, %i.ic
  %i.if = trunc i128 %i.ie to i64                 ; 2 uses
  %i.ig = lshr i64 %i.if, 56
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ig, i64 1) ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.034134, i64 %i.ec
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !43
  %i.ij = zext i8 %i.ii to i64
  %i.ik = icmp eq i64 %.sroa.speculated.i.i, %i.ij
  br i1 %i.ik, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.3) #28
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.il = shl nuw nsw i64 %.sroa.speculated.i.i, 1
  %i.im = or disjoint i64 %i.il, 1
  %i.in = load i64, ptr %i.cd, align 8, !tbaa !37
  %i.io = and i64 %i.in, 255
  %notmask.i.i = shl nsw i64 -1, %i.io
  %i.ip = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.iq = load ptr, ptr %i.k, align 8, !tbaa !28  ; 2 uses
  %i.ir = and i64 %i.ip, %i.if                    ; 4 uses
  %i.is = shl nsw i64 %i.ir, 6                    ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0104174, i64 %i.ir
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !43  ; 2 uses
  %i.iv = icmp ult i8 %i.iu, 12
  br i1 %i.iv, label %._crit_edge.i, label %.lr.ph.i62, !prof !67

.lr.ph.i62:                                       ; preds = %bb.x, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i
  %i.iw = phi i64 [ %i.je, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.is, %bb.x ]
  %i.ix = phi i64 [ %i.jd, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.ir, %bb.x ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.iw
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 15 ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !44  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ja, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i62
  %i.jb = add i8 %i.ja, 1
  store i8 %i.jb, ptr %i.iz, align 1, !tbaa !44
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.y, %.lr.ph.i62
  %i.jc = add nuw i64 %i.im, %i.ix
  %i.jd = and i64 %i.jc, %i.ip                    ; 4 uses
  %i.je = shl nsw i64 %i.jd, 6                    ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.0104174, i64 %i.jd
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !43  ; 2 uses
  %i.jh = icmp ult i8 %i.jg, 12
  br i1 %i.jh, label %._crit_edge.i, label %.lr.ph.i62, !prof !68, !llvm.loop !2

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, %bb.x
  %.lcssa22.i = phi i64 [ %i.ir, %bb.x ], [ %i.jd, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %bb.x ], [ 16, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.is, %bb.x ], [ %i.je, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.iu, %bb.x ], [ %i.jg, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.pn.i ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0104174, i64 %.lcssa22.i
  %i.jj = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.jj, ptr %i.ji, align 1, !tbaa !43
  %i.jk = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.jk ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !43
  %i.jn = icmp eq i8 %i.jm, 0
  br i1 %i.jn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

bb.aa:                                            ; preds = %._crit_edge.i
  %i.jo = trunc nuw i64 %.sroa.speculated.i.i to i8
  store i8 %i.jo, ptr %i.jl, align 1, !tbaa !43
  %i.jp = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 2, !tbaa !42
  %i.jr = add i8 %i.jq, %.0.lcssa.i
  store i8 %i.jr, ptr %i.jp, align 2, !tbaa !42
  %i.js = shl nuw nsw i64 %i.jk, 2
  %i.jt = getelementptr i8, ptr %.lcssa21.i, i64 %i.js
  %i.ju = getelementptr i8, ptr %i.jt, i64 16     ; 2 uses
  %i.jv = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.jv)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ju) ]
  %i.jw = load i32, ptr %i.ef, align 4, !tbaa !34
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !34
  %.not109 = icmp eq i32 %.sroa.073.1, 0
  br i1 %.not109, label %.loopexit113, label %.lr.ph130, !llvm.loop !109

._crit_edge:                                      ; preds = %.loopexit113
  br i1 %.not, label %._crit_edge.thread, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  %.0104175177 = phi ptr [ %.0104174, %._crit_edge ], [ %i.db, %bb.l ]
  call void @_ZdlPvm(ptr noundef nonnull %.0104175177, i64 noundef %4) #29
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.loopexit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.k, %bb.j
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %i.cj) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  resume { ptr, i32 } %i.jx

.loopexit:                                        ; preds = %bb.g, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !58
  %i.jy = load i64, ptr %i.d, align 8, !tbaa !54  ; 2 uses
  %.not.i68 = icmp eq i64 %i.jy, 0
  br i1 %.not.i68, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit64, label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit
  %i.jz = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i67, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit64, label %bb.ab

bb.ab:                                            ; preds = %.noexc.i
  %i.ka = load i64, ptr %i.e, align 8, !tbaa !54
  %i.kb = sub i64 0, %i.ka
  %i.kc = and i64 %i.kb, -8
  %i.kd = shl i64 %i.jy, 5
  %i.ke = sub i64 %i.kd, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.ke) #20
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit64

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit64: ; preds = %.loopexit, %bb.ab, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::bad_alloc", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %0, align 8, !tbaa !70
  invoke void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt9bad_allocEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.a, align 8, !tbaa !70
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #16

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !122, !nonnull !52
  %i.d = load i8, ptr %i.c, align 1, !tbaa !58, !range !51, !noundef !52
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123, !nonnull !52, !align !124
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54   ; 3 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !125, !nonnull !52, !align !124
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126, !nonnull !52, !align !124
  %i.n = load i64, ptr %i.m, align 8, !tbaa !54
  br label %.noexc

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !127, !nonnull !52, !align !124
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128, !nonnull !52, !align !124
  %i.t = load i64, ptr %i.s, align 8, !tbaa !54   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !125, !nonnull !52, !align !124
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !129, !nonnull !52, !align !124
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !54 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j:bb.a
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
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !137

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
  store i32 %i.bn, ptr %1, align 4, !tbaa !34
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.k, %bb.l, %._crit_edge, %bb.s
  ret void
}

; Function Attrs: cold
declare noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #7 align 2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly8settings16immutablesFrozenESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %4 = alloca %"class.folly::LockedPtr.30", align 8 ; 9 uses
  store i64 %0, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.e = load atomic i8, ptr @_ZGVZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11 acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11) #20
  %.not.i14 = icmp eq i32 %i.g, 0
  br i1 %.not.i14, label %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i8 0, i64 32, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i64 8), align 8, !tbaa !28
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11) #20
  br label %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit

_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i64 24), ptr %4, align 8, !tbaa !76, !alias.scope !140
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i16 0, ptr %i.h, align 8, !tbaa !77, !alias.scope !140
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  store i16 0, ptr %i.i, align 2, !tbaa !78, !alias.scope !140
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20, !noalias !140
  %i.j = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i64 24) monotonic, align 8, !noalias !140 ; 4 uses
  store i32 %i.j, ptr %i.c, align 4, !tbaa !34, !noalias !140
  %i.k = and i32 %i.j, -1408
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit
  %i.m = or disjoint i32 %i.j, 2048
  %i.n = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i64 24), i32 %i.j, i32 %i.m seq_cst seq_cst, align 4, !noalias !140 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.o, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.p = extractvalue { i32, i1 } %i.n, 0
  store i32 %i.p, ptr %i.c, align 4, !noalias !140
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.h, align 8, !tbaa !77, !alias.scope !140
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit
  %i.q = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !140
  %i.r = load ptr, ptr %4, align 8, !tbaa !76     ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -24
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %.neg.i.i ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37
  %i.v = icmp ult i64 %i.u, 256
  br i1 %i.v, label %.noexc1, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc7 unwind label %bb.t    ; 3 uses

.noexc7:                                          ; preds = %bb.h
  %i.x = lshr i64 %i.w, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1) ; 2 uses
  %i.y = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.z = or disjoint i64 %i.y, 1                  ; 2 uses
  %i.aa = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ab = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ad = load i64, ptr %i.t, align 8, !tbaa !37
  %i.ae = and i64 %i.ad, 255                      ; 2 uses
  %i.af = shl nuw i64 1, %i.ae                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.ae
  %i.ag = xor i64 %notmask.i, -1                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %i.aj = load ptr, ptr %i.d, align 8
  %i.ak = load i64, ptr %3, align 8
  %.fr50 = freeze i64 %i.ak                       ; 3 uses
  %i.al = icmp eq i64 %.fr50, 0
  br i1 %i.al, label %.noexc10.us, label %.noexc10

.noexc10.us:                                      ; preds = %.noexc7, %bb.i
  %.023.i49.us = phi i64 [ %i.bm, %bb.i ], [ %i.af, %.noexc7 ]
  %.025.i48.us = phi i64 [ %i.bn, %bb.i ], [ %i.w, %.noexc7 ] ; 2 uses
  %i.am = and i64 %.025.i48.us, %i.ag
  %i.an = shl nsw i64 %i.am, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.ap = load <16 x i8>, ptr %i.ao, align 16     ; 2 uses
  %i.aq = icmp eq <16 x i8> %i.ap, %i.ac
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = and i32 %i.as, 4095
  %.not.us = icmp eq i32 %i.at, 0
  %i.au = extractelement <16 x i8> %i.ap, i64 15
  br i1 %.not.us, label %.loopexit.split.us.us, label %.noexc11.preheader.us

.noexc11.preheader.us:                            ; preds = %.noexc10.us
  %i.av = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !38
  br label %.noexc11.us.us

.noexc11.us.us:                                   ; preds = %.critedge.i.us.us, %.noexc11.preheader.us
  %.sroa.022.0.us.us = phi i32 [ %i.bj, %.critedge.i.us.us ], [ %i.as, %.noexc11.preheader.us ] ; 4 uses
  %i.ax = icmp ne i32 %.sroa.022.0.us.us, 0
  call void @llvm.assume(i1 %i.ax)
  %i.ay = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.022.0.us.us, i1 true)
  %i.az = shl nuw nsw i32 %i.ay, 2
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr i8, ptr %i.ao, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !34
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !50
  %.not.i.i.i.us.us = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i.us.us, label %.noexc1, label %.critedge.i.us.us, !prof !36

.critedge.i.us.us:                                ; preds = %.noexc11.us.us
  %i.bi = add nsw i32 %.sroa.022.0.us.us, -1
  %i.bj = and i32 %i.bi, %.sroa.022.0.us.us       ; 2 uses
  %i.bk = and i32 %i.bj, 4094
  %.not46.us.us = icmp eq i32 %i.bk, 0
  br i1 %.not46.us.us, label %.loopexit.split.us.us, label %.noexc11.us.us, !llvm.loop !4

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.noexc10.us
  %i.bl = icmp eq i8 %i.au, 0
  br i1 %i.bl, label %.noexc1, label %bb.i, !prof !35

bb.i:                                             ; preds = %.loopexit.split.us.us
  %i.bm = add i64 %.023.i49.us, -1                ; 2 uses
  %i.bn = add i64 %i.z, %.025.i48.us
  %.not.i.us = icmp eq i64 %i.bm, 0
  br i1 %.not.i.us, label %.noexc1, label %.noexc10.us, !llvm.loop !5

.noexc10:                                         ; preds = %.noexc7, %bb.j
  %.023.i49 = phi i64 [ %i.cq, %bb.j ], [ %i.af, %.noexc7 ]
  %.025.i48 = phi i64 [ %i.cr, %bb.j ], [ %i.w, %.noexc7 ] ; 2 uses
  %i.bo = and i64 %.025.i48, %i.ag
  %i.bp = shl nsw i64 %i.bo, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bp ; 3 uses
  %i.br = load <16 x i8>, ptr %i.bq, align 16     ; 2 uses
  %i.bs = icmp eq <16 x i8> %i.br, %i.ac
  %i.bt = bitcast <16 x i1> %i.bs to i16
  %i.bu = zext i16 %i.bt to i32                   ; 2 uses
  %i.bv = and i32 %i.bu, 4095
  %.not = icmp eq i32 %i.bv, 0
  %i.bw = extractelement <16 x i8> %i.br, i64 15
  br i1 %.not, label %.loopexit.split, label %.noexc11.preheader

.noexc11.preheader:                               ; preds = %.noexc10
  %i.bx = icmp ne ptr %i.bq, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bx)
  %i.by = load ptr, ptr %i.s, align 8, !tbaa !38
  br label %.noexc11

.noexc11:                                         ; preds = %.noexc11.preheader, %.critedge.i
  %.sroa.022.0 = phi i32 [ %i.cc, %.critedge.i ], [ %i.bu, %.noexc11.preheader ] ; 4 uses
  %i.bz = icmp ne i32 %.sroa.022.0, 0
  call void @llvm.assume(i1 %i.bz)
  %i.ca = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.022.0, i1 true)
  %i.cb = add nsw i32 %.sroa.022.0, -1
  %i.cc = and i32 %i.cb, %.sroa.022.0             ; 2 uses
  %i.cd = shl nuw nsw i32 %i.ca, 2
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %i.bq, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !34
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !50
  %.not.i.i.i = icmp eq i64 %.fr50, %i.cl
  br i1 %.not.i.i.i, label %.noexc12, label %.critedge.i, !prof !36

.noexc12:                                         ; preds = %.noexc11
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !48
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.aj, ptr %i.cm, i64 %.fr50)
  %i.cn = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cn, label %.noexc1, label %.critedge.i, !prof !53

.critedge.i:                                      ; preds = %.noexc11, %.noexc12
  %i.co = and i32 %i.cc, 4094
  %.not46 = icmp eq i32 %i.co, 0
  br i1 %.not46, label %.loopexit.split, label %.noexc11, !llvm.loop !4

.loopexit.split:                                  ; preds = %.critedge.i, %.noexc10
  %i.cp = icmp eq i8 %i.bw, 0
  br i1 %i.cp, label %.noexc1, label %bb.j, !prof !35

bb.j:                                             ; preds = %.loopexit.split
  %i.cq = add i64 %.023.i49, -1                   ; 2 uses
  %i.cr = add i64 %i.z, %.025.i48
  %.not.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i, label %.noexc1, label %.noexc10, !llvm.loop !5

.noexc1:                                          ; preds = %.loopexit.split, %bb.j, %.noexc12, %bb.i, %.loopexit.split.us.us, %.noexc11.us.us, %bb.g
  %.sroa.021.0 = phi i1 [ false, %bb.g ], [ true, %.noexc11.us.us ], [ true, %.noexc12 ], [ false, %bb.i ], [ false, %.loopexit.split.us.us ], [ false, %bb.j ], [ false, %.loopexit.split ]
  %i.cs = load i16, ptr %i.h, align 8, !tbaa !77  ; 2 uses
  %.not.i.i16 = icmp eq i16 %i.cs, 0
  br i1 %.not.i.i16, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSK_22SynchronizedMutexLevelE2ELNSK_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.noexc1
  %i.ct = load ptr, ptr %4, align 8, !tbaa !76    ; 7 uses
  switch i16 %i.cs, label %bb.q [
    i16 1, label %bb.l
    i16 3, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  %i.cu = load atomic i32, ptr %i.ct acquire, align 4
  %i.cv = and i32 %i.cu, 768
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.ct)
          to label %.noexc18 unwind label %bb.s

.noexc18:                                         ; preds = %bb.m
  br i1 %i.cx, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSK_22SynchronizedMutexLevelE2ELNSK_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.noexc18, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.cy = atomicrmw sub ptr %i.ct, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cz = add i32 %i.cy, -2048                    ; 2 uses
  store i32 %i.cz, ptr %i.b, align 4, !tbaa !34
  %i.da = icmp ugt i32 %i.cz, 2047
  %i.db = and i32 %i.cy, 16
  %.not.i.i.i.i = icmp eq i32 %i.db, 0
  %or.cond.i.i.i = or i1 %i.da, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.o, !prof !79

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ct, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.s

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSK_22SynchronizedMutexLevelE2ELNSK_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.p:                                             ; preds = %bb.k
  %i.dc = load i16, ptr %i.i, align 2, !tbaa !78
  %i.dd = zext i16 %i.dc to i64
  %i.de = ptrtoint ptr %i.ct to i64
  %.idx.i = shl nuw nsw i64 %i.dd, 5
  %i.df = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.dg = cmpxchg ptr %i.df, i64 %i.de, i64 0 seq_cst seq_cst, align 8
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  br i1 %i.dh, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSK_22SynchronizedMutexLevelE2ELNSK_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.di = atomicrmw sub ptr %i.ct, i32 2048 seq_cst, align 4 ; 2 uses
  %i.dj = add i32 %i.di, -2048                    ; 2 uses
  store i32 %i.dj, ptr %i.a, align 4, !tbaa !34
  %i.dk = icmp ugt i32 %i.dj, 2047
  %i.dl = and i32 %i.di, 16
  %.not.i.i.i17 = icmp eq i32 %i.dl, 0
  %or.cond.i.i = or i1 %i.dk, %.not.i.i.i17
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.r, !prof !79

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ct, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.s

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSK_22SynchronizedMutexLevelE2ELNSK_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.s:                                             ; preds = %bb.r, %bb.o, %bb.m
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  call void @__clang_call_terminate(ptr %i.dn) #30
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSK_22SynchronizedMutexLevelE2ELNSK_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.p, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc18, %.noexc1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i1 %.sroa.021.0

bb.t:                                             ; preds = %bb.h
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSK_22SynchronizedMutexLevelE2ELNSK_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.do
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSK_22SynchronizedMutexLevelE2ELNSK_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !77
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !76
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #30
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load atomic i32, ptr @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache monotonic, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly19shared_mutex_detail25getMaxDeferredReadersSlowERNS_14relaxed_atomicIjEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZN5folly19shared_mutex_detail21getMaxDeferredReadersEvE5cache) #34
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
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %_ZN5folly19shared_mutex_detail21getMaxDeferredReadersEv.exit
end_hunk_3
begin_hunk_4_@_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_:bb.a
bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.b, align 1, !tbaa !43
  %i.n = sext i8 %i.m to i64
  %i.o = shl nsw i64 %i.n, 45
  %i.p = getelementptr i8, ptr %i.d, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43
  %i.r = sext i8 %i.q to i64
  %i.s = or i64 %i.o, %i.r
  %i.t = lshr i64 %i.c, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !43
  %i.w = sext i8 %i.v to i64
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

bb.f:                                             ; preds = %bb.a
  %i.x = icmp ugt i64 %i.c, 48
  br i1 %i.x, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2: ; preds = %bb.f, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %.069.i = phi i64 [ %i.bc, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.c, %bb.f ]
  %.067.i = phi i64 [ %i.ag, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.066.i = phi ptr [ %i.bb, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ %i.b, %bb.f ] ; 7 uses
  %.065.i = phi i64 [ %i.aq, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.i = phi i64 [ %i.ba, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2 ], [ 4766890152743124950, %bb.f ]
  %.0.copyload.i.i18 = load i64, ptr %.066.i, align 1
  %i.y = xor i64 %.0.copyload.i.i18, 3257665815644502181
  %i.z = getelementptr inbounds nuw i8, ptr %.066.i, i64 8
  %.0.copyload.i.i19 = load i64, ptr %i.z, align 1
  %i.aa = xor i64 %.0.copyload.i.i19, %.067.i
  %i.ab = zext i64 %i.y to i128
  %i.ac = zext i64 %i.aa to i128
  %i.ad = mul nuw i128 %i.ac, %i.ab               ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = xor i128 %i.ae, %i.ad
  %i.ag = trunc i128 %i.af to i64                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.066.i, i64 16
  %.0.copyload.i.i20 = load i64, ptr %i.ah, align 1
  %i.ai = xor i64 %.0.copyload.i.i20, -8378864009470890807
  %i.aj = getelementptr inbounds nuw i8, ptr %.066.i, i64 24
  %.0.copyload.i.i21 = load i64, ptr %i.aj, align 1
  %i.ak = xor i64 %.0.copyload.i.i21, %.065.i
  %i.al = zext i64 %i.ai to i128
  %i.am = zext i64 %i.ak to i128
  %i.an = mul nuw i128 %i.am, %i.al               ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = xor i128 %i.ao, %i.an
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.066.i, i64 32
  %.0.copyload.i.i22 = load i64, ptr %i.ar, align 1
  %i.as = xor i64 %.0.copyload.i.i22, 5418857496715711651
  %i.at = getelementptr inbounds nuw i8, ptr %.066.i, i64 40
  %.0.copyload.i.i23 = load i64, ptr %i.at, align 1
  %i.au = xor i64 %.0.copyload.i.i23, %.0.i
  %i.av = zext i64 %i.as to i128
  %i.aw = zext i64 %i.au to i128
  %i.ax = mul nuw i128 %i.aw, %i.av               ; 2 uses
  %i.ay = lshr i128 %i.ax, 64
  %i.az = xor i128 %i.ay, %i.ax
  %i.ba = trunc i128 %i.az to i64                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.066.i, i64 48 ; 3 uses
  %i.bc = add i64 %.069.i, -48                    ; 5 uses
  %i.bd = icmp ugt i64 %i.bc, 48
  br i1 %i.bd, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2, label %bb.g, !llvm.loop !0

bb.g:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2
  %i.be = xor i64 %i.aq, %i.ag
  %i.bf = xor i64 %i.be, %i.ba                    ; 2 uses
  %i.bg = icmp samesign ugt i64 %i.bc, 16
  br i1 %i.bg, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10: ; preds = %bb.f, %bb.g
  %.1.i72 = phi ptr [ %i.bb, %bb.g ], [ %i.b, %bb.f ] ; 6 uses
  %.168.i70 = phi i64 [ %i.bf, %bb.g ], [ 4766890152743124950, %bb.f ]
  %.170.i69 = phi i64 [ %i.bc, %bb.g ], [ %i.c, %bb.f ] ; 3 uses
  %.0.copyload.i.i24 = load i64, ptr %.1.i72, align 1
  %i.bh = xor i64 %.0.copyload.i.i24, 5418857496715711651
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i72, i64 8
  %.0.copyload.i.i25 = load i64, ptr %i.bi, align 1
  %i.bj = xor i64 %.0.copyload.i.i25, %.168.i70
  %i.bk = zext i64 %i.bh to i128
  %i.bl = zext i64 %i.bj to i128
  %i.bm = mul nuw i128 %i.bl, %i.bk               ; 2 uses
  %i.bn = lshr i128 %i.bm, 64
  %i.bo = xor i128 %i.bn, %i.bm
  %i.bp = trunc i128 %i.bo to i64                 ; 2 uses
  %i.bq = icmp samesign ugt i64 %.170.i69, 32
  br i1 %i.bq, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i72, i64 16
  %.0.copyload.i.i26 = load i64, ptr %i.br, align 1
  %i.bs = xor i64 %.0.copyload.i.i26, 5418857496715711651
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i72, i64 24
  %.0.copyload.i.i27 = load i64, ptr %i.bt, align 1
  %i.bu = xor i64 %.0.copyload.i.i27, %i.bp
  %i.bv = zext i64 %i.bs to i128
  %i.bw = zext i64 %i.bu to i128
  %i.bx = mul nuw i128 %i.bw, %i.bv               ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = xor i128 %i.by, %i.bx
  %i.ca = trunc i128 %i.bz to i64
  br label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10, %bb.g
  %.1.i71 = phi ptr [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.1.i72, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bb, %bb.g ]
  %.170.i68 = phi i64 [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %.170.i69, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bc, %bb.g ] ; 3 uses
  %.2.i = phi i64 [ %i.ca, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8 ], [ %i.bp, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10 ], [ %i.bf, %bb.g ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.1.i71, i64 %.170.i68 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  %.0.copyload.i.i28 = load i64, ptr %i.cc, align 1
  %i.cd = xor i64 %.0.copyload.i.i28, %.170.i68
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %.0.copyload.i.i29 = load i64, ptr %i.ce, align 1
  br label %_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit

_ZN5folly8external16rapidhash_detail22rapidhashNano_internalEPKcmmPKm.exit: ; preds = %bb.d, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit, %bb.e, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12
  %.064 = phi i64 [ %.0.copyload.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.k, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %i.cd, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ %i.s, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %.0.copyload.i.i15, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.l, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %.0.copyload.i.i29, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ %i.w, %bb.e ], [ 0, %bb.d ]
  %.271.i = phi i64 [ %i.c, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.c, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %.170.i68, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ %i.c, %bb.e ], [ 0, %bb.d ]
  %.3.i = phi i64 [ %i.g, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit ], [ %i.g, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit ], [ %.2.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12 ], [ 4766890152743124950, %bb.e ], [ 4766890152743124950, %bb.d ]
  %i.cf = xor i64 %.064, -8378864009470890807
  %i.cg = xor i64 %.3.i, %.0
  %i.ch = zext i64 %i.cf to i128
  %i.ci = zext i64 %i.cg to i128
  %i.cj = mul nuw i128 %i.ci, %i.ch               ; 2 uses
  %i.ck = trunc i128 %i.cj to i64
  %i.cl = lshr i128 %i.cj, 64
  %i.cm = trunc nuw i128 %i.cl to i64
  %i.cn = xor i64 %i.ck, -6148914691236517206
  %i.co = xor i64 %.271.i, %i.cm
  %i.cp = xor i64 %i.co, -8378864009470890807
  %i.cq = zext i64 %i.cn to i128
  %i.cr = zext i64 %i.cp to i128
  %i.cs = mul nuw i128 %i.cr, %i.cq               ; 2 uses
  %i.ct = lshr i128 %i.cs, 64
  %i.cu = xor i128 %i.ct, %i.cs
  %i.cv = trunc i128 %i.cu to i64
  ret i64 %i.cv
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 2 dereferenceable(4)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5folly8settings21FrozenSettingProjectsC2ENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef align 8 captures(none) %1) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !80
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !80
  store ptr null, ptr %1, align 8, !tbaa !38
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.c, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  store i64 %i.f, ptr %i.b, align 8, !tbaa !54
  store i64 0, ptr %i.e, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly8settings21FrozenSettingProjects8containsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !37
  %i.d = icmp ult i64 %i.c, 256
  br i1 %i.d, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclISt17basic_string_viewIcSt11char_traitsIcEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 3 uses
  %i.f = lshr i64 %i.e, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.f, i64 1) ; 2 uses
  %i.g = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.h = or disjoint i64 %i.g, 1                  ; 2 uses
  %i.i = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.j = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !37
  %i.m = and i64 %i.l, 255                        ; 2 uses
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.m
  %i.o = xor i64 %notmask.i, -1                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28   ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = load i64, ptr %3, align 8
  %.fr37 = freeze i64 %i.s                        ; 3 uses
  %i.t = icmp eq i64 %.fr37, 0
  br i1 %i.t, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %bb.d
  %.023.i34.us = phi i64 [ %i.au, %bb.d ], [ %i.n, %bb.b ]
  %.025.i33.us = phi i64 [ %i.av, %bb.d ], [ %i.e, %bb.b ] ; 2 uses
  %i.u = and i64 %.025.i33.us, %i.o
  %i.v = shl nsw i64 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 3 uses
  %i.x = load <16 x i8>, ptr %i.w, align 16       ; 2 uses
  %i.y = icmp eq <16 x i8> %i.x, %i.k
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = and i32 %i.aa, 4095
  %.not.us = icmp eq i32 %i.ab, 0
  %i.ac = extractelement <16 x i8> %i.x, i64 15
  br i1 %.not.us, label %.loopexit.split.us.us, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us
  %i.ad = icmp ne ptr %i.w, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ad)
  %i.ae = load ptr, ptr %0, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.us.us, %.preheader.us
  %.sroa.07.0.us.us = phi i32 [ %i.ar, %.critedge.i.us.us ], [ %i.aa, %.preheader.us ] ; 4 uses
  %i.af = icmp ne i32 %.sroa.07.0.us.us, 0
  call void @llvm.assume(i1 %i.af)
  %i.ag = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0.us.us, i1 true)
  %i.ah = shl nuw nsw i32 %i.ag, 2
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %i.w, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !34
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !50
  %.not.i.i.i.us.us = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.us.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %.critedge.i.us.us, !prof !36

.critedge.i.us.us:                                ; preds = %bb.c
  %i.aq = add nsw i32 %.sroa.07.0.us.us, -1
  %i.ar = and i32 %i.aq, %.sroa.07.0.us.us        ; 2 uses
  %i.as = and i32 %i.ar, 4094
  %.not31.us.us = icmp eq i32 %i.as, 0
  br i1 %.not31.us.us, label %.loopexit.split.us.us, label %bb.c, !llvm.loop !4

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.split.us
  %i.at = icmp eq i8 %i.ac, 0
  br i1 %i.at, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %bb.d, !prof !35

bb.d:                                             ; preds = %.loopexit.split.us.us
  %i.au = add i64 %.023.i34.us, -1                ; 2 uses
  %i.av = add i64 %i.h, %.025.i33.us
  %.not.i.us = icmp eq i64 %i.au, 0
  br i1 %.not.i.us, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %.split.us, !llvm.loop !5

.split:                                           ; preds = %bb.b, %bb.f
  %.023.i34 = phi i64 [ %i.by, %bb.f ], [ %i.n, %bb.b ]
  %.025.i33 = phi i64 [ %i.bz, %bb.f ], [ %i.e, %bb.b ] ; 2 uses
  %i.aw = and i64 %.025.i33, %i.o
  %i.ax = shl nsw i64 %i.aw, 6
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ax ; 3 uses
  %i.az = load <16 x i8>, ptr %i.ay, align 16     ; 2 uses
  %i.ba = icmp eq <16 x i8> %i.az, %i.k
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %i.bc = zext i16 %i.bb to i32                   ; 2 uses
  %i.bd = and i32 %i.bc, 4095
  %.not = icmp eq i32 %i.bd, 0
  %i.be = extractelement <16 x i8> %i.az, i64 15
  br i1 %.not, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.bf = icmp ne ptr %i.ay, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bf)
  %i.bg = load ptr, ptr %0, align 8, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.07.0 = phi i32 [ %i.bk, %.critedge.i ], [ %i.bc, %.preheader ] ; 4 uses
  %i.bh = icmp ne i32 %.sroa.07.0, 0
  call void @llvm.assume(i1 %i.bh)
  %i.bi = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0, i1 true)
  %i.bj = add nsw i32 %.sroa.07.0, -1
  %i.bk = and i32 %i.bj, %.sroa.07.0              ; 2 uses
  %i.bl = shl nuw nsw i32 %i.bi, 2
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr i8, ptr %i.ay, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !34
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !50
  %.not.i.i.i = icmp eq i64 %.fr37, %i.bt
  br i1 %.not.i.i.i, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemISt17basic_string_viewIcS6_EEEbRKT_RKj.exit, label %.critedge.i, !prof !36

_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemISt17basic_string_viewIcS6_EEEbRKT_RKj.exit: ; preds = %bb.e
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !48
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.r, ptr %i.bu, i64 %.fr37)
  %i.bv = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bv, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %.critedge.i, !prof !53

.critedge.i:                                      ; preds = %bb.e, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemISt17basic_string_viewIcS6_EEEbRKT_RKj.exit
  %i.bw = and i32 %i.bk, 4094
  %.not31 = icmp eq i32 %i.bw, 0
  br i1 %.not31, label %.loopexit.split, label %bb.e, !llvm.loop !4

.loopexit.split:                                  ; preds = %.critedge.i, %.split
  %i.bx = icmp eq i8 %i.be, 0
  br i1 %i.bx, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %bb.f, !prof !35

bb.f:                                             ; preds = %.loopexit.split
  %i.by = add i64 %.023.i34, -1                   ; 2 uses
  %i.bz = add i64 %i.h, %.025.i33
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit, label %.split, !llvm.loop !5

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE4findISt17basic_string_viewIcS7_EEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEERKT_.exit: ; preds = %.loopexit.split, %bb.f, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemISt17basic_string_viewIcS6_EEEbRKT_RKj.exit, %bb.d, %.loopexit.split.us.us, %bb.c, %bb.a
  %.sroa.06.0 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE14keyMatchesItemISt17basic_string_viewIcS6_EEEbRKT_RKj.exit ], [ false, %bb.d ], [ false, %.loopexit.split.us.us ], [ false, %bb.f ], [ false, %.loopexit.split ]
  ret i1 %.sroa.06.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly8settings21frozenSettingProjectsEv(ptr dead_on_unwind noalias writable sret(%"struct.folly::settings::FrozenSettingProjects") align 8 %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::F14FastSet", align 16 ; 11 uses
  %2 = alloca %"class.folly::F14FastSet", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = load atomic i8, ptr @_ZGVZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11) #20
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i8 0, i64 32, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11, i64 8), align 8, !tbaa !28
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11) #20
  br label %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit

_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @_ZNK5folly12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS7_vEENS_26HeterogeneousAccessEqualToIS7_vEESaIS7_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEE4copyEv(ptr dead_on_unwind nonnull writable sret(%"class.folly::F14FastSet") align 8 %1, ptr noundef nonnull align 8 dereferenceable(28) @_ZZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11EvE8projectsB5cxx11)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load <2 x ptr>, ptr %1, align 16, !tbaa !80
  store ptr null, ptr %1, align 16, !tbaa !38
  store <2 x ptr> %i.g, ptr %2, align 16, !tbaa !80
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.i = load i64, ptr %i.h, align 16, !tbaa !54
  store i64 %i.i, ptr %i.e, align 16, !tbaa !54
  store i64 0, ptr %i.h, align 16, !tbaa !54
  invoke void @_ZN5folly8settings21FrozenSettingProjectsC1ENS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5folly8settings12_GLOBAL__N_127globalFrozenSettingProjectsB5cxx11Ev.exit
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.l = load i8, ptr %i.k, align 1, !tbaa !83
  %i.m = icmp eq i8 %i.l, -1
  br i1 %i.m, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.e, align 16, !tbaa !37  ; 3 uses
  %i.o = lshr i64 %i.n, 8                         ; 2 uses
  %i.p = and i64 %i.n, 255
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.0.copyload.i.i.i = load i16, ptr %i.q, align 1
  %i.r = zext i16 %.0.copyload.i.i.i to i64
  %notmask.i.i = shl nsw i64 -1, %i.p
  %i.s = xor i64 %notmask.i.i, -1
  %i.t = lshr i64 %i.s, 12
  %i.u = add nuw nsw i64 %i.t, 1
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %.pre19 = load ptr, ptr %2, align 16, !tbaa !38
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %i.v = phi ptr [ %i.ac, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre19, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.05.i.i.i = phi i64 [ %i.ad, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.05.i.i.i ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !43
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #29
  %.pre = load ptr, ptr %2, align 16, !tbaa !38
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ac = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.v, %.lr.ph.i.i.i ]
  %i.ad = add nuw nsw i64 %.05.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ad, %i.o
  br i1 %exitcond.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pre.i = load i64, ptr %i.e, align 16, !tbaa !37
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, %bb.e
  %i.ae = phi i64 [ %.pre.i, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i ], [ %i.n, %bb.e ] ; 3 uses
  %i.af = icmp ult i64 %i.ae, 256
  br i1 %i.af, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.ag = and i64 %i.ae, 255                      ; 2 uses
  store i64 %i.ag, ptr %i.e, align 16, !tbaa !37
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i: ; preds = %bb.f, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.ah = phi i64 [ %i.ae, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !28  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %.0.copyload.i.i = load i16, ptr %i.aj, align 1
  %i.ak = zext i16 %.0.copyload.i.i to i64
  %i.al = icmp eq i64 %i.ah, 0
  %i.am = shl nuw nsw i64 %i.ak, 2
  %.neg17.i = sub nuw nsw i64 -16, %i.am
  %.neg18.i = shl i64 -64, %i.ah
  %.0.i.neg.i = select i1 %i.al, i64 %.neg17.i, i64 %.neg18.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.d, align 8, !tbaa !28
  store i64 0, ptr %i.e, align 16, !tbaa !37
  %i.an = and i64 %.0.i.neg.i, -8
  %i.ao = shl nuw nsw i64 %i.r, 5
  %i.ap = mul i64 %i.ao, %i.u
  %i.aq = sub i64 %i.ap, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.aq) #20
  store ptr null, ptr %2, align 16, !tbaa !38
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit: ; preds = %bb.d, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !28  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !83
  %i.au = icmp eq i8 %i.at, -1
  br i1 %i.au, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit18, label %bb.g

bb.g:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit
  %i.av = load i64, ptr %i.h, align 16, !tbaa !37 ; 3 uses
  %i.aw = lshr i64 %i.av, 8                       ; 2 uses
  %i.ax = and i64 %i.av, 255
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.0.copyload.i.i.i1 = load i16, ptr %i.ay, align 1
  %i.az = zext i16 %.0.copyload.i.i.i1 to i64
  %notmask.i.i2 = shl nsw i64 -1, %i.ax
  %i.ba = xor i64 %notmask.i.i2, -1
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = add nuw nsw i64 %i.bb, 1
  %.not.i.i.i3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i3, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i11, label %.lr.ph.i.i.i4.preheader
end_hunk_4
begin_hunk_5_@_ZN5folly9LockedPtrIKNS_12SynchronizedINS_10F14FastSetINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaIS8_EEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSL_22SynchronizedMutexLevelE2ELNSL_23SynchronizedMutexMethodE0EEEED2Ev:bb.a
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 6 uses
  %i.c = lshr i64 %i.b, 8                         ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %i.b, 3328
  br i1 %i.e, label %bb.c, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.b, 768
  br i1 %i.f, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.inv.i = icmp samesign ugt i64 %i.b, 1791
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.b
  %i.g = add nsw i64 %i.c, -1
  %i.h = udiv i64 %i.g, 10
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = sub nuw nsw i32 64, %i.j                 ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 1, %i.l                  ; 2 uses
  %i.n = icmp ugt i64 %i.b, 5243135
  %i.o = shl i32 10, %i.k
  %i.p = zext i32 %i.o to i64
  %i.q = select i1 %i.n, i64 40960, i64 %i.p      ; 2 uses
  %i.r = add nsw i64 %i.m, -1
  %i.s = lshr i64 %i.r, 12
  %i.t = add nuw nsw i64 %i.s, 1
  %i.u = mul i64 %i.t, %i.q
  %i.v = icmp ugt i64 %i.u, 4294967295
  br i1 %i.v, label %bb.e, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

bb.e:                                             ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #14
  unreachable

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %_ZN5folly11findLastSetImEEjT_.exit.i, %bb.c, %bb.d
  %.pn22.i = phi i64 [ 1, %bb.c ], [ 1, %bb.d ], [ %i.m, %_ZN5folly11findLastSetImEEjT_.exit.i ] ; 2 uses
  %.0.pn.i = phi i64 [ 2, %bb.c ], [ %spec.select.i, %bb.d ], [ %i.q, %_ZN5folly11findLastSetImEEjT_.exit.i ] ; 2 uses
  %i.w = and i64 %i.b, 255
  %i.x = shl nuw i64 1, %i.w                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.0.copyload.i = load i16, ptr %i.aa, align 1
  %i.ab = zext i16 %.0.copyload.i to i64          ; 2 uses
  %i.ac = icmp ugt i64 %i.x, %.pn22.i
  %i.ad = icmp samesign ult i64 %.0.pn.i, %i.ab
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad   ; 2 uses
  %.sroa.5.0 = select i1 %or.cond, i64 %.0.pn.i, i64 %i.ab
  %.sroa.09.0 = select i1 %or.cond, i64 %.pn22.i, i64 %i.x
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef %.sroa.09.0, i64 noundef %.sroa.5.0)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.ag = trunc i64 %i.af to i8
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !37
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = icmp eq i8 %i.ag, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15directBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit unwind label %bb.h

bb.g:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #20 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE26buildFromF14TableCatchColdEPSD_(ptr noundef nonnull %0)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit unwind label %bb.i, !inline_history !146

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit: ; preds = %bb.h
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.an

bb.k:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #30
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE17buildFromF14TableIRKSE_EEvOT_EUlvE_PFvPSE_EJSL_EvEET2_SJ_OT0_DpOT1_.exit: ; preds = %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEEEEJSF_ESG_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE26buildFromF14TableCatchColdEPSD_(ptr noundef %0) local_unnamed_addr #24 comdat align 2 {
bb.a:
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #20
  tail call void @__cxa_rethrow() #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15directBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.39, align 1             ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %i.c = lshr i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.f = call noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSB_ZNSB_11beforeBuildEmmSE_EUlRKS8_E_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.g = load i64, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.h = and i64 %i.g, 255                        ; 4 uses
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.0.copyload.i.i43 = load i16, ptr %i.k, align 1
  %i.l = zext i16 %.0.copyload.i.i43 to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = shl i64 12, %i.h
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.l, %bb.b ], [ %i.m, %bb.c ]
  %i.n = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.o = and i64 %i.n, 255                        ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.0.copyload.i.i45 = load i16, ptr %i.s, align 1
  %i.t = zext i16 %.0.copyload.i.i45 to i64
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46

bb.e:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit
  %i.u = shl i64 12, %i.o
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46: ; preds = %bb.d, %bb.e
  %.0.i44 = phi i64 [ %i.t, %bb.d ], [ %i.u, %bb.e ]
  %i.v = icmp eq i64 %.0.i, %.0.i44
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.0.copyload.i = load i16, ptr %i.x, align 1    ; 2 uses
  %i.y = zext i16 %.0.copyload.i to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 16
  %i.ab = shl i64 64, %i.h
  %.0.i47 = select i1 %i.i, i64 %i.aa, i64 %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.w, ptr align 16 %i.ad, i64 %.0.i47, i1 false)
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !37
  %i.af = and i64 %i.ae, -256
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !37
  %i.ah = and i64 %i.ag, 255
  %i.ai = or disjoint i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !37
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i16 %.0.copyload.i, ptr %i.ak, align 1
  br label %.loopexit

bb.g:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9itemCountEv.exit46
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %notmask = shl nsw i64 -1, %i.h
  %i.an = xor i64 %notmask, -1
  %i.ao = shl nsw i64 %i.an, 6                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.as = phi i64 [ %i.cg, %._crit_edge ], [ %i.n, %bb.g ]
  %i.at = phi i64 [ %i.ch, %._crit_edge ], [ %i.g, %bb.g ]
  %.037 = phi ptr [ %i.ci, %._crit_edge ], [ %i.ap, %bb.g ] ; 7 uses
  %.036 = phi ptr [ %i.cj, %._crit_edge ], [ %i.ar, %bb.g ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.037, i64 14
  %i.av = load i8, ptr %i.au, align 2, !tbaa !42
  %i.aw = and i8 %i.av, -16
  %i.ax = getelementptr inbounds nuw i8, ptr %.036, i64 14 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !42
  %i.az = add i8 %i.ay, %i.aw
  store i8 %i.az, ptr %i.ax, align 2, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %.037, i64 15
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %.036, i64 15
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !44
  %i.bd = load <16 x i8>, ptr %.037, align 16, !tbaa !43
  %i.be = icmp eq <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 4095                     ; 2 uses
  %.not5758 = icmp eq i16 %i.bg, 4095
  br i1 %.not5758, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.bh = xor i16 %i.bg, 4095
  %.sroa.0.0.extract.trunc = zext nneg i16 %i.bh to i32
  %i.bi = icmp ne ptr %.037, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bi)
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.03561 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 3 uses
  %.sroa.0.060 = phi i32 [ %.sroa.0.0.extract.trunc, %.lr.ph ], [ %.sroa.0.1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 3 uses
  %.sroa.8.059 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ] ; 2 uses
  %i.bj = and i32 %.sroa.0.060, 1
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %bb.j, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !66

bb.j:                                             ; preds = %bb.i
  %i.bk = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0.060, i1 true) ; 2 uses
  %i.bl = add i32 %i.bk, %.sroa.8.059
  %i.bm = add nuw nsw i32 %i.bk, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.i, %bb.j
  %.sroa.8.1.in = phi i32 [ %i.bl, %bb.j ], [ %.sroa.8.059, %bb.i ] ; 2 uses
  %.pn = phi i32 [ %i.bm, %bb.j ], [ 1, %bb.i ]
  %i.bn = zext i32 %.sroa.8.1.in to i64           ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = getelementptr i8, ptr %.037, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !34
  %i.bs = shl i64 %.03561, 2
  %i.bt = getelementptr i8, ptr %.036, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %.036, i64 %.03561 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !43
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.037, i64 %i.bn
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !43
  %.sroa.0.1 = lshr i32 %.sroa.0.060, %.pn        ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  store i8 %i.bz, ptr %i.bv, align 1, !tbaa !43
  %i.ca = load i64, ptr %i.d, align 8, !tbaa !37  ; 2 uses
  %i.cb = and i64 %i.ca, -256
  %i.cc = add i64 %i.cb, 256
  %i.cd = and i64 %i.ca, 255
  %i.ce = or disjoint i64 %i.cc, %i.cd            ; 2 uses
  store i64 %i.ce, ptr %i.d, align 8, !tbaa !37
  %i.cf = add i64 %.03561, 1
  %.not57 = icmp eq i32 %.sroa.0.1, 0
  br i1 %.not57, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !147

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %i.cg = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.as, %bb.h ] ; 2 uses
  %i.ch = phi i64 [ %i.ce, %._crit_edge.loopexit ], [ %i.at, %bb.h ] ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.037, i64 -64
  %i.cj = getelementptr inbounds i8, ptr %.036, i64 -64
  %.not.unshifted = xor i64 %i.cg, %i.ch
  %.not = icmp ult i64 %.not.unshifted, 256
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !148

.loopexit:                                        ; preds = %._crit_edge, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.39, align 1             ; 3 uses
  %3 = alloca %"struct.std::array.17", align 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %i.c = and i64 %i.b, 255                        ; 3 uses
  %i.d = shl nuw i64 1, %i.c                      ; 4 uses
  %.not = icmp samesign ugt i64 %i.c, 8           ; 3 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 63
  br i1 %i.e, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit, !prof !66

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit:     ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit
  %.0129 = phi ptr [ %i.f, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit ], [ %3, %bb.a ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0129, i8 0, i64 %i.d, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = lshr i64 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.k = invoke noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSB_ZNSB_11beforeBuildEmmSE_EUlRKS8_E_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.g, align 8, !tbaa !37
  %i.n = and i64 %i.m, 255
  %notmask.i60 = shl nsw i64 -1, %i.n
  %4 = and i64 %notmask.i60, 288230376151711743
  %i.o = xor i64 %4, 288230376151711743
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e
  %.0121 = phi i64 [ %i.o, %bb.e ], [ %i.is, %.loopexit ] ; 4 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.q = shl nsw i64 %.0121, 6
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q ; 7 uses
  %i.s = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.t = icmp eq <16 x i8> %i.s, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16
  %i.v = and i16 %i.u, 4095                       ; 2 uses
  %i.w = xor i16 %i.v, 4095
  %.sroa.093.0.extract.trunc = zext nneg i16 %i.w to i32 ; 3 uses
  %.not132149 = icmp eq i16 %i.v, 4095
  %i.x = extractelement <16 x i8> %i.s, i64 14
  br i1 %.not132149, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.y = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.y)
  %i.z = load ptr, ptr %0, align 8, !tbaa !38
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %i.aa = icmp ult i8 %i.x, 16
  br i1 %i.aa, label %.lr.ph159, label %.lr.ph155

bb.g:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br i1 %.not, label %bb.ac, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit81

bb.h:                                             ; preds = %.lr.ph, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit
  %.sroa.090.0151 = phi i32 [ %.sroa.093.0.extract.trunc, %.lr.ph ], [ %.sroa.090.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 3 uses
  %.sroa.8.0150 = phi i32 [ 0, %.lr.ph ], [ %.sroa.8.1, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit ] ; 2 uses
  %i.ac = and i32 %.sroa.090.0151, 1
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.i, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit, !prof !66

bb.i:                                             ; preds = %bb.h
  %i.ad = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.090.0151, i1 true) ; 2 uses
  %i.ae = add i32 %i.ad, %.sroa.8.0150
  %i.af = add nuw nsw i32 %i.ad, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit:  ; preds = %bb.h, %bb.i
  %.sroa.8.1.in = phi i32 [ %i.ae, %bb.i ], [ %.sroa.8.0150, %bb.h ] ; 2 uses
  %.pn136 = phi i32 [ %i.af, %bb.i ], [ 1, %bb.h ]
  %.sroa.090.1 = lshr i32 %.sroa.090.0151, %.pn136 ; 2 uses
  %.sroa.8.1 = add i32 %.sroa.8.1.in, 1
  %i.ag = zext i32 %.sroa.8.1.in to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = getelementptr i8, ptr %i.r, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.al
  call void @llvm.prefetch.p0(ptr %i.am, i32 0, i32 3, i32 1)
  %.not132 = icmp eq i32 %.sroa.090.1, 0
  br i1 %.not132, label %._crit_edge, label %bb.h

.lr.ph159:                                        ; preds = %._crit_edge, %bb.m
  %.sroa.093.0158 = phi i32 [ %.sroa.093.2, %bb.m ], [ %.sroa.093.0.extract.trunc, %._crit_edge ] ; 3 uses
  %.sroa.12.0157 = phi i32 [ %.sroa.12.2, %bb.m ], [ 0, %._crit_edge ] ; 2 uses
  %i.an = and i32 %.sroa.093.0158, 1
  %.not.i61 = icmp eq i32 %i.an, 0
  br i1 %.not.i61, label %bb.j, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63, !prof !66

bb.j:                                             ; preds = %.lr.ph159
  %i.ao = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.093.0158, i1 true) ; 2 uses
  %i.ap = add i32 %i.ao, %.sroa.12.0157
  %i.aq = add nuw nsw i32 %i.ao, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63: ; preds = %.lr.ph159, %bb.j
  %.sroa.12.2.in = phi i32 [ %i.ap, %bb.j ], [ %.sroa.12.0157, %.lr.ph159 ] ; 2 uses
  %.pn135 = phi i32 [ %i.aq, %bb.j ], [ 1, %.lr.ph159 ]
  %.sroa.093.2 = lshr i32 %.sroa.093.0158, %.pn135 ; 2 uses
  %.sroa.12.2 = add i32 %.sroa.12.2.in, 1
  %i.ar = zext i32 %.sroa.12.2.in to i64          ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = getelementptr i8, ptr %i.r, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ar
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !43  ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 1
  %i.ba = or disjoint i64 %i.az, 1
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !37
  %i.bc = and i64 %i.bb, 255
  %notmask.i.i = shl nsw i64 -1, %i.bc
  %i.bd = xor i64 %notmask.i.i, -1                ; 2 uses
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.bf = and i64 %.0121, %i.bd                   ; 4 uses
  %i.bg = shl nsw i64 %i.bf, 6                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0129, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !43  ; 2 uses
  %i.bj = icmp ult i8 %i.bi, 12
  br i1 %i.bj, label %._crit_edge.i, label %.lr.ph.i, !prof !67

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i
  %i.bk = phi i64 [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.bg, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ]
  %i.bl = phi i64 [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ], [ %i.bf, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 15 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !44  ; 2 uses
  %.not.i.i = icmp eq i8 %i.bo, -2
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bp = add i8 %i.bo, 1
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !44
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.k, %.lr.ph.i
  %i.bq = add i64 %i.ba, %i.bl
  %i.br = and i64 %i.bq, %i.bd                    ; 4 uses
  %i.bs = shl nsw i64 %i.br, 6                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0129, i64 %i.br
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !43  ; 2 uses
  %i.bv = icmp ult i8 %i.bu, 12
  br i1 %i.bv, label %._crit_edge.i, label %.lr.ph.i, !prof !68, !llvm.loop !2

._crit_edge.i:                                    ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63
  %.lcssa22.i = phi i64 [ %i.bf, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ], [ %i.br, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.0.lcssa.i = phi i8 [ 0, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ], [ 16, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.pn.i = phi i64 [ %i.bg, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ], [ %i.bs, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ]
  %.lcssa.i = phi i8 [ %i.bi, %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit63 ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i ] ; 2 uses
  %.lcssa21.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.pn.i ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0129, i64 %.lcssa22.i
  %i.bx = add nuw nsw i8 %.lcssa.i, 1
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !43
  %i.by = zext nneg i8 %.lcssa.i to i64           ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !43
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

bb.m:                                             ; preds = %._crit_edge.i
  store i8 %i.ax, ptr %i.bz, align 1, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %.lcssa21.i, i64 14 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !42
  %i.ce = add i8 %i.cd, %.0.lcssa.i
  store i8 %i.ce, ptr %i.cc, align 2, !tbaa !42
  %i.cf = shl nuw nsw i64 %i.by, 2
  %i.cg = getelementptr i8, ptr %.lcssa21.i, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 16     ; 2 uses
  %i.ci = icmp ne ptr %.lcssa21.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ci)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  store i32 %i.av, ptr %i.ch, align 4, !tbaa !34
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.ck = and i64 %i.cj, -256
  %i.cl = add i64 %i.ck, 256
  %i.cm = and i64 %i.cj, 255
  %i.cn = or disjoint i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !37
  %.not134 = icmp eq i32 %.sroa.093.2, 0
  br i1 %.not134, label %.loopexit, label %.lr.ph159, !llvm.loop !149

.lr.ph155:                                        ; preds = %._crit_edge, %bb.z
  %.sroa.093.1154 = phi i32 [ %.sroa.093.3, %bb.z ], [ %.sroa.093.0.extract.trunc, %._crit_edge ] ; 3 uses
  %.sroa.12.1153 = phi i32 [ %.sroa.12.3, %bb.z ], [ 0, %._crit_edge ] ; 2 uses
  %i.co = and i32 %.sroa.093.1154, 1
  %.not.i64 = icmp eq i32 %i.co, 0
  br i1 %.not.i64, label %bb.n, label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66, !prof !66

bb.n:                                             ; preds = %.lr.ph155
  %i.cp = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.093.1154, i1 true) ; 2 uses
  %i.cq = add i32 %i.cp, %.sroa.12.1153
  %i.cr = add nuw nsw i32 %i.cp, 1
  br label %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66

_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66: ; preds = %.lr.ph155, %bb.n
  %.sroa.12.3.in = phi i32 [ %i.cq, %bb.n ], [ %.sroa.12.1153, %.lr.ph155 ] ; 2 uses
  %.pn = phi i32 [ %i.cr, %bb.n ], [ 1, %.lr.ph155 ]
  %.sroa.093.3 = lshr i32 %.sroa.093.1154, %.pn   ; 2 uses
  %.sroa.12.3 = add i32 %.sroa.12.3.in, 1
  %i.cs = zext i32 %.sroa.12.3.in to i64          ; 2 uses
  %i.ct = shl nuw nsw i64 %i.cs, 2
  %i.cu = getelementptr i8, ptr %i.r, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !34 ; 2 uses
  %i.cx = load ptr, ptr %1, align 8, !tbaa !38
  %i.cy = zext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !48 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !50 ; 13 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc ; 3 uses
  %i.de = icmp ult i64 %i.dc, 17
  br i1 %i.de, label %bb.o, label %bb.s, !prof !35

bb.o:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66
  %i.df = icmp samesign ugt i64 %i.dc, 3
  br i1 %i.df, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dg = xor i64 %i.dc, 4766890152743124950      ; 2 uses
  %i.dh = icmp samesign ugt i64 %i.dc, 7
  br i1 %i.dh, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i: ; preds = %bb.p
  %i.di = getelementptr inbounds i8, ptr %i.dd, i64 -8
  %.0.copyload.i.i.i = load i64, ptr %i.da, align 1
  %.0.copyload.i.i15.i = load i64, ptr %i.di, align 1
  br label %bb.u

_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i: ; preds = %bb.p
  %i.dj = getelementptr inbounds i8, ptr %i.dd, i64 -4
  %.0.copyload.i.i16.i = load i32, ptr %i.da, align 1
  %i.dk = zext i32 %.0.copyload.i.i16.i to i64
  %.0.copyload.i.i17.i = load i32, ptr %i.dj, align 1
  %i.dl = zext i32 %.0.copyload.i.i17.i to i64
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %.not.i.i83 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i83, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = load i8, ptr %i.da, align 1, !tbaa !43
  %i.dn = sext i8 %i.dm to i64
  %i.do = shl nsw i64 %i.dn, 45
  %i.dp = getelementptr i8, ptr %i.dd, i64 -1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !43
  %i.dr = sext i8 %i.dq to i64
  %i.ds = or i64 %i.do, %i.dr
  %i.dt = lshr i64 %i.dc, 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !43
  %i.dw = sext i8 %i.dv to i64
  br label %bb.u

bb.s:                                             ; preds = %_ZN5folly3f146detail13DenseMaskIter4nextEv.exit66
  %i.dx = icmp ugt i64 %i.dc, 48
  br i1 %i.dx, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i: ; preds = %bb.s, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i
  %.069.i.i = phi i64 [ %i.fc, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ %i.dc, %bb.s ]
  %.067.i.i = phi i64 [ %i.eg, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.066.i.i = phi ptr [ %i.fb, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ %i.da, %bb.s ] ; 7 uses
  %.065.i.i = phi i64 [ %i.eq, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.0.i.i = phi i64 [ %i.fa, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i ], [ 4766890152743124950, %bb.s ]
  %.0.copyload.i.i18.i = load i64, ptr %.066.i.i, align 1
  %i.dy = xor i64 %.0.copyload.i.i18.i, 3257665815644502181
  %i.dz = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 8
  %.0.copyload.i.i19.i = load i64, ptr %i.dz, align 1
  %i.ea = xor i64 %.0.copyload.i.i19.i, %.067.i.i
  %i.eb = zext i64 %i.dy to i128
  %i.ec = zext i64 %i.ea to i128
  %i.ed = mul nuw i128 %i.ec, %i.eb               ; 2 uses
  %i.ee = lshr i128 %i.ed, 64
  %i.ef = xor i128 %i.ee, %i.ed
  %i.eg = trunc i128 %i.ef to i64                 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 16
  %.0.copyload.i.i20.i = load i64, ptr %i.eh, align 1
  %i.ei = xor i64 %.0.copyload.i.i20.i, -8378864009470890807
  %i.ej = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 24
  %.0.copyload.i.i21.i = load i64, ptr %i.ej, align 1
  %i.ek = xor i64 %.0.copyload.i.i21.i, %.065.i.i
  %i.el = zext i64 %i.ei to i128
  %i.em = zext i64 %i.ek to i128
  %i.en = mul nuw i128 %i.em, %i.el               ; 2 uses
  %i.eo = lshr i128 %i.en, 64
  %i.ep = xor i128 %i.eo, %i.en
  %i.eq = trunc i128 %i.ep to i64                 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 32
  %.0.copyload.i.i22.i = load i64, ptr %i.er, align 1
  %i.es = xor i64 %.0.copyload.i.i22.i, 5418857496715711651
  %i.et = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 40
  %.0.copyload.i.i23.i = load i64, ptr %i.et, align 1
  %i.eu = xor i64 %.0.copyload.i.i23.i, %.0.i.i
  %i.ev = zext i64 %i.es to i128
  %i.ew = zext i64 %i.eu to i128
  %i.ex = mul nuw i128 %i.ew, %i.ev               ; 2 uses
  %i.ey = lshr i128 %i.ex, 64
  %i.ez = xor i128 %i.ey, %i.ex
  %i.fa = trunc i128 %i.ez to i64                 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 48 ; 3 uses
  %i.fc = add i64 %.069.i.i, -48                  ; 5 uses
  %i.fd = icmp ugt i64 %i.fc, 48
  br i1 %i.fd, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i, label %bb.t, !llvm.loop !0

bb.t:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit2.i
  %i.fe = xor i64 %i.eq, %i.eg
  %i.ff = xor i64 %i.fe, %i.fa                    ; 2 uses
  %i.fg = icmp samesign ugt i64 %i.fc, 16
  br i1 %i.fg, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i: ; preds = %bb.t, %bb.s
  %.1.i72.i = phi ptr [ %i.fb, %bb.t ], [ %i.da, %bb.s ] ; 6 uses
  %.168.i70.i = phi i64 [ %i.ff, %bb.t ], [ 4766890152743124950, %bb.s ]
  %.170.i69.i = phi i64 [ %i.fc, %bb.t ], [ %i.dc, %bb.s ] ; 3 uses
  %.0.copyload.i.i24.i = load i64, ptr %.1.i72.i, align 1
  %i.fh = xor i64 %.0.copyload.i.i24.i, 5418857496715711651
  %i.fi = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 8
  %.0.copyload.i.i25.i = load i64, ptr %i.fi, align 1
  %i.fj = xor i64 %.0.copyload.i.i25.i, %.168.i70.i
  %i.fk = zext i64 %i.fh to i128
  %i.fl = zext i64 %i.fj to i128
  %i.fm = mul nuw i128 %i.fl, %i.fk               ; 2 uses
  %i.fn = lshr i128 %i.fm, 64
  %i.fo = xor i128 %i.fn, %i.fm
  %i.fp = trunc i128 %i.fo to i64                 ; 2 uses
  %i.fq = icmp samesign ugt i64 %.170.i69.i, 32
  br i1 %i.fq, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i, label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 16
  %.0.copyload.i.i26.i = load i64, ptr %i.fr, align 1
  %i.fs = xor i64 %.0.copyload.i.i26.i, 5418857496715711651
  %i.ft = getelementptr inbounds nuw i8, ptr %.1.i72.i, i64 24
  %.0.copyload.i.i27.i = load i64, ptr %i.ft, align 1
  %i.fu = xor i64 %.0.copyload.i.i27.i, %i.fp
  %i.fv = zext i64 %i.fs to i128
  %i.fw = zext i64 %i.fu to i128
  %i.fx = mul nuw i128 %i.fw, %i.fv               ; 2 uses
  %i.fy = lshr i128 %i.fx, 64
  %i.fz = xor i128 %i.fy, %i.fx
  %i.ga = trunc i128 %i.fz to i64
  br label %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i

_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i: ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i, %bb.t
  %.1.i71.i = phi ptr [ %.1.i72.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %.1.i72.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.fb, %bb.t ]
  %.170.i68.i = phi i64 [ %.170.i69.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %.170.i69.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.fc, %bb.t ] ; 3 uses
  %.2.i.i = phi i64 [ %i.ga, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit8.i ], [ %i.fp, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit10.i ], [ %i.ff, %bb.t ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.1.i71.i, i64 %.170.i68.i ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -16
  %.0.copyload.i.i28.i = load i64, ptr %i.gc, align 1
  %i.gd = xor i64 %.0.copyload.i.i28.i, %.170.i68.i
  %i.ge = getelementptr inbounds i8, ptr %i.gb, i64 -8
  %.0.copyload.i.i29.i = load i64, ptr %i.ge, align 1
  br label %bb.u

bb.u:                                             ; preds = %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i, %bb.q, %bb.r, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i
  %.064.i = phi i64 [ %.0.copyload.i.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.dk, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %i.gd, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.ds, %bb.r ], [ 0, %bb.q ]
  %.0.i82 = phi i64 [ %.0.copyload.i.i15.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.dl, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.0.copyload.i.i29.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.dw, %bb.r ], [ 0, %bb.q ]
  %.271.i.i = phi i64 [ %i.dc, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.dc, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.170.i68.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ %i.dc, %bb.r ], [ 0, %bb.q ]
  %.3.i.i = phi i64 [ %i.dg, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit.i ], [ %i.dg, %_ZN5folly8external16rapidhash_detail16rapidhash_read32EPKc.exit.i ], [ %.2.i.i, %_ZN5folly8external16rapidhash_detail16rapidhash_read64EPKc.exit12.i ], [ 4766890152743124950, %bb.r ], [ 4766890152743124950, %bb.q ]
  %i.gf = xor i64 %.064.i, -8378864009470890807
  %i.gg = xor i64 %.3.i.i, %.0.i82
  %i.gh = zext i64 %i.gf to i128
  %i.gi = zext i64 %i.gg to i128
  %i.gj = mul nuw i128 %i.gi, %i.gh               ; 2 uses
  %i.gk = trunc i128 %i.gj to i64
  %i.gl = lshr i128 %i.gj, 64
  %i.gm = trunc nuw i128 %i.gl to i64
  %i.gn = xor i64 %i.gk, -6148914691236517206
  %i.go = xor i64 %.271.i.i, %i.gm
  %i.gp = xor i64 %i.go, -8378864009470890807
  %i.gq = zext i64 %i.gn to i128
  %i.gr = zext i64 %i.gp to i128
  %i.gs = mul nuw i128 %i.gr, %i.gq               ; 2 uses
  %i.gt = lshr i128 %i.gs, 64
  %i.gu = xor i128 %i.gt, %i.gs
  %i.gv = trunc i128 %i.gu to i64                 ; 2 uses
  %i.gw = lshr i64 %i.gv, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gw, i64 1) ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.cs
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !43
  %i.gz = zext i8 %i.gy to i64
  %i.ha = icmp eq i64 %.sroa.speculated.i.i.i, %i.gz
  br i1 %i.ha, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSD_EEvOT_E30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.hb = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.hc = or disjoint i64 %i.hb, 1
  %i.hd = load i64, ptr %i.a, align 8, !tbaa !37
  %i.he = and i64 %i.hd, 255
  %notmask.i.i67 = shl nsw i64 -1, %i.he
  %i.hf = xor i64 %notmask.i.i67, -1              ; 2 uses
  %i.hg = load ptr, ptr %i.j, align 8, !tbaa !28  ; 2 uses
  %i.hh = and i64 %i.hf, %i.gv                    ; 4 uses
  %i.hi = shl nsw i64 %i.hh, 6                    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.0129, i64 %i.hh
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !43  ; 2 uses
  %i.hl = icmp ult i8 %i.hk, 12
  br i1 %i.hl, label %._crit_edge.i71, label %.lr.ph.i68, !prof !67

.lr.ph.i68:                                       ; preds = %bb.w, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70
  %i.hm = phi i64 [ %i.hu, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ], [ %i.hi, %bb.w ]
  %i.hn = phi i64 [ %i.ht, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ], [ %i.hh, %bb.w ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hm
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 15 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !44  ; 2 uses
  %.not.i.i69 = icmp eq i8 %i.hq, -2
  br i1 %.not.i.i69, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i68
  %i.hr = add i8 %i.hq, 1
  store i8 %i.hr, ptr %i.hp, align 1, !tbaa !44
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70: ; preds = %bb.x, %.lr.ph.i68
  %i.hs = add nuw i64 %i.hc, %i.hn
  %i.ht = and i64 %i.hs, %i.hf                    ; 4 uses
  %i.hu = shl nsw i64 %i.ht, 6                    ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.0129, i64 %i.ht
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !43  ; 2 uses
  %i.hx = icmp ult i8 %i.hw, 12
  br i1 %i.hx, label %._crit_edge.i71, label %.lr.ph.i68, !prof !68, !llvm.loop !2

._crit_edge.i71:                                  ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70, %bb.w
  %.lcssa22.i72 = phi i64 [ %i.hh, %bb.w ], [ %i.ht, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ]
  %.0.lcssa.i73 = phi i8 [ 0, %bb.w ], [ 16, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ]
  %.pn.i74 = phi i64 [ %i.hi, %bb.w ], [ %i.hu, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ]
  %.lcssa.i75 = phi i8 [ %i.hk, %bb.w ], [ %i.hw, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i70 ] ; 2 uses
  %.lcssa21.i76 = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.pn.i74 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.0129, i64 %.lcssa22.i72
  %i.hz = add nuw nsw i8 %.lcssa.i75, 1
  store i8 %i.hz, ptr %i.hy, align 1, !tbaa !43
  %i.ia = zext nneg i8 %.lcssa.i75 to i64         ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.lcssa21.i76, i64 %i.ia ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !43
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i71
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #28
  unreachable

bb.z:                                             ; preds = %._crit_edge.i71
  %i.ie = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  store i8 %i.ie, ptr %i.ib, align 1, !tbaa !43
  %i.if = getelementptr inbounds nuw i8, ptr %.lcssa21.i76, i64 14 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 2, !tbaa !42
  %i.ih = add i8 %i.ig, %.0.lcssa.i73
  store i8 %i.ih, ptr %i.if, align 2, !tbaa !42
  %i.ii = shl nuw nsw i64 %i.ia, 2
  %i.ij = getelementptr i8, ptr %.lcssa21.i76, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 16     ; 2 uses
  %i.il = icmp ne ptr %.lcssa21.i76, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.il)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ik) ]
  store i32 %i.cw, ptr %i.ik, align 4, !tbaa !34
  %i.im = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.in = and i64 %i.im, -256
  %i.io = add i64 %i.in, 256
  %i.ip = and i64 %i.im, 255
  %i.iq = or disjoint i64 %i.io, %i.ip
  store i64 %i.iq, ptr %i.a, align 8, !tbaa !37
  %.not133 = icmp eq i32 %.sroa.093.3, 0
  br i1 %.not133, label %.loopexit, label %.lr.ph155, !llvm.loop !150

.loopexit:                                        ; preds = %bb.z, %bb.m, %bb.f
  %i.ir = icmp eq i64 %.0121, 0
  %i.is = add nsw i64 %.0121, -1
  br i1 %i.ir, label %bb.aa, label %bb.f

bb.aa:                                            ; preds = %.loopexit
  br i1 %.not, label %bb.ab, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %.0129, i64 noundef %i.d) #29
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.ac:                                            ; preds = %bb.g
  call void @_ZdlPvm(ptr noundef nonnull %.0129, i64 noundef %i.d) #29
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit81

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE15rehashBuildFromIRKSF_EEvOT_EUlvE_Lb1EED2Ev.exit81: ; preds = %bb.g, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE15beforeBuildImplIRKSB_ZNSB_11beforeBuildEmmSE_EUlRKS8_E_EEbmOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.not39 = icmp eq i64 %1, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !38
  %i.b = load ptr, ptr %2, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.02033 = phi i64 [ 0, %.lr.ph ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.02132 = phi ptr [ %i.a, %.lr.ph ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 8 uses
  %.02231 = phi ptr [ %i.b, %.lr.ph ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.02132) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  store ptr %i.c, ptr %4, align 8, !tbaa !49, !alias.scope !155
  %i.e = load ptr, ptr %.02231, align 8, !tbaa !48, !noalias !155 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02231, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50, !noalias !155 ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i.i, label %bb.d

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !66

.noexc6.i.i:                                      ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.d
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #33
          to label %.noexc24 unwind label %.loopexit ; 2 uses

.noexc24:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.l, ptr %4, align 8, !tbaa !48, !alias.scope !155
  store i64 %i.g, ptr %i.c, align 8, !tbaa !43, !alias.scope !155
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc24, %bb.b
  %i.m = phi ptr [ %i.l, %.noexc24 ], [ %i.c, %bb.b ] ; 3 uses
  switch i64 %i.g, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !43
  store i8 %i.n, ptr %i.m, align 1, !tbaa !43
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  store i64 %i.g, ptr %i.d, align 8, !tbaa !50, !alias.scope !155
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.o, align 1, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %.02132, i64 16 ; 3 uses
  store ptr %i.p, ptr %.02132, align 8, !tbaa !49
  %i.q = load ptr, ptr %4, align 8, !tbaa !48     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.d, align 8, !tbaa !50   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  store ptr %i.q, ptr %.02132, align 8, !tbaa !48
  %i.v = load i64, ptr %i.c, align 8, !tbaa !43
  store i64 %i.v, ptr %i.p, align 8, !tbaa !43
  %.pre = load i64, ptr %i.d, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi i64 [ %i.s, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.02132, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.y = add nuw i64 %.02033, 1                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02231, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.02132, i64 32
  %exitcond.not = icmp eq i64 %i.y, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !153

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.loopexit.split-lp:                               ; preds = %.noexc.i.i, %.noexc6.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
end_hunk_5
