Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Request?download=true
inline.NumInlined: 3280
inline.NumDeleted: 1545
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 28
begin_hunk_0
@_ZTSN5folly5tag_tIJNS_9hazptr_tcISt6atomicEEEEE = linkonce_odr constant [44 x i8] c"N5folly5tag_tIJNS_9hazptr_tcISt6atomicEEEEE\00", comdat, align 1
@_ZTIN5folly5tag_tIJNS_17hazptr_tc_tls_tagEEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly5tag_tIJNS_17hazptr_tc_tls_tagEEEE }, comdat, align 8
@_ZTSN5folly5tag_tIJNS_17hazptr_tc_tls_tagEEEE = linkonce_odr constant [42 x i8] c"N5folly5tag_tIJNS_17hazptr_tc_tls_tagEEEE\00", comdat, align 1
@_ZTIN5folly5tag_tIJvEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly5tag_tIJvEEE }, comdat, align 8
@_ZTSN5folly5tag_tIJvEEE = linkonce_odr constant [20 x i8] c"N5folly5tag_tIJvEEE\00", comdat, align 1
@_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_20SingletonThreadLocalEJNS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEEJvS7_EEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS8_IJSB_EEENS8_IJSD_EEEE3arg = linkonce_odr global { %"struct.folly::detail::UniqueInstance::Value", { %"struct.std::atomic.60", ptr, ptr, ptr } } { %"struct.folly::detail::UniqueInstance::Value" { ptr @_ZTIN5folly6detail14UniqueInstance5key_tINS_20SingletonThreadLocalEJEEE, ptr @_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_20SingletonThreadLocalEJNS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEEJvS7_EEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS8_IJSB_EEENS8_IJSD_EEEE4ptrs, i32 2, i32 2 }, { %"struct.std::atomic.60", ptr, ptr, ptr } { %"struct.std::atomic.60" zeroinitializer, ptr @_ZTIN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEEEEEE, ptr @_ZN5folly6detail5thunk4makeINS0_14UniqueInstance5ValueEJEEEPvDpT0_, ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti5debugINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEEEEEE } }, comdat, align 8
@_ZTIN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEEEEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEEEEEE }, comdat, align 8
@_ZTSN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEEEEEE = linkonce_odr constant [170 x i8] c"N5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEEEEEE\00", comdat, align 1
@_ZN5folly6detail30StaticSingletonManagerWithRtti5debugINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEEEEEE = linkonce_odr global ptr null, comdat, align 8
@_ZGVN5folly18threadlocal_detail10StaticMetaINS_17hazptr_tc_tls_tagEvE6uniqueE = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN5folly18threadlocal_detail10StaticMetaINS_17hazptr_tc_tls_tagEvE6uniqueE), align 8
@_ZTIN5folly6detail14UniqueInstance5key_tINS_18threadlocal_detail10StaticMetaEJEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly6detail14UniqueInstance5key_tINS_18threadlocal_detail10StaticMetaEJEEE }, comdat, align 8
@_ZTSN5folly6detail14UniqueInstance5key_tINS_18threadlocal_detail10StaticMetaEJEEE = linkonce_odr constant [78 x i8] c"N5folly6detail14UniqueInstance5key_tINS_18threadlocal_detail10StaticMetaEJEEE\00", comdat, align 1
@_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_17hazptr_tc_tls_tagEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE4ptrs = linkonce_odr constant [2 x ptr] [ptr @_ZTIN5folly5tag_tIJNS_17hazptr_tc_tls_tagEEEE, ptr @_ZTIN5folly5tag_tIJvEEE], comdat, align 16
@_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_17hazptr_tc_tls_tagEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE3arg = linkonce_odr global { %"struct.folly::detail::UniqueInstance::Value", { %"struct.std::atomic.60", ptr, ptr, ptr } } { %"struct.folly::detail::UniqueInstance::Value" { ptr @_ZTIN5folly6detail14UniqueInstance5key_tINS_18threadlocal_detail10StaticMetaEJEEE, ptr @_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_17hazptr_tc_tls_tagEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE4ptrs, i32 1, i32 1 }, { %"struct.std::atomic.60", ptr, ptr, ptr } { %"struct.std::atomic.60" zeroinitializer, ptr @_ZTIN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_17hazptr_tc_tls_tagEEEEEE, ptr @_ZN5folly6detail5thunk4makeINS0_14UniqueInstance5ValueEJEEEPvDpT0_, ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti5debugINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_17hazptr_tc_tls_tagEEEEEE } }, comdat, align 8
@_ZTIN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_17hazptr_tc_tls_tagEEEEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_17hazptr_tc_tls_tagEEEEEE }, comdat, align 8
@_ZTSN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_17hazptr_tc_tls_tagEEEEEE = linkonce_odr constant [155 x i8] c"N5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_17hazptr_tc_tls_tagEEEEEE\00", comdat, align 1
@_ZN5folly6detail30StaticSingletonManagerWithRtti5debugINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_17hazptr_tc_tls_tagEEEEEE = linkonce_odr global ptr null, comdat, align 8
@_ZGVN5folly20SingletonThreadLocalINS_14RequestContext13StaticContextES1_vS1_E6uniqueE = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN5folly20SingletonThreadLocalINS_14RequestContext13StaticContextES1_vS1_E6uniqueE), align 8
@_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_20SingletonThreadLocalEJNS_14RequestContext13StaticContextES4_EJvS4_EEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE4ptrs = linkonce_odr constant [4 x ptr] [ptr @_ZTIN5folly5tag_tIJNS_14RequestContext13StaticContextEEEE, ptr @_ZTIN5folly5tag_tIJNS_14RequestContextEEEE, ptr @_ZTIN5folly5tag_tIJvEEE, ptr @_ZTIN5folly5tag_tIJNS_14RequestContextEEEE], comdat, align 16
@_ZTIN5folly5tag_tIJNS_14RequestContext13StaticContextEEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly5tag_tIJNS_14RequestContext13StaticContextEEEE }, comdat, align 8
@_ZTSN5folly5tag_tIJNS_14RequestContext13StaticContextEEEE = linkonce_odr constant [54 x i8] c"N5folly5tag_tIJNS_14RequestContext13StaticContextEEEE\00", comdat, align 1
@_ZTIN5folly5tag_tIJNS_14RequestContextEEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly5tag_tIJNS_14RequestContextEEEE }, comdat, align 8
@_ZTSN5folly5tag_tIJNS_14RequestContextEEEE = linkonce_odr constant [39 x i8] c"N5folly5tag_tIJNS_14RequestContextEEEE\00", comdat, align 1
@_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_20SingletonThreadLocalEJNS_14RequestContext13StaticContextES4_EJvS4_EEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE3arg = linkonce_odr global { %"struct.folly::detail::UniqueInstance::Value", { %"struct.std::atomic.60", ptr, ptr, ptr } } { %"struct.folly::detail::UniqueInstance::Value" { ptr @_ZTIN5folly6detail14UniqueInstance5key_tINS_20SingletonThreadLocalEJEEE, ptr @_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_20SingletonThreadLocalEJNS_14RequestContext13StaticContextES4_EJvS4_EEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE4ptrs, i32 2, i32 2 }, { %"struct.std::atomic.60", ptr, ptr, ptr } { %"struct.std::atomic.60" zeroinitializer, ptr @_ZTIN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_14RequestContext13StaticContextES7_EEEEE, ptr @_ZN5folly6detail5thunk4makeINS0_14UniqueInstance5ValueEJEEEPvDpT0_, ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti5debugINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_14RequestContext13StaticContextES7_EEEEE } }, comdat, align 8
@_ZTIN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_14RequestContext13StaticContextES7_EEEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_14RequestContext13StaticContextES7_EEEEE }, comdat, align 8
@_ZTSN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_14RequestContext13StaticContextES7_EEEEE = linkonce_odr constant [160 x i8] c"N5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_14RequestContext13StaticContextES7_EEEEE\00", comdat, align 1
@_ZN5folly6detail30StaticSingletonManagerWithRtti5debugINS0_14UniqueInstance5ValueENS3_5key_tINS_20SingletonThreadLocalEJNS_14RequestContext13StaticContextES7_EEEEE = linkonce_odr global ptr null, comdat, align 8
@_ZGVN5folly18threadlocal_detail10StaticMetaINS_14RequestContextEvE6uniqueE = linkonce_odr local_unnamed_addr global i64 0, comdat($_ZN5folly18threadlocal_detail10StaticMetaINS_14RequestContextEvE6uniqueE), align 8
@_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_14RequestContextEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE4ptrs = linkonce_odr constant [2 x ptr] [ptr @_ZTIN5folly5tag_tIJNS_14RequestContextEEEE, ptr @_ZTIN5folly5tag_tIJvEEE], comdat, align 16
@_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_14RequestContextEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE3arg = linkonce_odr global { %"struct.folly::detail::UniqueInstance::Value", { %"struct.std::atomic.60", ptr, ptr, ptr } } { %"struct.folly::detail::UniqueInstance::Value" { ptr @_ZTIN5folly6detail14UniqueInstance5key_tINS_18threadlocal_detail10StaticMetaEJEEE, ptr @_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_14RequestContextEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE4ptrs, i32 1, i32 1 }, { %"struct.std::atomic.60", ptr, ptr, ptr } { %"struct.std::atomic.60" zeroinitializer, ptr @_ZTIN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_14RequestContextEEEEEE, ptr @_ZN5folly6detail5thunk4makeINS0_14UniqueInstance5ValueEJEEEPvDpT0_, ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti5debugINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_14RequestContextEEEEEE } }, comdat, align 8
@_ZTIN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_14RequestContextEEEEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_14RequestContextEEEEEE }, comdat, align 8
@_ZTSN5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_14RequestContextEEEEEE = linkonce_odr constant [152 x i8] c"N5folly6detail30StaticSingletonManagerWithRtti3SrcINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_14RequestContextEEEEEE\00", comdat, align 1
@_ZN5folly6detail30StaticSingletonManagerWithRtti5debugINS0_14UniqueInstance5ValueENS3_5key_tINS_18threadlocal_detail10StaticMetaEJNS_14RequestContextEEEEEE = linkonce_odr global ptr null, comdat, align 8
@llvm.global_ctors = appending global [4 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E6uniqueE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.99, ptr @_ZN5folly18threadlocal_detail10StaticMetaINS_17hazptr_tc_tls_tagEvE6uniqueE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.100, ptr @_ZN5folly20SingletonThreadLocalINS_14RequestContext13StaticContextES1_vS1_E6uniqueE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.101, ptr @_ZN5folly18threadlocal_detail10StaticMetaINS_14RequestContextEvE6uniqueE }]
@llvm.used = appending global [4 x ptr] [ptr @_ZN5folly18threadlocal_detail10StaticMetaINS_14RequestContextEvE6uniqueE, ptr @_ZN5folly18threadlocal_detail10StaticMetaINS_17hazptr_tc_tls_tagEvE6uniqueE, ptr @_ZN5folly20SingletonThreadLocalINS_14RequestContext13StaticContextES1_vS1_E6uniqueE, ptr @_ZN5folly20SingletonThreadLocalINS_9hazptr_tcISt6atomicEENS_17hazptr_tc_tls_tagEvS4_E6uniqueE], section "llvm.metadata"
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

@_ZN5folly12RequestTokenC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5folly12RequestTokenC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
@_ZN5folly14RequestContext5StateC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5folly14RequestContext5StateC2Ev
@_ZN5folly14RequestContext5StateD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5folly14RequestContext5StateD2Ev
@_ZN5folly14RequestContextC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5folly14RequestContextC2Ev
@_ZN5folly14RequestContextC1El = unnamed_addr alias void (ptr, i64), ptr @_ZN5folly14RequestContextC2El
@_ZN5folly14RequestContextC1ERKS0_lNS0_3TagE = unnamed_addr alias void (ptr, ptr, i64), ptr @_ZN5folly14RequestContextC2ERKS0_lNS0_3TagE
@_ZN5folly14RequestContextC1ERKS0_NS0_3TagE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5folly14RequestContextC2ERKS0_NS0_3TagE
@_ZN5folly14RequestContext13StaticContextD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5folly14RequestContext13StaticContextD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5folly23getCachedRequestContextEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5folly35gAsyncSignalSafeRequestContextCacheE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #1

; Function Attrs: mustprogress uwtable
define void @_ZN5folly12RequestTokenC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"struct.std::pair.21", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.24", align 1     ; 3 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  %7 = alloca %"class.folly::LockedPtr", align 8  ; 11 uses
  %8 = alloca %"class.folly::LockedPtr.6", align 8 ; 7 uses
  %i.h = load atomic i8, ptr @_ZGVZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11 acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN5folly12RequestToken8getCacheB5cxx11Ev.exit, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11) #12
  %.not.i69 = icmp eq i32 %i.j, 0
  br i1 %.not.i69, label %_ZN5folly12RequestToken8getCacheB5cxx11Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i8 0, i64 32, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 8), align 8, !tbaa !53
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11) #12
  br label %_ZN5folly12RequestToken8getCacheB5cxx11Ev.exit

_ZN5folly12RequestToken8getCacheB5cxx11Ev.exit:   ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 24), ptr %7, align 8, !tbaa !59, !alias.scope !448
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i16 0, ptr %i.k, align 8, !tbaa !60, !alias.scope !448
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 10 ; 3 uses
  store i16 0, ptr %i.l, align 2, !tbaa !61, !alias.scope !448
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12, !noalias !448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12, !noalias !448
  %i.m = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 24) monotonic, align 8, !noalias !448 ; 4 uses
  store i32 %i.m, ptr %i.g, align 4, !tbaa !62, !noalias !448
  %i.n = and i32 %i.m, -1408
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5folly12RequestToken8getCacheB5cxx11Ev.exit
  %i.p = or disjoint i32 %i.m, 2048
  %i.q = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 24), i32 %i.m, i32 %i.p seq_cst seq_cst, align 4, !noalias !448 ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %bb.e, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.s = extractvalue { i32, i1 } %i.q, 0
  store i32 %i.s, ptr %i.g, align 4, !noalias !448
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 2, ptr %i.k, align 8, !tbaa !60, !alias.scope !448
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i, %_ZN5folly12RequestToken8getCacheB5cxx11Ev.exit
  %i.t = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE14lockSharedImplINS3_11WaitForeverEEEbRjPNS_16SharedMutexTokenERT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 2 dereferenceable(4) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %6) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12, !noalias !448
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12, !noalias !448
  %i.u = load ptr, ptr %7, align 8, !tbaa !59     ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -24
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.neg.i.i ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !63
  %i.y = icmp ult i64 %i.x, 256
  br i1 %i.y, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc35 unwind label %bb.r   ; 2 uses

.noexc35:                                         ; preds = %bb.h
  %i.aa = lshr i64 %i.z, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1) ; 2 uses
  %i.ab = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ac = or disjoint i64 %i.ab, 1
  %i.ad = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ae = insertelement <16 x i8> poison, i8 %i.ad, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !63
  %i.ah = and i64 %i.ag, 255                      ; 2 uses
  %i.ai = shl nuw i64 1, %i.ah
  %notmask.i = shl nsw i64 -1, %i.ah
  %i.aj = xor i64 %notmask.i, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.noexc38

.noexc38:                                         ; preds = %.noexc35, %bb.i
  %.023.i219 = phi i64 [ %i.ai, %.noexc35 ], [ %i.ci, %bb.i ]
  %.025.i218 = phi i64 [ %i.z, %.noexc35 ], [ %i.cj, %bb.i ] ; 2 uses
  %i.an = and i64 %.025.i218, %i.aj
  %i.ao = shl nsw i64 %i.an, 6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao ; 4 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16     ; 2 uses
  %i.ar = icmp eq <16 x i8> %i.aq, %i.af
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = zext i16 %i.as to i32                   ; 3 uses
  %i.au = and i32 %i.at, 4095
  %.not = icmp eq i32 %i.au, 0
  %i.av = extractelement <16 x i8> %i.aq, i64 15
  br i1 %.not, label %.loopexit211, label %.noexc39.preheader

.noexc39.preheader:                               ; preds = %.noexc38
  %i.aw = icmp ne ptr %i.ap, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.aw)
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !64  ; 3 uses
  %i.ay = load i64, ptr %i.am, align 8, !tbaa !68
  %.fr226 = freeze i64 %i.ay                      ; 3 uses
  %i.az = icmp eq i64 %.fr226, 0
  br i1 %i.az, label %.noexc39.us, label %.noexc39

.noexc39.us:                                      ; preds = %.noexc39.preheader, %.critedge.i.us
  %.sroa.0123.0.us = phi i32 [ %i.bn, %.critedge.i.us ], [ %i.at, %.noexc39.preheader ] ; 4 uses
  %i.ba = icmp ne i32 %.sroa.0123.0.us, 0
  call void @llvm.assume(i1 %i.ba)
  %i.bb = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0123.0.us, i1 true)
  %i.bc = shl nuw nsw i32 %i.bb, 2
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %i.ap, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !62
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !68
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.noexc40.thread, label %.critedge.i.us, !prof !69

.critedge.i.us:                                   ; preds = %.noexc39.us
  %i.bm = add nuw nsw i32 %.sroa.0123.0.us, 65535
  %i.bn = and i32 %i.bm, %.sroa.0123.0.us         ; 2 uses
  %i.bo = and i32 %i.bn, 4094
  %.not208.us = icmp eq i32 %i.bo, 0
  br i1 %.not208.us, label %.loopexit211, label %.noexc39.us, !llvm.loop !0

.noexc39:                                         ; preds = %.noexc39.preheader, %.critedge.i
  %.sroa.0123.0 = phi i32 [ %i.bs, %.critedge.i ], [ %i.at, %.noexc39.preheader ] ; 4 uses
  %i.bp = icmp ne i32 %.sroa.0123.0, 0
  call void @llvm.assume(i1 %i.bp)
  %i.bq = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0123.0, i1 true)
  %i.br = add nuw nsw i32 %.sroa.0123.0, 65535
  %i.bs = and i32 %i.br, %.sroa.0123.0            ; 2 uses
  %i.bt = shl nuw nsw i32 %i.bq, 2
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %i.ap, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !62
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !68
  %i.cc = icmp eq i64 %.fr226, %i.cb
  br i1 %i.cc, label %.noexc40, label %.critedge.i, !prof !69

.noexc40:                                         ; preds = %.noexc39
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !71
  %i.ce = load ptr, ptr %1, align 8, !tbaa !71
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.ce, ptr %i.cd, i64 %.fr226)
  %i.cf = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cf, label %.noexc40.thread, label %.critedge.i, !prof !72

.critedge.i:                                      ; preds = %.noexc39, %.noexc40
  %i.cg = and i32 %i.bs, 4094
  %.not208 = icmp eq i32 %i.cg, 0
  br i1 %.not208, label %.loopexit211, label %.noexc39, !llvm.loop !0

.loopexit211:                                     ; preds = %.critedge.i, %.critedge.i.us, %.noexc38
  %i.ch = icmp eq i8 %i.av, 0
  br i1 %i.ch, label %.critedge.loopexit, label %bb.i, !prof !73

bb.i:                                             ; preds = %.loopexit211
  %i.ci = add i64 %.023.i219, -1                  ; 2 uses
  %i.cj = add i64 %i.ac, %.025.i218
  %.not.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i, label %.critedge.loopexit, label %.noexc38, !llvm.loop !1

.noexc40.thread:                                  ; preds = %.noexc40, %.noexc39.us
  %.pre-phi246 = phi i64 [ %i.bh, %.noexc39.us ], [ %i.by, %.noexc40 ]
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %.pre-phi246
  %i.cl = load ptr, ptr %7, align 8, !tbaa !59    ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !75
  store i32 %i.cn, ptr %0, align 4, !tbaa !77
  %i.co = load i16, ptr %i.k, align 8, !tbaa !60
  switch i16 %i.co, label %bb.o [
    i16 0, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit
    i16 1, label %bb.j
    i16 3, label %bb.n
  ]

bb.j:                                             ; preds = %.noexc40.thread
  %i.cp = load atomic i32, ptr %i.cl acquire, align 4
  %i.cq = and i32 %i.cp, 768
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.cl)
          to label %.noexc96 unwind label %bb.q

.noexc96:                                         ; preds = %bb.k
  br i1 %i.cs, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.noexc96, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.ct = atomicrmw sub ptr %i.cl, i32 2048 seq_cst, align 4 ; 2 uses
  %i.cu = add i32 %i.ct, -2048                    ; 2 uses
  store i32 %i.cu, ptr %i.d, align 4, !tbaa !62
  %i.cv = icmp ugt i32 %i.cu, 2047
  %i.cw = and i32 %i.ct, 16
  %.not.i.i.i.i = icmp eq i32 %i.cw, 0
  %or.cond.i.i.i = or i1 %i.cv, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, label %bb.m, !prof !78

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.cl, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i unwind label %bb.q

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.n:                                             ; preds = %.noexc40.thread
  %i.cx = load i16, ptr %i.l, align 2, !tbaa !61
  %i.cy = zext i16 %i.cx to i64
  %i.cz = ptrtoint ptr %i.cl to i64
  %.idx.i = shl nuw nsw i64 %i.cy, 5
  %i.da = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i
  %i.db = cmpxchg ptr %i.da, i64 %i.cz, i64 0 seq_cst seq_cst, align 8
  %i.dc = extractvalue { i64, i1 } %i.db, 1
  br i1 %i.dc, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.noexc40.thread, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.dd = atomicrmw sub ptr %i.cl, i32 2048 seq_cst, align 4 ; 2 uses
  %i.de = add i32 %i.dd, -2048                    ; 2 uses
  store i32 %i.de, ptr %i.c, align 4, !tbaa !62
  %i.df = icmp ugt i32 %i.de, 2047
  %i.dg = and i32 %i.dd, 16
  %.not.i.i.i95 = icmp eq i32 %i.dg, 0
  %or.cond.i.i = or i1 %i.df, %.not.i.i.i95
  br i1 %or.cond.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, label %bb.p, !prof !78

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.cl, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i unwind label %bb.q

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.k
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #37
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %.noexc40.thread, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i, %bb.n, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i, %.noexc96
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ai

bb.r:                                             ; preds = %bb.h
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.aj

.critedge.loopexit:                               ; preds = %bb.i, %.loopexit211
  %.pre = load ptr, ptr %7, align 8, !tbaa !59
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.g
  %i.dk = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.u, %bb.g ] ; 7 uses
  %i.dl = load i16, ptr %i.k, align 8, !tbaa !60
  switch i16 %i.dl, label %bb.x [
    i16 0, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit75
    i16 1, label %bb.s
    i16 3, label %bb.w
  ]

bb.s:                                             ; preds = %.critedge
  %i.dm = load atomic i32, ptr %i.dk acquire, align 4
  %i.dn = and i32 %i.dm, 768
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = invoke noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE32tryUnlockTokenlessSharedDeferredEv(ptr noundef nonnull align 4 dereferenceable(4) %i.dk)
          to label %.noexc106 unwind label %bb.z

.noexc106:                                        ; preds = %bb.t
  br i1 %i.dp, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit75, label %bb.u

bb.u:                                             ; preds = %.noexc106, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.dq = atomicrmw sub ptr %i.dk, i32 2048 seq_cst, align 4 ; 2 uses
  %i.dr = add i32 %i.dq, -2048                    ; 2 uses
  store i32 %i.dr, ptr %i.b, align 4, !tbaa !62
  %i.ds = icmp ugt i32 %i.dr, 2047
  %i.dt = and i32 %i.dq, 16
  %.not.i.i.i.i103 = icmp eq i32 %i.dt, 0
  %or.cond.i.i.i104 = or i1 %i.ds, %.not.i.i.i.i103
  br i1 %or.cond.i.i.i104, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i105, label %bb.v, !prof !78

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.dk, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i105 unwind label %bb.z

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i105: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit75

bb.w:                                             ; preds = %.critedge
  %i.du = load i16, ptr %i.l, align 2, !tbaa !61
  %i.dv = zext i16 %i.du to i64
  %i.dw = ptrtoint ptr %i.dk to i64
  %.idx.i99 = shl nuw nsw i64 %i.dv, 5
  %i.dx = getelementptr inbounds nuw i8, ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15deferredReadersE, i64 %.idx.i99
  %i.dy = cmpxchg ptr %i.dx, i64 %i.dw, i64 0 seq_cst seq_cst, align 8
  %i.dz = extractvalue { i64, i1 } %i.dy, 1
  br i1 %i.dz, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit75, label %bb.x

bb.x:                                             ; preds = %.critedge, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ea = atomicrmw sub ptr %i.dk, i32 2048 seq_cst, align 4 ; 2 uses
  %i.eb = add i32 %i.ea, -2048                    ; 2 uses
  store i32 %i.eb, ptr %i.a, align 4, !tbaa !62
  %i.ec = icmp ugt i32 %i.eb, 2047
  %i.ed = and i32 %i.ea, 16
  %.not.i.i.i100 = icmp eq i32 %i.ed, 0
  %or.cond.i.i101 = or i1 %i.ec, %.not.i.i.i100
  br i1 %or.cond.i.i101, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i102, label %bb.y, !prof !78

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.dk, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 16)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i102 unwind label %bb.z

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i102: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit75

bb.z:                                             ; preds = %bb.y, %bb.v, %bb.t
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #37
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit75: ; preds = %.critedge, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i102, %bb.w, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE18unlockSharedInlineEv.exit.i.i105, %.noexc106
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 24), ptr %8, align 8, !tbaa !81, !alias.scope !449
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i8 0, ptr %i.eg, align 8, !tbaa !82, !alias.scope !449
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12, !noalias !449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12, !noalias !449
  %i.eh = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 24) acquire, align 8, !noalias !449 ; 4 uses
  store i32 %i.eh, ptr %i.f, align 4, !tbaa !62, !noalias !449
  %i.ei = and i32 %i.eh, -1312
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.aa, label %.critedge.i.i.i.i.i.i, !prof !73

bb.aa:                                            ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit75
  %i.ek = or disjoint i32 %i.eh, 128
  %i.el = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 24), i32 %i.eh, i32 %i.ek seq_cst seq_cst, align 4, !noalias !449 ; 2 uses
  %i.em = extractvalue { i32, i1 } %i.el, 1
  br i1 %i.em, label %bb.ab, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i76, !prof !69

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i76: ; preds = %bb.aa
  %i.en = extractvalue { i32, i1 } %i.el, 0
  store i32 %i.en, ptr %i.f, align 4, !noalias !449
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i.i.i.i76, %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit75
  %i.eo = call noundef zeroext i1 @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE17lockExclusiveImplINS3_11WaitForeverEEEbRjjRT_(ptr noundef nonnull align 4 dereferenceable(4) getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 24), ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef 224, ptr noundef nonnull align 1 dereferenceable(1) %5), !noalias !449 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge.i.i.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12, !noalias !449
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12, !noalias !449
  store i8 1, ptr %i.eg, align 8, !tbaa !82, !alias.scope !449
  %i.ep = load ptr, ptr %8, align 8, !tbaa !81    ; 4 uses
  %.not.i.i77 = icmp eq ptr %i.ep, null           ; 2 uses
  %.neg.i.i78 = select i1 %.not.i.i77, i64 0, i64 -24
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %.neg.i.i78 ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !63
  %i.et = icmp ult i64 %i.es, 256
  br i1 %i.et, label %.noexc17.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eu = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc58 unwind label %bb.ae  ; 2 uses

.noexc58:                                         ; preds = %bb.ac
  %i.ev = lshr i64 %i.eu, 56
  %.sroa.speculated.i.i.i79 = call i64 @llvm.umax.i64(i64 %i.ev, i64 1) ; 2 uses
  %i.ew = shl nuw nsw i64 %.sroa.speculated.i.i.i79, 1
  %i.ex = or disjoint i64 %i.ew, 1
  %i.ey = trunc nuw i64 %.sroa.speculated.i.i.i79 to i8
  %i.ez = insertelement <16 x i8> poison, i8 %i.ey, i64 0
  %i.fa = shufflevector <16 x i8> %i.ez, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.fb = load i64, ptr %i.er, align 8, !tbaa !63
  %i.fc = and i64 %i.fb, 255                      ; 2 uses
  %i.fd = shl nuw i64 1, %i.fc
  %notmask.i84 = shl nsw i64 -1, %i.fc
  %i.fe = xor i64 %notmask.i84, -1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !53
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.noexc61

.noexc61:                                         ; preds = %.noexc58, %bb.ad
  %.023.i43225 = phi i64 [ %i.fd, %.noexc58 ], [ %i.hd, %bb.ad ]
  %.025.i42224 = phi i64 [ %i.eu, %.noexc58 ], [ %i.he, %bb.ad ] ; 2 uses
  %i.fi = and i64 %.025.i42224, %i.fe
  %i.fj = shl nsw i64 %i.fi, 6
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fj ; 4 uses
  %i.fl = load <16 x i8>, ptr %i.fk, align 16     ; 2 uses
  %i.fm = icmp eq <16 x i8> %i.fl, %i.fa
  %i.fn = bitcast <16 x i1> %i.fm to i16
  %i.fo = zext i16 %i.fn to i32                   ; 3 uses
  %i.fp = and i32 %i.fo, 4095
  %.not209 = icmp eq i32 %i.fp, 0
  %i.fq = extractelement <16 x i8> %i.fl, i64 15
  br i1 %.not209, label %.loopexit, label %.noexc62.preheader

.noexc62.preheader:                               ; preds = %.noexc61
  %i.fr = icmp ne ptr %i.fk, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.fr)
  %i.fs = load ptr, ptr %i.eq, align 8, !tbaa !64 ; 3 uses
  %i.ft = load i64, ptr %i.fh, align 8, !tbaa !68
  %.fr = freeze i64 %i.ft                         ; 3 uses
  %i.fu = icmp eq i64 %.fr, 0
  br i1 %i.fu, label %.noexc62.us, label %.noexc62

.noexc62.us:                                      ; preds = %.noexc62.preheader, %.critedge.i56.us
  %.sroa.0128.0.us = phi i32 [ %i.gi, %.critedge.i56.us ], [ %i.fo, %.noexc62.preheader ] ; 4 uses
  %i.fv = icmp ne i32 %.sroa.0128.0.us, 0
  call void @llvm.assume(i1 %i.fv)
  %i.fw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0128.0.us, i1 true)
  %i.fx = shl nuw nsw i32 %i.fw, 2
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr i8, ptr %i.fk, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !62
  %i.gc = zext i32 %i.gb to i64                   ; 2 uses
  %i.gd = getelementptr inbounds nuw [40 x i8], ptr %i.fs, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !68
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %.loopexit249, label %.critedge.i56.us, !prof !69

.critedge.i56.us:                                 ; preds = %.noexc62.us
  %i.gh = add nuw nsw i32 %.sroa.0128.0.us, 65535
  %i.gi = and i32 %i.gh, %.sroa.0128.0.us         ; 2 uses
  %i.gj = and i32 %i.gi, 4094
  %.not210.us = icmp eq i32 %i.gj, 0
  br i1 %.not210.us, label %.loopexit, label %.noexc62.us, !llvm.loop !0

.noexc62:                                         ; preds = %.noexc62.preheader, %.critedge.i56
  %.sroa.0128.0 = phi i32 [ %i.gn, %.critedge.i56 ], [ %i.fo, %.noexc62.preheader ] ; 4 uses
  %i.gk = icmp ne i32 %.sroa.0128.0, 0
  call void @llvm.assume(i1 %i.gk)
  %i.gl = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0128.0, i1 true)
  %i.gm = add nuw nsw i32 %.sroa.0128.0, 65535
  %i.gn = and i32 %i.gm, %.sroa.0128.0            ; 2 uses
  %i.go = shl nuw nsw i32 %i.gl, 2
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr i8, ptr %i.fk, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.gq, i64 16
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !62
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds nuw [40 x i8], ptr %i.fs, i64 %i.gt ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !68
  %i.gx = icmp eq i64 %.fr, %i.gw
  br i1 %i.gx, label %.noexc63, label %.critedge.i56, !prof !69

.noexc63:                                         ; preds = %.noexc62
  %i.gy = load ptr, ptr %i.gu, align 8, !tbaa !71
  %i.gz = load ptr, ptr %1, align 8, !tbaa !71
  %bcmp.i.i.i85 = call i32 @bcmp(ptr %i.gz, ptr %i.gy, i64 %.fr)
  %i.ha = icmp eq i32 %bcmp.i.i.i85, 0
  br i1 %i.ha, label %.loopexit249, label %.critedge.i56, !prof !72

.critedge.i56:                                    ; preds = %.noexc62, %.noexc63
  %i.hb = and i32 %i.gn, 4094
  %.not210 = icmp eq i32 %i.hb, 0
  br i1 %.not210, label %.loopexit, label %.noexc62, !llvm.loop !0

.loopexit:                                        ; preds = %.critedge.i56, %.critedge.i56.us, %.noexc61
  %i.hc = icmp eq i8 %i.fq, 0
  br i1 %i.hc, label %.noexc17.thread, label %bb.ad, !prof !73

bb.ad:                                            ; preds = %.loopexit
  %i.hd = add i64 %.023.i43225, -1                ; 2 uses
  %i.he = add i64 %i.ex, %.025.i42224
  %.not.i44 = icmp eq i64 %i.hd, 0
  br i1 %.not.i44, label %.noexc17.thread, label %.noexc61, !llvm.loop !1

bb.ae:                                            ; preds = %.noexc93, %.noexc17.thread, %bb.ac
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE1ELNSN_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.aj

.noexc17.thread:                                  ; preds = %.loopexit, %bb.ad, %bb.ab
  %i.hg = load i32, ptr @_ZZN5folly12RequestTokenC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9nextToken, align 4, !tbaa !62 ; 3 uses
  %i.hh = add i32 %i.hg, 1
  store i32 %i.hh, ptr @_ZZN5folly12RequestTokenC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9nextToken, align 4, !tbaa !62
  store i32 %i.hg, ptr %0, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12, !noalias !450
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12, !noalias !450
  store ptr %1, ptr %3, align 8, !tbaa !84, !alias.scope !451, !noalias !450
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12, !noalias !450
  %i.hi = invoke noundef i64 @_ZNK5folly6detail20TransparentRangeHashIcEclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc93 unwind label %bb.ae  ; 2 uses

.noexc93:                                         ; preds = %.noexc17.thread
  %i.hj = lshr i64 %i.hi, 56
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hj, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESN_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.21") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i64 %i.hi, i64 %.sroa.speculated.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.thread unwind label %bb.ae

.thread:                                          ; preds = %.noexc93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12, !noalias !450
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12, !noalias !450
  %i.hk = load ptr, ptr %2, align 8, !tbaa !452, !noalias !450, !nonnull !87, !noundef !87
  %i.hl = load ptr, ptr %i.eq, align 8, !tbaa !64, !noalias !450, !nonnull !87, !noundef !87
  %i.hm = load i32, ptr %i.hk, align 4, !tbaa !62, !noalias !450
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [40 x i8], ptr %i.hl, i64 %i.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12, !noalias !450
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  store i32 %i.hg, ptr %i.hp, align 4, !tbaa !62
  br label %bb.af

.loopexit249:                                     ; preds = %.noexc63, %.noexc62.us
  %.pre-phi = phi i64 [ %i.gc, %.noexc62.us ], [ %i.gt, %.noexc63 ]
  %i.hq = getelementptr inbounds nuw [40 x i8], ptr %i.fs, i64 %.pre-phi
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !75
  store i32 %i.hs, ptr %0, align 4, !tbaa !77
  br i1 %.not.i.i77, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE1ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %.thread, %.loopexit249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.ht = atomicrmw and ptr %i.ep, i32 -401 seq_cst, align 4 ; 2 uses
  %i.hu = and i32 %i.ht, -401
  store i32 %i.hu, ptr %i.e, align 4, !tbaa !62
  %i.hv = and i32 %i.ht, 15
  %.not.i.i.i.i.i = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i, label %bb.ag, !prof !73

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.ep, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i unwind label %bb.ah

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE1ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.ah:                                            ; preds = %bb.ag
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #37
  unreachable

_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE1ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %.loopexit249, %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit, %_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE1ELNSN_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ret void

bb.aj:                                            ; preds = %bb.ae, %bb.r
  %.pn13.pn = phi { ptr, i32 } [ %i.hf, %bb.ae ], [ %i.dj, %bb.r ]
  resume { ptr, i32 } %.pn13.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(28) ptr @_ZN5folly12RequestToken8getCacheB5cxx11Ev() local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !45

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11) #12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i8 0, i64 32, i1 false)
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11, i64 8), align 8, !tbaa !53
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN5folly12RequestToken8getCacheB5cxx11EvE5cacheB5cxx11
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE2ELNSN_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !60
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !59
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE13unlock_sharedERNS_16SharedMutexTokenE(ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(4) %i.a)
          to label %_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #37
  unreachable

_ZNSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9LockedPtrINS_12SynchronizedINS_10F14FastMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjNS_23HeterogeneousAccessHashIS8_vEENS_26HeterogeneousAccessEqualToIS8_vEESaISt4pairIKS8_jEEEENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSN_22SynchronizedMutexLevelE1ELNSN_23SynchronizedMutexMethodE0EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !82, !range !88, !noundef !87
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !81     ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.f = atomicrmw and ptr %i.e, i32 -401 seq_cst, align 4 ; 2 uses
  %i.g = and i32 %i.f, -401
  store i32 %i.g, ptr %i.a, align 4, !tbaa !62
  %i.h = and i32 %i.f, 15
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i, label %bb.d, !prof !73

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 15)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i unwind label %bb.e

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE6unlockEv.exit.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
end_hunk_0
begin_hunk_1_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j:bb.a
  %i.t = icmp eq i64 %i.s, %i.d
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i32 %.235.1, 1                       ; 2 uses
  %i.v = icmp eq i32 %i.u, %i.c
  br i1 %i.v, label %.critedge, label %bb.g, !llvm.loop !458

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
  br i1 %i.ae, label %.critedge, label %bb.j, !llvm.loop !458

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
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !459

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
  store i32 %i.bn, ptr %1, align 4, !tbaa !62
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h, %bb.k, %bb.l, %._crit_edge, %bb.s
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS9_JRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESN_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.21") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !63   ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread70_crit_edge, label %bb.b

..thread70_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !53
  %.pre109 = shl nuw i64 1, %i.b
  br label %.thread70

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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 6 uses
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %.fr94 = freeze i64 %i.p                        ; 3 uses
  %i.q = icmp eq i64 %.fr94, 0
  br i1 %i.q, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.b, %bb.d
  %.023.i88.us = phi i64 [ %i.ar, %bb.d ], [ %i.j, %bb.b ]
  %.025.i87.us = phi i64 [ %i.as, %bb.d ], [ %2, %bb.b ] ; 2 uses
  %i.r = and i64 %.025.i87.us, %i.k
  %i.s = shl nsw i64 %i.r, 6
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s ; 3 uses
  %i.u = load <16 x i8>, ptr %i.t, align 16       ; 2 uses
  %i.v = icmp eq <16 x i8> %i.u, %i.h
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = zext i16 %i.w to i32                     ; 2 uses
  %i.y = and i32 %i.x, 4095
  %.not72.us = icmp eq i32 %i.y, 0
  %i.z = extractelement <16 x i8> %i.u, i64 15
  br i1 %.not72.us, label %.loopexit.split.us.us, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us
  %i.aa = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aa)
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i.us.us, %.preheader.us
  %.sroa.044.0.us.us = phi i32 [ %i.ao, %.critedge.i.us.us ], [ %i.x, %.preheader.us ] ; 4 uses
  %i.ab = icmp ne i32 %.sroa.044.0.us.us, 0
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0.us.us, i1 true)
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !62
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !68
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, label %.critedge.i.us.us, !prof !69

.critedge.i.us.us:                                ; preds = %bb.c
  %i.an = add nuw nsw i32 %.sroa.044.0.us.us, 65535
  %i.ao = and i32 %i.an, %.sroa.044.0.us.us       ; 2 uses
  %i.ap = and i32 %i.ao, 4094
  %.not73.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not73.us.us, label %.loopexit.split.us.us, label %bb.c, !llvm.loop !0

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.split.us
  %i.aq = icmp eq i8 %i.z, 0
  br i1 %i.aq, label %.thread70, label %bb.d, !prof !73

bb.d:                                             ; preds = %.loopexit.split.us.us
  %i.ar = add i64 %.023.i88.us, -1                ; 2 uses
  %i.as = add i64 %i.e, %.025.i87.us
  %.not.i.us = icmp eq i64 %i.ar, 0
  br i1 %.not.i.us, label %.thread70, label %.split.us, !llvm.loop !1

.split:                                           ; preds = %bb.b, %bb.f
  %.023.i88 = phi i64 [ %i.bw, %bb.f ], [ %i.j, %bb.b ]
  %.025.i87 = phi i64 [ %i.bx, %bb.f ], [ %2, %bb.b ] ; 2 uses
  %i.at = and i64 %.025.i87, %i.k
  %i.au = shl nsw i64 %i.at, 6
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.au ; 3 uses
  %i.aw = load <16 x i8>, ptr %i.av, align 16     ; 2 uses
  %i.ax = icmp eq <16 x i8> %i.aw, %i.h
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = zext i16 %i.ay to i32                   ; 2 uses
  %i.ba = and i32 %i.az, 4095
  %.not72 = icmp eq i32 %i.ba, 0
  %i.bb = extractelement <16 x i8> %i.aw, i64 15
  br i1 %.not72, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.bc = icmp ne ptr %i.av, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bc)
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.044.0 = phi i32 [ %i.bg, %.critedge.i ], [ %i.az, %.preheader ] ; 4 uses
  %i.bd = icmp ne i32 %.sroa.044.0, 0
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.044.0, i1 true)
  %i.bf = add nuw nsw i32 %.sroa.044.0, 65535
  %i.bg = and i32 %i.bf, %.sroa.044.0             ; 2 uses
  %i.bh = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = getelementptr i8, ptr %i.av, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !62
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !68
  %i.bq = icmp eq i64 %.fr94, %i.bp
  br i1 %i.bq, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit, label %.critedge.i, !prof !69

_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit: ; preds = %bb.e
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !71
  %i.bs = load ptr, ptr %4, align 8, !tbaa !71
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.bs, ptr %i.br, i64 %.fr94)
  %i.bt = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bt, label %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, label %.critedge.i, !prof !72

.critedge.i:                                      ; preds = %bb.e, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit
  %i.bu = and i32 %i.bg, 4094
  %.not73 = icmp eq i32 %i.bu, 0
  br i1 %.not73, label %.loopexit.split, label %bb.e, !llvm.loop !0

.loopexit.split:                                  ; preds = %.critedge.i, %.split
  %i.bv = icmp eq i8 %i.bb, 0
  br i1 %i.bv, label %.thread70, label %bb.f, !prof !73

bb.f:                                             ; preds = %.loopexit.split
  %i.bw = add i64 %.023.i88, -1                   ; 2 uses
  %i.bx = add i64 %i.e, %.025.i87
  %.not.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i, label %.thread70, label %.split, !llvm.loop !1

_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread: ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit, %bb.c
  %.us-phi = phi ptr [ %i.af, %bb.c ], [ %i.bj, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit ]
  %.us-phi82 = phi i64 [ %i.ad, %bb.c ], [ %i.bh, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit ]
  %i.by = getelementptr i8, ptr %.us-phi, i64 16
  br label %bb.n

.thread70:                                        ; preds = %.loopexit.split, %bb.f, %bb.d, %.loopexit.split.us.us, %..thread70_crit_edge
  %.pre-phi110 = phi i64 [ %.pre109, %..thread70_crit_edge ], [ %i.j, %bb.d ], [ %i.j, %.loopexit.split.us.us ], [ %i.j, %bb.f ], [ %i.j, %.loopexit.split ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread70_crit_edge ], [ %i.i, %bb.d ], [ %i.i, %.loopexit.split.us.us ], [ %i.i, %bb.f ], [ %i.i, %.loopexit.split ]
  %i.bz = phi ptr [ %.pre, %..thread70_crit_edge ], [ %i.m, %bb.d ], [ %i.m, %.loopexit.split.us.us ], [ %i.m, %bb.f ], [ %i.m, %.loopexit.split ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %.0.copyload.i.i = load i16, ptr %i.ca, align 1
  %i.cb = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.cc = add i64 %.pre-phi110, -1
  %i.cd = lshr i64 %i.cc, 12
  %i.ce = add nuw nsw i64 %i.cd, 1
  %i.cf = mul i64 %i.ce, %i.cb                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.cf
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread70
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi110, i64 noundef %i.cb, i64 noundef %i.cf)
  %.pre106 = load i64, ptr %i.a, align 8, !tbaa !63
  %.pre107 = load ptr, ptr %i.cg, align 8, !tbaa !53
  %.pre111 = and i64 %.pre106, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread70, %bb.g
  %.pre-phi112 = phi i64 [ %.pre-phi, %.thread70 ], [ %.pre111, %bb.g ]
  %i.ch = phi ptr [ %i.bz, %.thread70 ], [ %.pre107, %bb.g ] ; 4 uses
  %notmask.i33 = shl nsw i64 -1, %.pre-phi112
  %i.ci = xor i64 %notmask.i33, -1                ; 2 uses
  %i.cj = and i64 %2, %i.ci
  %i.ck = shl nsw i64 %i.cj, 6                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck ; 2 uses
  %i.cm = load <16 x i8>, ptr %i.cl, align 16, !tbaa !91
  %i.cn = icmp eq <16 x i8> %i.cm, zeroinitializer
  %i.co = bitcast <16 x i1> %i.cn to i16
  %i.cp = and i16 %i.co, 4095                     ; 2 uses
  %.not74 = icmp eq i16 %i.cp, 0
  br i1 %.not74, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.cq = shl i64 %3, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.cs = phi i64 [ %i.ck, %bb.h ], [ %i.cz, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.h ], [ %i.cx, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 15 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !94  ; 2 uses
  %.not.i34 = icmp eq i8 %i.cv, -2
  br i1 %.not.i34, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = add i8 %i.cv, 1
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !94
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.cx = add i64 %i.cr, %.030                    ; 2 uses
  %i.cy = and i64 %i.cx, %i.ci
  %i.cz = shl nsw i64 %i.cy, 6                    ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cz
  %i.db = load <16 x i8>, ptr %i.da, align 16     ; 2 uses
  %i.dc = icmp eq <16 x i8> %i.db, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16
  %i.de = and i16 %i.dd, 4095                     ; 2 uses
  %.not75 = icmp eq i16 %i.de, 0
  br i1 %.not75, label %bb.i, label %bb.k, !llvm.loop !460

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cz ; 2 uses
  %i.dg = extractelement <16 x i8> %i.db, i64 14
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 14
  %i.di = add i8 %i.dg, 16
  store i8 %i.di, ptr %i.dh, align 2, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.038.0.in = phi i16 [ %i.cp, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.de, %bb.k ]
  %.1 = phi ptr [ %i.cl, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.df, %bb.k ] ; 3 uses
  %i.dj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.038.0.in, i1 true)
  %i.dk = zext nneg i16 %i.dj to i64              ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.1, i64 %i.dk ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !91
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #39
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.l
  %i.do = trunc i64 %3 to i8
  store i8 %i.do, ptr %i.dl, align 1, !tbaa !91
  %i.dp = shl nuw nsw i64 %i.dk, 2
  %i.dq = getelementptr i8, ptr %.1, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 16     ; 3 uses
  %i.ds = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ds)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.dr, i64 %i.dk, i64 %2, i64 %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink133 = phi ptr [ %i.by, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.dr, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.us-phi82.sink = phi i64 [ %.us-phi82, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ %i.dk, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEE14keyMatchesItemIS8_EEbRKT_RKj.exit.thread ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink133, ptr %0, align 8, !tbaa !96
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.us-phi82.sink, ptr %.sroa.543.0..sroa_idx, align 8, !tbaa !97
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.dt, align 8, !tbaa !462
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjvvvSt17integral_constantIbLb1EEEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJRKS9_EESI_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !63
  %i.c = lshr i64 %i.b, 8                         ; 2 uses
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %1, align 4, !tbaa !62
  %i.e = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !87, !noundef !87
  %i.f = and i64 %i.c, 4294967295
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.f ; 5 uses
  %i.h = load i64, ptr %6, align 8, !tbaa !84
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !98
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !68   ; 8 uses
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.b, label %._crit_edge.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %.noexc.i.i.i.i.i.i, label %bb.c

.noexc.i.i.i.i.i.i:                               ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #40
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.p = add nuw i64 %i.m, 1                      ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc6.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, !prof !89

.noexc6.i.i.i.i.i.i:                              ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #40
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %.noexc6.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i: ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZN5folly13hazptr_domainISt6atomicE23extract_retired_objectsEPPNS_10hazptr_objIS1_EES6_:.preheader
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !146 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = add nsw i32 %i.br, -1
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !146
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store atomic i64 0, ptr %i.at monotonic, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.012.i = phi i64 [ 0, %bb.p ], [ -1, %bb.q ]
  br label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i: ; preds = %bb.r, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i
  %i.bu = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.bv = add i64 %.012.i, %i.bu
  %i.bw = cmpxchg weak ptr %i.ao, i64 %i.bu, i64 %i.bv acq_rel acquire, align 8
  %i.bx = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.bx, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E11push_unlockERNS0_11linked_listIS4_EE.exit, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E11push_unlockERNS0_11linked_listIS4_EE.exit: ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E7pop_allEb.exit, %bb.c
  %.3 = phi i1 [ %.227, %bb.c ], [ false, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E7pop_allEb.exit ], [ %.227, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.a, label %bb.b, !llvm.loop !506
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly13hazptr_domainISt6atomicE16load_hazptr_valsEv(ptr dead_on_unwind noalias writable sret(%"class.folly::F14FastSet") align 8 %0, ptr noundef nonnull align 64 dereferenceable(449) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.87", align 8     ; 3 uses
  %i.a = alloca [8 x ptr], align 16               ; 12 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %0, align 8, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load atomic i32, ptr %i.d monotonic, align 8
  %i.f = load atomic ptr, ptr %1 acquire, align 64 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %._crit_edge76, label %_ZN5folly17atomic_grow_arrayINS_10hazptr_recISt6atomicEENS_13hazptr_domainIS2_E20HazptrRecArrayPolicyEE11as_ptr_spanEm.exit

_ZN5folly17atomic_grow_arrayINS_10hazptr_recISt6atomicEENS_13hazptr_domainIS2_E20HazptrRecArrayPolicyEE11as_ptr_spanEm.exit: ; preds = %bb.b
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %i.i = zext nneg i32 %.sroa.speculated to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !97
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.l) ; 4 uses
  %.not2971 = icmp samesign ult i64 %i.m, 8
  br i1 %.not2971, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly17atomic_grow_arrayINS_10hazptr_recISt6atomicEENS_13hazptr_domainIS2_E20HazptrRecArrayPolicyEE11as_ptr_spanEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %.preheader.preheader

._crit_edge:                                      ; preds = %bb.c, %_ZN5folly17atomic_grow_arrayINS_10hazptr_recISt6atomicEENS_13hazptr_domainIS2_E20HazptrRecArrayPolicyEE11as_ptr_spanEm.exit
  %i.v = and i64 %i.m, 2147483640
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.v ; 2 uses
  %i.x = shl nuw nsw i64 %i.m, 3
  %.idx = and i64 %i.x, 56                        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %i.z = icmp samesign eq i64 %.idx, 0
  br i1 %i.z, label %._crit_edge76, label %.lr.ph75

.preheader.preheader:                             ; preds = %.lr.ph, %bb.c
  %i.aa = phi i64 [ 8, %.lr.ph ], [ %i.az, %bb.c ] ; 2 uses
  %.02672 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.02672 ; 8 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !181
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8
  store ptr %i.ad, ptr %i.a, align 16, !tbaa !182
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !181
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  store ptr %i.ag, ptr %i.o, align 8, !tbaa !182
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !181
  %i.aj = load atomic ptr, ptr %i.ai monotonic, align 8
  store ptr %i.aj, ptr %i.p, align 16, !tbaa !182
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !181
  %i.am = load atomic ptr, ptr %i.al monotonic, align 8
  store ptr %i.am, ptr %i.q, align 8, !tbaa !182
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !181
  %i.ap = load atomic ptr, ptr %i.ao monotonic, align 8
  store ptr %i.ap, ptr %i.r, align 16, !tbaa !182
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !181
  %i.as = load atomic ptr, ptr %i.ar monotonic, align 8
  store ptr %i.as, ptr %i.s, align 8, !tbaa !182
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !181
  %i.av = load atomic ptr, ptr %i.au monotonic, align 8
  store ptr %i.av, ptr %i.t, align 16, !tbaa !182
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !181
  %i.ay = load atomic ptr, ptr %i.ax monotonic, align 8
  store ptr %i.ay, ptr %i.u, align 8, !tbaa !182
  br label %.preheader

bb.c:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.az = add nuw nsw i64 %i.aa, 8                ; 2 uses
  %.not29 = icmp samesign ugt i64 %i.az, %i.m
  br i1 %.not29, label %._crit_edge, label %.preheader.preheader, !llvm.loop !507

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %.024.idx70 = phi i64 [ %.024.add, %.loopexit ], [ 0, %.preheader.preheader ] ; 2 uses
  %.024.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.024.idx70
  %i.ba = load ptr, ptr %.024.ptr, align 8, !tbaa !182 ; 4 uses
  %.not32 = icmp eq ptr %i.ba, null
  br i1 %.not32, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bc = zext i64 %i.bb to i128
  %i.bd = mul nuw i128 %i.bc, 14181476777654086739
  %i.be = lshr i128 %i.bd, 64
  %i.bf = trunc nuw i128 %i.be to i64
  %i.bg = mul i64 %i.bb, -4265267296055464877
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = mul i64 %i.bh, -4265267296055464877     ; 2 uses
  %i.bj = lshr i64 %i.bi, 14
  %i.bk = and i64 %i.bj, 255
  %i.bl = lshr i64 %i.bi, 22                      ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1) ; 4 uses
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !514 ; 3 uses
  %i.bn = lshr i64 %i.bm, 8                       ; 3 uses
  %.not.i = icmp eq i64 %i.bn, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !176, !noalias !514 ; 3 uses
  br i1 %.not.i, label %.thread67.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 1
  %i.bp = or disjoint i64 %i.bo, 1
  %i.bq = trunc nuw i64 %.sroa.speculated.i.i.i.i.i.i.i.i to i8
  %i.br = insertelement <16 x i8> poison, i8 %i.bq, i64 0
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bt = and i64 %i.bm, 255                      ; 4 uses
  %i.bu = shl nuw i64 1, %i.bt
  %notmask.i.i = shl nsw i64 -1, %i.bt
  %i.bv = xor i64 %notmask.i.i, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.024.i80.i = phi i64 [ %i.bu, %bb.e ], [ %i.ct, %bb.h ]
  %.026.i79.i = phi i64 [ %i.bl, %bb.e ], [ %i.cu, %bb.h ] ; 2 uses
  %i.bw = and i64 %.026.i79.i, %i.bv
  %i.bx = shl nsw i64 %i.bw, 7
  %i.by = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.bx ; 4 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.bz, i32 0, i32 3, i32 1), !noalias !514
  %i.ca = load <16 x i8>, ptr %i.by, align 16, !noalias !514 ; 2 uses
  %i.cb = icmp eq <16 x i8> %i.ca, %i.bs
  %i.cc = bitcast <16 x i1> %i.cb to i16
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %i.ce = and i32 %i.cd, 16383
  %.not69.i = icmp eq i32 %i.ce, 0
  %i.cf = extractelement <16 x i8> %i.ca, i64 15
  br i1 %.not69.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.cg = icmp ne ptr %i.by, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cg)
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.i, %.preheader.i
  %.sroa.042.0.i = phi i32 [ %i.cq, %.critedge.i.i ], [ %i.cd, %.preheader.i ] ; 4 uses
  %i.ch = icmp ne i32 %.sroa.042.0.i, 0
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0.i, i1 true)
  %i.cj = shl nuw nsw i32 %i.ci, 3
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr i8, ptr %i.by, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !182, !noalias !514
  %i.co = icmp eq ptr %i.ba, %i.cn
  br i1 %i.co, label %.loopexit, label %.critedge.i.i, !prof !73

.critedge.i.i:                                    ; preds = %bb.g
  %i.cp = add nuw nsw i32 %.sroa.042.0.i, 65535
  %i.cq = and i32 %i.cp, %.sroa.042.0.i           ; 2 uses
  %i.cr = and i32 %i.cq, 16382
  %.not70.i = icmp eq i32 %i.cr, 0
  br i1 %.not70.i, label %.loopexit.i, label %bb.g, !llvm.loop !12

.loopexit.i:                                      ; preds = %.critedge.i.i, %bb.f
  %i.cs = icmp eq i8 %i.cf, 0
  br i1 %i.cs, label %.thread67.i, label %bb.h, !prof !73

bb.h:                                             ; preds = %.loopexit.i
  %i.ct = add i64 %.024.i80.i, -1                 ; 2 uses
  %i.cu = add i64 %i.bp, %.026.i79.i
  %.not.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i, label %.thread67.i, label %bb.f, !llvm.loop !13

.thread67.i:                                      ; preds = %bb.h, %.loopexit.i, %bb.d
  %.pre-phi91.i = phi i64 [ %i.bm, %bb.d ], [ %i.bt, %.loopexit.i ], [ %i.bt, %bb.h ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre.i, i64 14
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !91, !noalias !514
  %i.cx = and i8 %i.cw, 15
  %i.cy = zext nneg i8 %i.cx to i64               ; 2 uses
  %i.cz = shl i64 %i.cy, %.pre-phi91.i            ; 2 uses
  %.not.i30.i = icmp ult i64 %i.bn, %i.cz
  br i1 %.not.i30.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i, label %bb.i

bb.i:                                             ; preds = %.thread67.i
  %i.da = shl nuw i64 1, %.pre-phi91.i
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bn, i64 noundef %i.da, i64 noundef %i.cy, i64 noundef %i.cz)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.i
  %.pre87.i = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !514
  %.pre88.i = load ptr, ptr %0, align 8, !tbaa !176, !noalias !514
  %.pre89.i = and i64 %.pre87.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i: ; preds = %.noexc, %.thread67.i
  %.pre-phi.i = phi i64 [ %.pre-phi91.i, %.thread67.i ], [ %.pre89.i, %.noexc ]
  %i.db = phi ptr [ %.pre.i, %.thread67.i ], [ %.pre88.i, %.noexc ] ; 4 uses
  %notmask.i31.i = shl nsw i64 -1, %.pre-phi.i
  %i.dc = xor i64 %notmask.i31.i, -1              ; 2 uses
  %i.dd = and i64 %i.bl, %i.dc
  %i.de = shl nuw nsw i64 %i.dd, 7                ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de ; 2 uses
  %i.dg = load <16 x i8>, ptr %i.df, align 16, !tbaa !91, !noalias !514
  %i.dh = icmp eq <16 x i8> %i.dg, zeroinitializer
  %i.di = bitcast <16 x i1> %i.dh to i16
  %i.dj = and i16 %i.di, 16383                    ; 2 uses
  %.not71.i = icmp eq i16 %i.dj, 0
  br i1 %.not71.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i
  %i.dk = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 1
  %i.dl = or disjoint i64 %i.dk, 1
  br label %bb.k

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i, %bb.j
  %i.dm = phi i64 [ %i.de, %bb.j ], [ %i.dt, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ]
  %.028.i = phi i64 [ %i.bl, %bb.j ], [ %i.dr, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 15 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !184, !noalias !514 ; 2 uses
  %.not.i32.i = icmp eq i8 %i.dp, -2
  br i1 %.not.i32.i, label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = add i8 %i.dp, 1
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !184, !noalias !514
  br label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i

_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i: ; preds = %bb.l, %bb.k
  %i.dr = add i64 %i.dl, %.028.i                  ; 2 uses
  %i.ds = and i64 %i.dr, %i.dc
  %i.dt = shl nsw i64 %i.ds, 7                    ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dt
  %i.dv = load <16 x i8>, ptr %i.du, align 16, !noalias !514 ; 2 uses
  %i.dw = icmp eq <16 x i8> %i.dv, zeroinitializer
  %i.dx = bitcast <16 x i1> %i.dw to i16
  %i.dy = and i16 %i.dx, 16383                    ; 2 uses
  %.not72.i = icmp eq i16 %i.dy, 0
  br i1 %.not72.i, label %bb.k, label %bb.m, !llvm.loop !14

bb.m:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dt ; 2 uses
  %i.ea = extractelement <16 x i8> %i.dv, i64 14
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 14
  %i.ec = add i8 %i.ea, 16
  store i8 %i.ec, ptr %i.eb, align 2, !tbaa !185, !noalias !514
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i
  %.sroa.036.0.in.i = phi i16 [ %i.dj, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i ], [ %i.dy, %bb.m ]
  %.1.i = phi ptr [ %i.df, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit.i ], [ %i.dz, %bb.m ] ; 3 uses
  %i.ed = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in.i, i1 true)
  %i.ee = zext nneg i16 %i.ed to i64              ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !91, !noalias !514
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKvE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #39, !noalias !514
  unreachable

_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i: ; preds = %bb.n
  %i.ei = trunc nuw i64 %.sroa.speculated.i.i.i.i.i.i.i.i to i8
  store i8 %i.ei, ptr %i.ef, align 1, !tbaa !91, !noalias !514
  %i.ej = shl nuw nsw i64 %i.ee, 3
  %i.ek = getelementptr i8, ptr %.1.i, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 16     ; 3 uses
  %i.em = icmp ne ptr %.1.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.em)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.el) ]
  store ptr %i.ba, ptr %i.el, align 8, !tbaa !182, !noalias !514
  %i.en = lshr i64 %i.ee, 1
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = or i64 %i.en, %i.eo                     ; 2 uses
  %i.eq = load i64, ptr %i.n, align 8, !tbaa !186, !noalias !514
  %i.er = icmp ult i64 %i.eq, %i.ep
  br i1 %i.er, label %bb.p, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit.i

bb.p:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i
  store i64 %i.ep, ptr %i.n, align 8, !tbaa !97, !noalias !514
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit.i: ; preds = %bb.p, %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit.i
  %i.es = load i64, ptr %i.c, align 8, !tbaa !63, !noalias !514 ; 2 uses
  %i.et = and i64 %i.es, -256
  %i.eu = add i64 %i.et, 256
  %i.ev = and i64 %i.es, 255
  %i.ew = or disjoint i64 %i.eu, %i.ev
  store i64 %i.ew, ptr %i.c, align 8, !tbaa !63, !noalias !514
  br label %.loopexit

bb.q:                                             ; preds = %bb.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.v

.loopexit:                                        ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit.i, %.preheader
  %.024.add = add nuw nsw i64 %.024.idx70, 8      ; 2 uses
  %.not31 = icmp eq i64 %.024.add, 64
  br i1 %.not31, label %bb.c, label %.preheader

._crit_edge76:                                    ; preds = %bb.u, %bb.b, %._crit_edge
  fence acquire
  br label %bb.w

.lr.ph75:                                         ; preds = %._crit_edge, %bb.u
  %.sroa.043.073 = phi ptr [ %i.fm, %bb.u ], [ %i.w, %._crit_edge ] ; 2 uses
  %i.ey = load ptr, ptr %.sroa.043.073, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ez = load atomic ptr, ptr %i.ey monotonic, align 8 ; 3 uses
  store ptr %i.ez, ptr %i.b, align 8, !tbaa !182
  %.not30 = icmp eq ptr %i.ez, null
  br i1 %.not30, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12, !noalias !515
  %i.fa = ptrtoint ptr %i.ez to i64               ; 2 uses
  %i.fb = zext i64 %i.fa to i128
  %i.fc = mul nuw i128 %i.fb, 14181476777654086739
  %i.fd = lshr i128 %i.fc, 64
  %i.fe = trunc nuw i128 %i.fd to i64
  %i.ff = mul i64 %i.fa, -4265267296055464877
  %i.fg = xor i64 %i.ff, %i.fe
  %i.fh = mul i64 %i.fg, -4265267296055464877     ; 2 uses
  %i.fi = lshr i64 %i.fh, 14
  %i.fj = and i64 %i.fi, 255
  %i.fk = lshr i64 %i.fh, 22
  %.sroa.speculated.i.i.i.i.i.i.i.i36 = call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE19tryEmplaceValueImplIS5_JRKS5_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEEbESB_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.87") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 %i.fk, i64 %.sroa.speculated.i.i.i.i.i.i.i.i36, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12, !noalias !515
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %.lr.ph75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.043.073, i64 8 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.y
  br i1 %i.fn, label %._crit_edge76, label %.lr.ph75

bb.v:                                             ; preds = %bb.t, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.q ], [ %i.fl, %bb.t ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #12
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %bb.a, %._crit_edge76
  ret void
}

end_hunk_2
begin_hunk_3_@_ZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERb:bb.a
  br i1 %i.do, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5, label %bb.n

bb.n:                                             ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.4
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.dq = load ptr, ptr %i.dp, align 16, !tbaa !165
  %i.dr = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.ds = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.dt = inttoptr i64 %i.dr to ptr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !138
  %i.dv = cmpxchg weak ptr %i.dn, i64 %i.dr, i64 %i.ds acq_rel acquire, align 8 ; 2 uses
  %i.dw = extractvalue { i64, i1 } %i.dv, 1
  br i1 %i.dw, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5: ; preds = %bb.n, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5
  %i.dx = phi { i64, i1 } [ %i.ea, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5 ], [ %i.dv, %bb.n ]
  %i.dy = extractvalue { i64, i1 } %i.dx, 0       ; 2 uses
  %i.dz = inttoptr i64 %i.dy to ptr
  store ptr %i.dz, ptr %i.du, align 8, !tbaa !138
  %i.ea = cmpxchg weak ptr %i.dn, i64 %i.dy, i64 %i.ds acq_rel acquire, align 8 ; 2 uses
  %i.eb = extractvalue { i64, i1 } %i.ea, 1
  br i1 %i.eb, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5: ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.5, %bb.n, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !62
  %i.ee = load ptr, ptr %.ptr.6, align 16, !tbaa !141 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.eg = icmp eq ptr %i.ee, null
  br i1 %i.eg, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6, label %bb.o

bb.o:                                             ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !165
  %i.ej = load atomic i64, ptr %i.ef acquire, align 16 ; 2 uses
  %i.ek = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.el = inttoptr i64 %i.ej to ptr
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  store ptr %i.el, ptr %i.em, align 8, !tbaa !138
  %i.en = cmpxchg weak ptr %i.ef, i64 %i.ej, i64 %i.ek acq_rel acquire, align 8 ; 2 uses
  %i.eo = extractvalue { i64, i1 } %i.en, 1
  br i1 %i.eo, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6: ; preds = %bb.o, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6
  %i.ep = phi { i64, i1 } [ %i.es, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6 ], [ %i.en, %bb.o ]
  %i.eq = extractvalue { i64, i1 } %i.ep, 0       ; 2 uses
  %i.er = inttoptr i64 %i.eq to ptr
  store ptr %i.er, ptr %i.em, align 8, !tbaa !138
  %i.es = cmpxchg weak ptr %i.ef, i64 %i.eq, i64 %i.ek acq_rel acquire, align 8 ; 2 uses
  %i.et = extractvalue { i64, i1 } %i.es, 1
  br i1 %i.et, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6: ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.6, %bb.o, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.5
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !62
  %i.ew = load ptr, ptr %.ptr.7, align 8, !tbaa !141 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ey = icmp eq ptr %i.ew, null
  br i1 %i.ey, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.7, label %bb.p

bb.p:                                             ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.fa = load ptr, ptr %i.ez, align 16, !tbaa !165
  %i.fb = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.fc = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.fd = inttoptr i64 %i.fb to ptr
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !138
  %i.ff = cmpxchg weak ptr %i.ex, i64 %i.fb, i64 %i.fc acq_rel acquire, align 8 ; 2 uses
  %i.fg = extractvalue { i64, i1 } %i.ff, 1
  br i1 %i.fg, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.7, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7: ; preds = %bb.p, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7
  %i.fh = phi { i64, i1 } [ %i.fk, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7 ], [ %i.ff, %bb.p ]
  %i.fi = extractvalue { i64, i1 } %i.fh, 0       ; 2 uses
  %i.fj = inttoptr i64 %i.fi to ptr
  store ptr %i.fj, ptr %i.fe, align 8, !tbaa !138
  %i.fk = cmpxchg weak ptr %i.ex, i64 %i.fi, i64 %i.fc acq_rel acquire, align 8 ; 2 uses
  %i.fl = extractvalue { i64, i1 } %i.fk, 1
  br i1 %i.fl, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.7, label %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7

_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.7: ; preds = %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E8cas_headERmm.exit.i.7, %bb.p, %_ZN5folly13hazptr_detail21shared_head_only_listINS_10hazptr_objISt6atomicEES3_E4pushERNS0_11linked_listIS4_EEb.exit.6
  %i.fm = add nsw i32 %i.bj, %i.ar
  %i.fn = add nsw i32 %i.cb, %i.fm
  %i.fo = add nsw i32 %i.ct, %i.fn
  %i.fp = add nsw i32 %i.dl, %i.fo
  %i.fq = add nsw i32 %i.ed, %i.fp
  %i.fr = add nsw i32 %i.ev, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !62
  %i.fu = add nsw i32 %i.ft, %i.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.fu
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !176    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.c = load i8, ptr %i.b, align 1, !tbaa !179
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !63   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.h = icmp ult i64 %i.f, 256
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.f, 255                        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !97
  store i64 %i.i, ptr %i.e, align 8, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = load i8, ptr %i.g, align 1, !tbaa !91
  %i.m = icmp eq i64 %i.k, 0
  %i.n = shl i8 %i.l, 3
  %i.o = and i8 %i.n, 120
  %narrow.i.i.i = add nuw i8 %i.o, 16
  %i.p = zext i8 %narrow.i.i.i to i64
  %i.q = shl i64 128, %i.k
  %.0.i.i.i.i = select i1 %i.m, i64 %i.p, i64 %i.q
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %0, align 8, !tbaa !176
  store i64 0, ptr %i.e, align 8, !tbaa !63
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %.0.i.i.i.i) #12
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEED2Ev.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly32asymmetric_thread_fence_heavy_fn5impl_ESt12memory_order(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE19tryEmplaceValueImplIS5_JRKS5_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEEbESB_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.87") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !63   ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !176   ; 3 uses
  br i1 %.not, label %.thread67, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = load ptr, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i80 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.e ]
  %.026.i79 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.e ] ; 2 uses
  %i.m = and i64 %.026.i79, %i.k
  %i.n = shl nsw i64 %i.m, 7
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not69 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not69, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.042.0 = phi i32 [ %i.ag, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.042.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !182
  %i.ae = icmp eq ptr %i.l, %i.ad
  br i1 %i.ae, label %bb.f, label %.critedge.i, !prof !73

.critedge.i:                                      ; preds = %bb.d
  %i.af = add nuw nsw i32 %.sroa.042.0, 65535
  %i.ag = and i32 %i.af, %.sroa.042.0             ; 2 uses
  %i.ah = and i32 %i.ag, 16382
  %.not70 = icmp eq i32 %i.ah, 0
  br i1 %.not70, label %.loopexit, label %bb.d, !llvm.loop !12

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.ai = icmp eq i8 %i.v, 0
  br i1 %i.ai, label %.thread67, label %bb.e, !prof !73

bb.e:                                             ; preds = %.loopexit
  %i.aj = add i64 %.024.i80, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.026.i79
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread67, label %bb.c, !llvm.loop !13

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr i8, ptr %i.ab, i64 16
  br label %bb.o

.thread67:                                        ; preds = %bb.e, %.loopexit, %bb.a
  %.pre-phi91 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.e ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !91
  %i.ao = and i8 %i.an, 15
  %i.ap = zext nneg i8 %i.ao to i64               ; 2 uses
  %i.aq = shl i64 %i.ap, %.pre-phi91              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.aq
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread67
  %i.ar = shl nuw i64 1, %.pre-phi91
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.ar, i64 noundef %i.ap, i64 noundef %i.aq)
  %.pre87 = load i64, ptr %i.a, align 8, !tbaa !63
  %.pre88 = load ptr, ptr %1, align 8, !tbaa !176
  %.pre89 = and i64 %.pre87, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread67, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi91, %.thread67 ], [ %.pre89, %bb.g ]
  %i.as = phi ptr [ %.pre, %.thread67 ], [ %.pre88, %bb.g ] ; 4 uses
  %notmask.i31 = shl nsw i64 -1, %.pre-phi
  %i.at = xor i64 %notmask.i31, -1                ; 2 uses
  %i.au = and i64 %2, %i.at
  %i.av = shl nsw i64 %i.au, 7                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 2 uses
  %i.ax = load <16 x i8>, ptr %i.aw, align 16, !tbaa !91
  %i.ay = icmp eq <16 x i8> %i.ax, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16
  %i.ba = and i16 %i.az, 16383                    ; 2 uses
  %.not71 = icmp eq i16 %i.ba, 0
  br i1 %.not71, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit
  %i.bb = shl i64 %3, 1
  %i.bc = or disjoint i64 %i.bb, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bd = phi i64 [ %i.av, %bb.h ], [ %i.bk, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.h ], [ %i.bi, %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 15 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !184 ; 2 uses
  %.not.i32 = icmp eq i8 %i.bg, -2
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !184
  br label %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bi = add i64 %i.bc, %.028                    ; 2 uses
  %i.bj = and i64 %i.bi, %i.at
  %i.bk = shl nsw i64 %i.bj, 7                    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk
  %i.bm = load <16 x i8>, ptr %i.bl, align 16     ; 2 uses
  %i.bn = icmp eq <16 x i8> %i.bm, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = and i16 %i.bo, 16383                    ; 2 uses
  %.not72 = icmp eq i16 %i.bp, 0
  br i1 %.not72, label %bb.i, label %bb.k, !llvm.loop !14

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE25incrOutboundOverflowCountEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bk ; 2 uses
  %i.br = extractelement <16 x i8> %i.bm, i64 14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  %i.bt = add i8 %i.br, 16
  store i8 %i.bt, ptr %i.bs, align 2, !tbaa !185
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit
  %.sroa.036.0.in = phi i16 [ %i.ba, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.k ]
  %.1 = phi ptr [ %i.aw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE16reserveForInsertEm.exit ], [ %i.bq, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64              ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bv ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !91
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKvE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.3) #39
  unreachable

_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit: ; preds = %bb.l
  %i.bz = trunc i64 %3 to i8
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !91
  %i.ca = shl nuw nsw i64 %i.bv, 3
  %i.cb = getelementptr i8, ptr %.1, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 16     ; 4 uses
  %i.cd = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.ce = load ptr, ptr %5, align 8, !tbaa !182
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !182
  %i.cf = lshr i64 %i.bv, 1
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = or i64 %i.cf, %i.cg                     ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !186
  %i.ck = icmp ult i64 %i.cj, %i.ch
  br i1 %i.ck, label %bb.n, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !97
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKvE6setTagEmm.exit, %bb.n
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.cm = and i64 %i.cl, -256
  %i.cn = add i64 %i.cm, 256
  %i.co = and i64 %i.cl, 255
  %i.cp = or disjoint i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !63
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit
  %.sink107 = phi ptr [ %i.al, %bb.f ], [ %i.cc, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa102.sink = phi i64 [ %i.z, %bb.f ], [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE13insertAtBlankIJRKS5_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink107, ptr %0, align 8, !tbaa !516
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa102.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !97
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !519
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !63
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmm:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gc = load i64, ptr %i.e, align 8, !tbaa !97
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gc) #12
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !105, !range !88, !noundef !87
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !533, !nonnull !87
  %i.e = load i8, ptr %i.d, align 1, !tbaa !103, !range !88, !noundef !87
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !73

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !534, !nonnull !87, !align !120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !97
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !535, !nonnull !87, !align !120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !191
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !536, !nonnull !87, !align !120
  %i.o = load i64, ptr %i.n, align 8, !tbaa !97
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !537  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !538, !nonnull !87, !align !120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !539, !nonnull !87, !align !120
  %i.w = load i64, ptr %i.v, align 8, !tbaa !97
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !535, !nonnull !87, !align !120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !191
  store ptr %i.z, ptr %i.q, align 8, !tbaa !176
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !540, !nonnull !87, !align !120
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !97 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !63
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !63
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE1EE5checkEv() #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #12
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKvvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly13hazptr_domainISt6atomicE17list_walk_shardedIZNS2_12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_EEEEUliS6_E_EEvS7_T_(ptr noundef nonnull align 64 dereferenceable(449) %0, ptr noundef %1, ptr noundef byval(%class.anon.100) align 8 %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader16:
  %i.a = alloca [8 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.preheader

bb.a:                                             ; preds = %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void

.preheader:                                       ; preds = %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit, %.preheader16
  %indvars.iv = phi i64 [ %indvars.iv.next.mux, %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit ], [ 0, %.preheader16 ] ; 4 uses
  %.118 = phi i1 [ %.2.mux, %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit ], [ false, %.preheader16 ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !163  ; 10 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !138
  store ptr %i.g, ptr %i.d, align 8, !tbaa !163
  %i.h = load ptr, ptr %2, align 8, !tbaa !543, !nonnull !87, !align !120 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !63   ; 3 uses
  %i.k = icmp ult i64 %i.j, 512
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i64 %i.j, 256
  br i1 %i.l, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !186
  %i.o = and i64 %i.n, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !182
  %i.r = icmp eq ptr %i.e, %i.q
  br i1 %i.r, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i

bb.e:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.t = zext i64 %i.s to i128
  %i.u = mul nuw i128 %i.t, 14181476777654086739
  %i.v = lshr i128 %i.u, 64
  %i.w = trunc nuw i128 %i.v to i64
  %i.x = mul i64 %i.s, -4265267296055464877
  %i.y = xor i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4265267296055464877       ; 2 uses
  %i.aa = lshr i64 %i.z, 14
  %i.ab = and i64 %i.aa, 255
  %i.ac = lshr i64 %i.z, 22
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1) ; 2 uses
  %i.ad = shl nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = trunc nuw i64 %.sroa.speculated.i.i.i.i to i8
  %i.ag = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ai = and i64 %i.j, 255                       ; 2 uses
  %i.aj = shl nuw i64 1, %i.ai
  %notmask.i.i = shl nsw i64 -1, %i.ai
  %i.ak = xor i64 %notmask.i.i, -1
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !176
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.024.i.i53.i = phi i64 [ %i.aj, %bb.e ], [ %i.bj, %bb.h ]
  %.026.i.i52.i = phi i64 [ %i.ac, %bb.e ], [ %i.bk, %bb.h ] ; 2 uses
  %i.am = and i64 %.026.i.i52.i, %i.ak
  %i.an = shl nsw i64 %i.am, 7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.ap, i32 0, i32 3, i32 1)
  %i.aq = load <16 x i8>, ptr %i.ao, align 16     ; 2 uses
  %i.ar = icmp eq <16 x i8> %i.aq, %i.ah
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = and i32 %i.at, 16383
  %.not.i = icmp eq i32 %i.au, 0
  %i.av = extractelement <16 x i8> %i.aq, i64 15
  br i1 %.not.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.aw = icmp ne ptr %i.ao, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aw)
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i, %.preheader.i
  %.sroa.014.0.i = phi i32 [ %i.bg, %.critedge.i.i.i ], [ %i.at, %.preheader.i ] ; 4 uses
  %i.ax = icmp ne i32 %.sroa.014.0.i, 0
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.014.0.i, i1 true)
  %i.az = shl nuw nsw i32 %i.ay, 3
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr i8, ptr %i.ao, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !182
  %i.be = icmp eq ptr %i.e, %i.bd
  br i1 %i.be, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i, label %.critedge.i.i.i, !prof !73

.critedge.i.i.i:                                  ; preds = %bb.g
  %i.bf = add nuw nsw i32 %.sroa.014.0.i, 65535
  %i.bg = and i32 %i.bf, %.sroa.014.0.i           ; 2 uses
  %i.bh = and i32 %i.bg, 16382
  %.not51.i = icmp eq i32 %i.bh, 0
  br i1 %.not51.i, label %.loopexit.i, label %bb.g, !llvm.loop !12

.loopexit.i:                                      ; preds = %.critedge.i.i.i, %bb.f
  %i.bi = icmp eq i8 %i.av, 0
  br i1 %i.bi, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.h, !prof !73

bb.h:                                             ; preds = %.loopexit.i
  %i.bj = add i64 %.024.i.i53.i, -1               ; 2 uses
  %i.bk = add i64 %i.ae, %.026.i.i52.i
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.f, !llvm.loop !13

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i: ; preds = %bb.g, %bb.d
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !544, !nonnull !87, !align !120
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !138
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !165 ; 2 uses
  %.not.i.i9.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i9.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.e, ptr %i.bp, align 8, !tbaa !138
  br label %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i

bb.j:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i
  store ptr %i.e, ptr %i.bm, align 8, !tbaa !141
  br label %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i

_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i: ; preds = %bb.j, %bb.i
  store ptr %i.e, ptr %i.bn, align 8, !tbaa !165
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !167
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !167
  br label %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i: ; preds = %bb.h, %.loopexit.i, %bb.d, %bb.c
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !545, !nonnull !87, !align !194
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !62
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !62
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !150
  %i.bz = and i64 %i.by, -2
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  br label %_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i

_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i: ; preds = %_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i
  %i.cc = load atomic ptr, ptr %i.cb acquire, align 8 ; 2 uses
  store ptr %i.cc, ptr %i.f, align 8, !tbaa !138
  %i.cd = cmpxchg weak ptr %i.cb, ptr %i.cc, ptr %i.e acq_rel monotonic, align 8
  %i.ce = extractvalue { ptr, i1 } %i.cd, 1
  br i1 %i.ce, label %_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit, label %_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i

_ZZN5folly13hazptr_domainISt6atomicE12match_taggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEEENKUliS5_E_clEiS5_.exit: ; preds = %_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i, %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i, %.preheader
  %.2 = phi i1 [ %.118, %.preheader ], [ true, %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i ], [ true, %_ZN5folly17hazptr_obj_cohortISt6atomicE17cas_safe_list_topERPNS_10hazptr_objIS1_EES5_.exit.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, 8 ; 3 uses
  %brmerge = select i1 %exitcond.not, i1 true, i1 %.2
  %indvars.iv.next.mux = select i1 %exitcond.not, i64 %indvars.iv.next, i64 0
  %.2.mux = select i1 %exitcond.not, i1 %.2, i1 false
  br i1 %brmerge, label %.preheader, label %bb.a, !llvm.loop !541
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly13hazptr_domainISt6atomicE17list_walk_shardedIZNS2_22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashISA_vEENS_26HeterogeneousAccessEqualToISA_vEESaISA_EEERbEUliS6_E_EEvS7_T_(ptr noundef nonnull align 64 dereferenceable(449) %0, ptr noundef %1, ptr noundef byval(%class.anon.101) align 8 %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.preheader16:
  %3 = alloca %"class.folly::hazptr_obj_list", align 8 ; 7 uses
  %i.a = alloca [8 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa !163
  %i.b = load ptr, ptr %2, align 8, !nonnull !87, !align !120 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !87, !align !120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !87, !align !194
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !87
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader

bb.a:                                             ; preds = %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void

.preheader:                                       ; preds = %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit, %.preheader16
  %indvars.iv = phi i64 [ %indvars.iv.next.mux, %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit ], [ 0, %.preheader16 ] ; 5 uses
  %.118 = phi i1 [ %.2.mux, %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit ], [ false, %.preheader16 ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !163  ; 10 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !138
  store ptr %i.p, ptr %i.m, align 8, !tbaa !163
  %i.q = load i64, ptr %i.c, align 8, !tbaa !63   ; 3 uses
  %i.r = icmp ult i64 %i.q, 512
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i64 %i.q, 256
  br i1 %i.s, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.d, align 8, !tbaa !186
  %i.u = and i64 %i.t, -8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !182
  %i.x = icmp eq ptr %i.n, %i.w
  br i1 %i.x, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i

bb.e:                                             ; preds = %bb.b
  %i.y = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw i128 %i.z, 14181476777654086739
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = mul i64 %i.y, -4265267296055464877
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, -4265267296055464877     ; 2 uses
  %i.ag = lshr i64 %i.af, 14
  %i.ah = and i64 %i.ag, 255
  %i.ai = lshr i64 %i.af, 22
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1) ; 2 uses
  %i.aj = shl nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  %i.ak = or disjoint i64 %i.aj, 1
  %i.al = trunc nuw i64 %.sroa.speculated.i.i.i.i to i8
  %i.am = insertelement <16 x i8> poison, i8 %i.al, i64 0
  %i.an = shufflevector <16 x i8> %i.am, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ao = and i64 %i.q, 255                       ; 2 uses
  %i.ap = shl nuw i64 1, %i.ao
  %notmask.i.i = shl nsw i64 -1, %i.ao
  %i.aq = xor i64 %notmask.i.i, -1
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !176
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.024.i.i53.i = phi i64 [ %i.ap, %bb.e ], [ %i.bp, %bb.h ]
  %.026.i.i52.i = phi i64 [ %i.ai, %bb.e ], [ %i.bq, %bb.h ] ; 2 uses
  %i.as = and i64 %.026.i.i52.i, %i.aq
  %i.at = shl nsw i64 %i.as, 7
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.at ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 80
  call void @llvm.prefetch.p0(ptr %i.av, i32 0, i32 3, i32 1)
  %i.aw = load <16 x i8>, ptr %i.au, align 16     ; 2 uses
  %i.ax = icmp eq <16 x i8> %i.aw, %i.an
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = zext i16 %i.ay to i32                   ; 2 uses
  %i.ba = and i32 %i.az, 16383
  %.not.i = icmp eq i32 %i.ba, 0
  %i.bb = extractelement <16 x i8> %i.aw, i64 15
  br i1 %.not.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.bc = icmp ne ptr %i.au, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bc)
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i, %.preheader.i
  %.sroa.014.0.i = phi i32 [ %i.bm, %.critedge.i.i.i ], [ %i.az, %.preheader.i ] ; 4 uses
  %i.bd = icmp ne i32 %.sroa.014.0.i, 0
  call void @llvm.assume(i1 %i.bd)
  %i.be = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.014.0.i, i1 true)
  %i.bf = shl nuw nsw i32 %i.be, 3
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr %i.au, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !182
  %i.bk = icmp eq ptr %i.n, %i.bj
  br i1 %i.bk, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i, label %.critedge.i.i.i, !prof !73

.critedge.i.i.i:                                  ; preds = %bb.g
  %i.bl = add nuw nsw i32 %.sroa.014.0.i, 65535
  %i.bm = and i32 %i.bl, %.sroa.014.0.i           ; 2 uses
  %i.bn = and i32 %i.bm, 16382
  %.not51.i = icmp eq i32 %i.bn, 0
  br i1 %.not51.i, label %.loopexit.i, label %bb.g, !llvm.loop !12

.loopexit.i:                                      ; preds = %.critedge.i.i.i, %bb.f
  %i.bo = icmp eq i8 %i.bb, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.h, !prof !73

bb.h:                                             ; preds = %.loopexit.i
  %i.bp = add i64 %.024.i.i53.i, -1               ; 2 uses
  %i.bq = add i64 %i.ak, %.026.i.i52.i
  %.not.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i, label %bb.f, !llvm.loop !13

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i: ; preds = %bb.g, %bb.d
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  store ptr null, ptr %i.o, align 8, !tbaa !138
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !165 ; 2 uses
  %.not.i.i9.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i9.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.n, ptr %i.bu, align 8, !tbaa !138
  br label %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i

bb.j:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread39.i
  store ptr %i.n, ptr %i.br, align 8, !tbaa !141
  br label %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i

_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i: ; preds = %bb.j, %bb.i
  store ptr %i.n, ptr %i.bs, align 8, !tbaa !165
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !167
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !167
  br label %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i: ; preds = %bb.h, %.loopexit.i, %bb.d, %bb.c
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !62
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  %i.cb = load ptr, ptr %i.n, align 8, !tbaa !139
  call void %i.cb(ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(20) %3), !inline_history !546
  %i.cc = load ptr, ptr %3, align 8, !tbaa !141   ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i
  store i8 0, ptr %i.j, align 1, !tbaa !103
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv ; 5 uses
  %i.cf = load i32, ptr %i.k, align 8, !tbaa !167 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !141
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !141
  br label %_ZN5folly13hazptr_detail11linked_listINS_10hazptr_objISt6atomicEEE6spliceERS5_.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !165
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cc, ptr %i.cl, align 8, !tbaa !138
  br label %_ZN5folly13hazptr_detail11linked_listINS_10hazptr_objISt6atomicEEE6spliceERS5_.exit.i.i

_ZN5folly13hazptr_detail11linked_listINS_10hazptr_objISt6atomicEEE6spliceERS5_.exit.i.i: ; preds = %bb.n, %bb.m
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !165
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !165
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !167
  %i.cq = add nsw i32 %i.cp, %i.cf
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !167
  br label %_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i

_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i: ; preds = %_ZN5folly13hazptr_detail11linked_listINS_10hazptr_objISt6atomicEEE6spliceERS5_.exit.i.i, %bb.k, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKvvvvvEEE4findIS5_EENS1_11F14ItemIterIPNS1_8F14ChunkIS5_EEEERKT_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit

_ZZN5folly13hazptr_domainISt6atomicE22match_reclaim_untaggedEPPNS_10hazptr_objIS1_EERNS_10F14FastSetIPKvNS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaIS9_EEERbENKUliS5_E_clEiS5_.exit: ; preds = %_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i, %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i, %.preheader
  %.2 = phi i1 [ %.118, %.preheader ], [ true, %_ZN5folly15hazptr_obj_listISt6atomicE4pushEPNS_10hazptr_objIS1_EE.exit.i ], [ true, %_ZN5folly15hazptr_obj_listISt6atomicE6spliceERS2_.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, 8 ; 3 uses
  %brmerge = select i1 %exitcond.not, i1 true, i1 %.2
  %indvars.iv.next.mux = select i1 %exitcond.not, i64 %indvars.iv.next, i64 0
  %.2.mux = select i1 %exitcond.not, i1 %.2, i1 false
  br i1 %brmerge, label %.preheader, label %bb.a, !llvm.loop !547
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #28

declare void @_ZN5folly6detail26hazptr_inline_executor_addENS_8FunctionIFvvEEE(ptr noundef align 16) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #29

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly14RequestContext5StateD2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  invoke void @_ZN5folly17hazptr_obj_cohortISt6atomicE20shutdown_and_reclaimEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5folly14RequestContext5State8Combined15releaseDataRefsEv(ptr noundef nonnull align 8 dereferenceable(112) %i.c)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !197  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN5folly12RequestTokenEPNS1_11RequestDataEESaIS5_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !198
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #43
  br label %_ZNSt6vectorISt4pairIN5folly12RequestTokenEPNS1_11RequestDataEESaIS5_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN5folly12RequestTokenEPNS1_11RequestDataEESaIS5_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !200  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN5folly24SingleWriterFixedHashMapIPNS_11RequestDataEiED2Ev.exit.i, label %_ZNKSt14default_deleteIA_N5folly24SingleWriterFixedHashMapIPNS0_11RequestDataEiE4ElemEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i.i

_ZNKSt14default_deleteIA_N5folly24SingleWriterFixedHashMapIPNS0_11RequestDataEiE4ElemEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIN5folly12RequestTokenEPNS1_11RequestDataEESaIS5_EED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #43
  br label %_ZN5folly24SingleWriterFixedHashMapIPNS_11RequestDataEiED2Ev.exit.i

_ZN5folly24SingleWriterFixedHashMapIPNS_11RequestDataEiED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_N5folly24SingleWriterFixedHashMapIPNS0_11RequestDataEiE4ElemEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i.i, %_ZNSt6vectorISt4pairIN5folly12RequestTokenEPNS1_11RequestDataEESaIS5_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !202  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i, label %_ZN5folly14RequestContext5State8CombinedD2Ev.exit, label %_ZNKSt14default_deleteIA_N5folly24SingleWriterFixedHashMapINS0_12RequestTokenEPNS0_11RequestDataEE4ElemEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i.i.i

_ZNKSt14default_deleteIA_N5folly24SingleWriterFixedHashMapINS0_12RequestTokenEPNS0_11RequestDataEE4ElemEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i.i.i: ; preds = %_ZN5folly24SingleWriterFixedHashMapIPNS_11RequestDataEiED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #43
  br label %_ZN5folly14RequestContext5State8CombinedD2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #37
  unreachable

_ZN5folly14RequestContext5State8CombinedD2Ev.exit: ; preds = %_ZN5folly24SingleWriterFixedHashMapIPNS_11RequestDataEiED2Ev.exit.i, %_ZNKSt14default_deleteIA_N5folly24SingleWriterFixedHashMapINS0_12RequestTokenEPNS0_11RequestDataEE4ElemEEclIS6_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS7_EE5valueEvE4typeEPSB_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 112) #43
  br label %bb.g

bb.g:                                             ; preds = %_ZN5folly14RequestContext5State8CombinedD2Ev.exit, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.r = load atomic i32, ptr %i.q monotonic, align 8 ; 2 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !62
  %.not.i = icmp ult i32 %i.r, 2048
  br i1 %.not.i, label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit, label %bb.h, !prof !73

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE30cleanupTokenlessSharedDeferredERj(ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #37
  unreachable

_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.v = load atomic i8, ptr %i.u monotonic, align 4, !range !88, !noundef !87
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.j, label %_ZN5folly17hazptr_obj_cohortISt6atomicED2Ev.exit

bb.j:                                             ; preds = %_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEED2Ev.exit
end_hunk_4
