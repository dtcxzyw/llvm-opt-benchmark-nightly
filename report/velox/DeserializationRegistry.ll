inline.NumInlined: 312
inline.NumDeleted: 211
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.facebook::velox::Registry" = type { %"class.folly::F14NodeMap", %"class.std::unordered_map", %"class.std::mutex", %"struct.facebook::velox::Registry<std::__cxx11::basic_string<char>, std::shared_ptr<const facebook::velox::ISerializable> (const folly::dynamic &)>::CreateFunction" }
%"class.folly::F14NodeMap" = type { %"class.folly::f14::detail::F14BasicMap" }
%"class.folly::f14::detail::F14BasicMap" = type { %"class.folly::f14::detail::F14Table" }
%"class.folly::f14::detail::F14Table" = type { ptr, %"struct.folly::f14::detail::SizeAndChunkShiftAndPackedBegin" }
%"struct.folly::f14::detail::SizeAndChunkShiftAndPackedBegin" = type { %"struct.folly::f14::detail::PackedSizeAndChunkShift", %"class.folly::f14::detail::PackedChunkItemPtr" }
%"struct.folly::f14::detail::PackedSizeAndChunkShift" = type { i64 }
%"class.folly::f14::detail::PackedChunkItemPtr" = type { i64 }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.std::mutex" = type { %"class.std::__mutex_base" }
%"class.std::__mutex_base" = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"struct.facebook::velox::Registry<std::__cxx11::basic_string<char>, std::shared_ptr<const facebook::velox::ISerializable> (const folly::dynamic &)>::CreateFunction" = type { ptr }
%"class.facebook::velox::Registry.7" = type { %"class.folly::F14NodeMap.8", %"class.std::unordered_map", %"class.std::mutex", %"struct.facebook::velox::Registry<std::__cxx11::basic_string<char>, std::shared_ptr<const facebook::velox::ISerializable> (const folly::dynamic &, void *)>::CreateFunction" }
%"class.folly::F14NodeMap.8" = type { %"class.folly::f14::detail::F14BasicMap.9" }
%"class.folly::f14::detail::F14BasicMap.9" = type { %"class.folly::f14::detail::F14Table.10" }
%"class.folly::f14::detail::F14Table.10" = type { ptr, %"struct.folly::f14::detail::SizeAndChunkShiftAndPackedBegin.17" }
%"struct.folly::f14::detail::SizeAndChunkShiftAndPackedBegin.17" = type { %"struct.folly::f14::detail::PackedSizeAndChunkShift", %"class.folly::f14::detail::PackedChunkItemPtr.18" }
%"class.folly::f14::detail::PackedChunkItemPtr.18" = type { i64 }
%"struct.facebook::velox::Registry<std::__cxx11::basic_string<char>, std::shared_ptr<const facebook::velox::ISerializable> (const folly::dynamic &, void *)>::CreateFunction" = type { ptr }
%"class.facebook::velox::Registry.19" = type { %"class.folly::F14NodeMap.20", %"class.std::unordered_map", %"class.std::mutex", %"struct.facebook::velox::Registry<std::__cxx11::basic_string<char>, std::unique_ptr<facebook::velox::ISerializable> (const folly::dynamic &)>::CreateFunction" }
%"class.folly::F14NodeMap.20" = type { %"class.folly::f14::detail::F14BasicMap.21" }
%"class.folly::f14::detail::F14BasicMap.21" = type { %"class.folly::f14::detail::F14Table.22" }
%"class.folly::f14::detail::F14Table.22" = type { ptr, %"struct.folly::f14::detail::SizeAndChunkShiftAndPackedBegin.29" }
%"struct.folly::f14::detail::SizeAndChunkShiftAndPackedBegin.29" = type { %"struct.folly::f14::detail::PackedSizeAndChunkShift", %"class.folly::f14::detail::PackedChunkItemPtr.30" }
%"class.folly::f14::detail::PackedChunkItemPtr.30" = type { i64 }
%"struct.facebook::velox::Registry<std::__cxx11::basic_string<char>, std::unique_ptr<facebook::velox::ISerializable> (const folly::dynamic &)>::CreateFunction" = type { ptr }
%"struct.folly::f14::detail::F14EmptyTagVector" = type { %"struct.std::array.40", i8 }
%"struct.std::array.40" = type { [15 x i8] }

$_ZN8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEEED2Ev = comdat any

$_ZN8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEPvEED2Ev = comdat any

$_ZN8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10unique_ptrINS0_13ISerializableESt14default_deleteIS9_EERKN5folly7dynamicEEED2Ev = comdat any

$_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE9clearImplILb1EEEvv = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE9clearImplILb1EEEvv = comdat any

$_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE9clearImplILb1EEEvv = comdat any

$_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = comdat any

@_ZZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11 = internal global %"class.facebook::velox::Registry" zeroinitializer, align 8
@_ZGVZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11 = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@_ZZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11 = internal global %"class.facebook::velox::Registry.7" zeroinitializer, align 8
@_ZGVZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11 = internal global i64 0, align 8
@_ZZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11 = internal global %"class.facebook::velox::Registry.19" zeroinitializer, align 8
@_ZGVZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11 = internal global i64 0, align 8
@_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance = linkonce_odr constant %"struct.folly::f14::detail::F14EmptyTagVector" { %"struct.std::array.40" zeroinitializer, i8 -1 }, comdat, align 16
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(128) ptr @_ZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11Ev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11) #12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr @_ZZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 8), i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 72), ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 24), align 8, !tbaa !16
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 32), align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 40), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 56), align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 64), i8 0, i64 56, i1 false)
  store ptr @_ZZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 120), align 8, !tbaa !26
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEEED2Ev, ptr nonnull @_ZZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, ptr nonnull @__dso_handle) #12 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN8facebook5velox35DeserializationRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #12
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(128) ptr @_ZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11Ev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11) #12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr @_ZZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 8), i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 72), ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 24), align 8, !tbaa !16
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 32), align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 40), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 56), align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 64), i8 0, i64 56, i1 false)
  store ptr @_ZZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, i64 120), align 8, !tbaa !33
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEPvEED2Ev, ptr nonnull @_ZZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11, ptr nonnull @__dso_handle) #12 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN8facebook5velox46DeserializationWithContextRegistryForSharedPtrB5cxx11EvE9kRegistryB5cxx11
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10shared_ptrIKNS0_13ISerializableEERKN5folly7dynamicEPvEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #12
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(128) ptr @_ZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11Ev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11) #12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr @_ZZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11, i64 8), i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11, i64 72), ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11, i64 24), align 8, !tbaa !16
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11, i64 32), align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11, i64 40), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11, i64 56), align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11, i64 64), i8 0, i64 56, i1 false)
  store ptr @_ZZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11, i64 120), align 8, !tbaa !40
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10unique_ptrINS0_13ISerializableESt14default_deleteIS9_EERKN5folly7dynamicEEED2Ev, ptr nonnull @_ZZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11, ptr nonnull @__dso_handle) #12 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN8facebook5velox35deserializationRegistryForUniquePtrB5cxx11EvE9kRegistryB5cxx11
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox8RegistryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEFSt10unique_ptrINS0_13ISerializableESt14default_deleteIS9_EERKN5folly7dynamicEEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #12
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !43 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !48
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !48
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #13
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #13
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !49

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !24
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.w = load i64, ptr %i.q, align 8, !tbaa !24
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #13
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.c = load i8, ptr %i.b, align 1, !tbaa !51
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54   ; 3 uses
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %bb.l, label %.preheader38

.preheader38:                                     ; preds = %bb.b, %._crit_edge
  %i.h = phi i64 [ %i.aq, %._crit_edge ], [ %i.f, %bb.b ]
  %.047 = phi i64 [ %i.ar, %._crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %.047 ; 3 uses
  %i.k = load <16 x i8>, ptr %i.j, align 16, !tbaa !48
  %i.l = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16
  %i.n = and i16 %i.m, 16383                      ; 2 uses
  %.sroa.032.0.extract.trunc = zext nneg i16 %i.n to i32 ; 2 uses
  %cond = icmp eq i16 %i.n, 0
  br i1 %cond, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader38
  %i.o = icmp ne ptr %i.j, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.029.042 = phi i32 [ %.sroa.032.0.extract.trunc, %.lr.ph ], [ %.sroa.029.1, %bb.e ] ; 3 uses
  %.sroa.7.041 = phi i32 [ 0, %.lr.ph ], [ %.sroa.7.1, %bb.e ] ; 2 uses
  %i.q = and i32 %.sroa.029.042, 1
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.029.042, i1 true) ; 2 uses
  %i.s = add i32 %i.r, %.sroa.7.041
  %i.t = add nuw nsw i32 %i.r, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.7.1.in = phi i32 [ %i.s, %bb.d ], [ %.sroa.7.041, %bb.c ] ; 2 uses
  %.pn37 = phi i32 [ %i.t, %bb.d ], [ 1, %bb.c ]
  %.sroa.029.1 = lshr i32 %.sroa.029.042, %.pn37  ; 2 uses
  %.sroa.7.1 = add i32 %.sroa.7.1.in, 1
  %i.u = zext i32 %.sroa.7.1.in to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56
  tail call void @llvm.prefetch.p0(ptr %i.w, i32 0, i32 3, i32 1)
  %.not = icmp eq i32 %.sroa.029.1, 0
  br i1 %.not, label %.lr.ph46, label %bb.c

.lr.ph46:                                         ; preds = %bb.e, %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SK_E.exit
  %.sroa.734.045 = phi i32 [ %.sroa.734.1, %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SK_E.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.032.044 = phi i32 [ %.sroa.032.1, %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SK_E.exit ], [ %.sroa.032.0.extract.trunc, %bb.e ] ; 3 uses
  %i.x = and i32 %.sroa.032.044, 1
  %.not.i24 = icmp eq i32 %i.x, 0
  br i1 %.not.i24, label %bb.f, label %bb.g, !prof !55

bb.f:                                             ; preds = %.lr.ph46
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.032.044, i1 true) ; 2 uses
  %i.z = add i32 %.sroa.734.045, %i.y
  %i.aa = add nuw nsw i32 %i.y, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46, %bb.f
  %.pn = phi i32 [ %i.aa, %bb.f ], [ 1, %.lr.ph46 ]
  %.sroa.734.1.in = phi i32 [ %i.z, %bb.f ], [ %.sroa.734.045, %.lr.ph46 ] ; 2 uses
  %.sroa.734.1 = add i32 %.sroa.734.1.in, 1
  %.sroa.032.1 = lshr i32 %.sroa.032.044, %.pn    ; 2 uses
  %i.ab = zext i32 %.sroa.734.1.in to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 5 uses
  %.not.i27 = icmp eq ptr %i.ad, null
  br i1 %.not.i27, label %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SK_E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.ah = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #14
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %bb.i, %bb.h
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEEEE10deallocateERSM_PSL_m.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !48
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #13
  br label %_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEEEE10deallocateERSM_PSL_m.exit.i

_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEEEE10deallocateERSM_PSL_m.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !56
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef 64) #13
  br label %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SK_E.exit

_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SK_E.exit: ; preds = %bb.g, %_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEEEE10deallocateERSM_PSL_m.exit.i
  %.not36 = icmp eq i32 %.sroa.032.1, 0
  br i1 %.not36, label %._crit_edge.loopexit, label %.lr.ph46, !llvm.loop !60

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SK_E.exit
  %.pre = load i64, ptr %i.e, align 8, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader38
  %i.aq = phi i64 [ %i.h, %.preheader38 ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ar = add i64 %.047, 1                        ; 2 uses
  %i.as = and i64 %i.aq, 255                      ; 3 uses
  %.0.highbits = lshr i64 %i.ar, %i.as
  %i.at = icmp eq i64 %.0.highbits, 0
  br i1 %i.at, label %.preheader38, label %bb.k, !llvm.loop !61

bb.k:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.au, align 8, !tbaa !62
  store i64 %i.as, ptr %i.e, align 8, !tbaa !54
  %.pre48 = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k
  %i.av = phi i64 [ %i.f, %bb.b ], [ %i.as, %bb.k ] ; 2 uses
  %i.aw = phi ptr [ %i.a, %bb.b ], [ %.pre48, %bb.k ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !48
  %i.az = icmp eq i64 %i.av, 0
  %i.ba = shl i8 %i.ay, 3
  %i.bb = and i8 %i.ba, 120
  %narrow = add nuw i8 %i.bb, 16
  %i.bc = zext i8 %narrow to i64
  %i.bd = shl i64 128, %i.av
  %.0.i28 = select i1 %i.az, i64 %i.bc, i64 %i.bd
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %0, align 8, !tbaa !8
  store i64 0, ptr %i.e, align 8, !tbaa !54
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %.0.i28) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.c = load i8, ptr %i.b, align 1, !tbaa !51
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54   ; 3 uses
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %bb.l, label %.preheader38

.preheader38:                                     ; preds = %bb.b, %._crit_edge
  %i.h = phi i64 [ %i.aq, %._crit_edge ], [ %i.f, %bb.b ]
  %.047 = phi i64 [ %i.ar, %._crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %.047 ; 3 uses
  %i.k = load <16 x i8>, ptr %i.j, align 16, !tbaa !48
  %i.l = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16
  %i.n = and i16 %i.m, 16383                      ; 2 uses
  %.sroa.032.0.extract.trunc = zext nneg i16 %i.n to i32 ; 2 uses
  %cond = icmp eq i16 %i.n, 0
  br i1 %cond, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader38
  %i.o = icmp ne ptr %i.j, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.029.042 = phi i32 [ %.sroa.032.0.extract.trunc, %.lr.ph ], [ %.sroa.029.1, %bb.e ] ; 3 uses
  %.sroa.7.041 = phi i32 [ 0, %.lr.ph ], [ %.sroa.7.1, %bb.e ] ; 2 uses
  %i.q = and i32 %.sroa.029.042, 1
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.029.042, i1 true) ; 2 uses
  %i.s = add i32 %i.r, %.sroa.7.041
  %i.t = add nuw nsw i32 %i.r, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.7.1.in = phi i32 [ %i.s, %bb.d ], [ %.sroa.7.041, %bb.c ] ; 2 uses
  %.pn37 = phi i32 [ %i.t, %bb.d ], [ 1, %bb.c ]
  %.sroa.029.1 = lshr i32 %.sroa.029.042, %.pn37  ; 2 uses
  %.sroa.7.1 = add i32 %.sroa.7.1.in, 1
  %i.u = zext i32 %.sroa.7.1.in to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  tail call void @llvm.prefetch.p0(ptr %i.w, i32 0, i32 3, i32 1)
  %.not = icmp eq i32 %.sroa.029.1, 0
  br i1 %.not, label %.lr.ph46, label %bb.c

.lr.ph46:                                         ; preds = %bb.e, %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit
  %.sroa.734.045 = phi i32 [ %.sroa.734.1, %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.032.044 = phi i32 [ %.sroa.032.1, %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit ], [ %.sroa.032.0.extract.trunc, %bb.e ] ; 3 uses
  %i.x = and i32 %.sroa.032.044, 1
  %.not.i24 = icmp eq i32 %i.x, 0
  br i1 %.not.i24, label %bb.f, label %bb.g, !prof !55

bb.f:                                             ; preds = %.lr.ph46
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.032.044, i1 true) ; 2 uses
  %i.z = add i32 %.sroa.734.045, %i.y
  %i.aa = add nuw nsw i32 %i.y, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46, %bb.f
  %.pn = phi i32 [ %i.aa, %bb.f ], [ 1, %.lr.ph46 ]
  %.sroa.734.1.in = phi i32 [ %i.z, %bb.f ], [ %.sroa.734.045, %.lr.ph46 ] ; 2 uses
  %.sroa.734.1 = add i32 %.sroa.734.1.in, 1
  %.sroa.032.1 = lshr i32 %.sroa.032.044, %.pn    ; 2 uses
  %i.ab = zext i32 %.sroa.734.1.in to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63 ; 5 uses
  %.not.i27 = icmp eq ptr %i.ad, null
  br i1 %.not.i27, label %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.ah = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #14
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %bb.i, %bb.h
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEPvEEEEE10deallocateERSN_PSM_m.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !48
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #13
  br label %_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEPvEEEEE10deallocateERSN_PSM_m.exit.i

_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEPvEEEEE10deallocateERSN_PSM_m.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !63
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef 64) #13
  br label %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit

_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit: ; preds = %bb.g, %_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEPvEEEEE10deallocateERSN_PSM_m.exit.i
  %.not36 = icmp eq i32 %.sroa.032.1, 0
  br i1 %.not36, label %._crit_edge.loopexit, label %.lr.ph46, !llvm.loop !65

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit
  %.pre = load i64, ptr %i.e, align 8, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader38
  %i.aq = phi i64 [ %i.h, %.preheader38 ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ar = add i64 %.047, 1                        ; 2 uses
  %i.as = and i64 %i.aq, 255                      ; 3 uses
  %.0.highbits = lshr i64 %i.ar, %i.as
  %i.at = icmp eq i64 %.0.highbits, 0
  br i1 %i.at, label %.preheader38, label %bb.k, !llvm.loop !66

bb.k:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.au, align 8, !tbaa !62
  store i64 %i.as, ptr %i.e, align 8, !tbaa !54
  %.pre48 = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k
  %i.av = phi i64 [ %i.f, %bb.b ], [ %i.as, %bb.k ] ; 2 uses
  %i.aw = phi ptr [ %i.a, %bb.b ], [ %.pre48, %bb.k ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !48
  %i.az = icmp eq i64 %i.av, 0
  %i.ba = shl i8 %i.ay, 3
  %i.bb = and i8 %i.ba, 120
  %narrow = add nuw i8 %i.bb, 16
  %i.bc = zext i8 %narrow to i64
  %i.bd = shl i64 128, %i.av
  %.0.i28 = select i1 %i.az, i64 %i.bc, i64 %i.bd
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %0, align 8, !tbaa !28
  store i64 0, ptr %i.e, align 8, !tbaa !54
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %.0.i28) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEE9clearImplILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.c = load i8, ptr %i.b, align 1, !tbaa !51
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54   ; 3 uses
  %i.g = icmp ult i64 %i.f, 256
  br i1 %i.g, label %bb.l, label %.preheader38

.preheader38:                                     ; preds = %bb.b, %._crit_edge
  %i.h = phi i64 [ %i.aq, %._crit_edge ], [ %i.f, %bb.b ]
  %.047 = phi i64 [ %i.ar, %._crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %.047 ; 3 uses
  %i.k = load <16 x i8>, ptr %i.j, align 16, !tbaa !48
  %i.l = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16
  %i.n = and i16 %i.m, 16383                      ; 2 uses
  %.sroa.032.0.extract.trunc = zext nneg i16 %i.n to i32 ; 2 uses
  %cond = icmp eq i16 %i.n, 0
  br i1 %cond, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader38
  %i.o = icmp ne ptr %i.j, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.029.042 = phi i32 [ %.sroa.032.0.extract.trunc, %.lr.ph ], [ %.sroa.029.1, %bb.e ] ; 3 uses
  %.sroa.7.041 = phi i32 [ 0, %.lr.ph ], [ %.sroa.7.1, %bb.e ] ; 2 uses
  %i.q = and i32 %.sroa.029.042, 1
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !55

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.029.042, i1 true) ; 2 uses
  %i.s = add i32 %i.r, %.sroa.7.041
  %i.t = add nuw nsw i32 %i.r, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.7.1.in = phi i32 [ %i.s, %bb.d ], [ %.sroa.7.041, %bb.c ] ; 2 uses
  %.pn37 = phi i32 [ %i.t, %bb.d ], [ 1, %bb.c ]
  %.sroa.029.1 = lshr i32 %.sroa.029.042, %.pn37  ; 2 uses
  %.sroa.7.1 = add i32 %.sroa.7.1.in, 1
  %i.u = zext i32 %.sroa.7.1.in to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !67
  tail call void @llvm.prefetch.p0(ptr %i.w, i32 0, i32 3, i32 1)
  %.not = icmp eq i32 %.sroa.029.1, 0
  br i1 %.not, label %.lr.ph46, label %bb.c

.lr.ph46:                                         ; preds = %bb.e, %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit
  %.sroa.734.045 = phi i32 [ %.sroa.734.1, %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.032.044 = phi i32 [ %.sroa.032.1, %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit ], [ %.sroa.032.0.extract.trunc, %bb.e ] ; 3 uses
  %i.x = and i32 %.sroa.032.044, 1
  %.not.i24 = icmp eq i32 %i.x, 0
  br i1 %.not.i24, label %bb.f, label %bb.g, !prof !55

bb.f:                                             ; preds = %.lr.ph46
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.032.044, i1 true) ; 2 uses
  %i.z = add i32 %.sroa.734.045, %i.y
  %i.aa = add nuw nsw i32 %i.y, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46, %bb.f
  %.pn = phi i32 [ %i.aa, %bb.f ], [ 1, %.lr.ph46 ]
  %.sroa.734.1.in = phi i32 [ %i.z, %bb.f ], [ %.sroa.734.045, %.lr.ph46 ] ; 2 uses
  %.sroa.734.1 = add i32 %.sroa.734.1.in, 1
  %.sroa.032.1 = lshr i32 %.sroa.032.044, %.pn    ; 2 uses
  %i.ab = zext i32 %.sroa.734.1.in to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !67 ; 5 uses
  %.not.i27 = icmp eq ptr %i.ad, null
  br i1 %.not.i27, label %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.ah = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #14
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i:             ; preds = %bb.i, %bb.h
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISC_EERKN5folly7dynamicEEEEEE10deallocateERSN_PSM_m.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !48
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #13
  br label %_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISC_EERKN5folly7dynamicEEEEEE10deallocateERSN_PSM_m.exit.i

_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISC_EERKN5folly7dynamicEEEEEE10deallocateERSN_PSM_m.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !67
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef 64) #13
  br label %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit

_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit: ; preds = %bb.g, %_ZNSt16allocator_traitsISaISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISC_EERKN5folly7dynamicEEEEEE10deallocateERSN_PSM_m.exit.i
  %.not36 = icmp eq i32 %.sroa.032.1, 0
  br i1 %.not36, label %._crit_edge.loopexit, label %.lr.ph46, !llvm.loop !69

._crit_edge.loopexit:                             ; preds = %_ZN5folly3f146detail19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISD_EERKNS_7dynamicEEEvvvE11destroyItemERPSt4pairIKS8_SL_E.exit
  %.pre = load i64, ptr %i.e, align 8, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader38
  %i.aq = phi i64 [ %i.h, %.preheader38 ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.ar = add i64 %.047, 1                        ; 2 uses
  %i.as = and i64 %i.aq, 255                      ; 3 uses
  %.0.highbits = lshr i64 %i.ar, %i.as
  %i.at = icmp eq i64 %.0.highbits, 0
  br i1 %i.at, label %.preheader38, label %bb.k, !llvm.loop !70

bb.k:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.au, align 8, !tbaa !62
  store i64 %i.as, ptr %i.e, align 8, !tbaa !54
  %.pre48 = load ptr, ptr %0, align 8, !tbaa !35
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k
  %i.av = phi i64 [ %i.f, %bb.b ], [ %i.as, %bb.k ] ; 2 uses
  %i.aw = phi ptr [ %i.a, %bb.b ], [ %.pre48, %bb.k ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !48
  %i.az = icmp eq i64 %i.av, 0
  %i.ba = shl i8 %i.ay, 3
  %i.bb = and i8 %i.ba, 120
  %narrow = add nuw i8 %i.bb, 16
  %i.bc = zext i8 %narrow to i64
  %i.bd = shl i64 128, %i.av
  %.0.i28 = select i1 %i.az, i64 %i.bc, i64 %i.bd
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %0, align 8, !tbaa !35
  store i64 0, ptr %i.e, align 8, !tbaa !54
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %.0.i28) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  ret void
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEvvvEEEE", !10, i64 0, !12, i64 8}
!10 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEEEE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEEEEEELb1EEE", !13, i64 0, !15, i64 8}
!13 = !{!"_ZTSN5folly3f146detail23PackedSizeAndChunkShiftE", !14, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSN5folly3f146detail18PackedChunkItemPtrIPPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEEEEE", !14, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !18, i64 0, !14, i64 8, !20, i64 16, !14, i64 24, !22, i64 32, !21, i64 48}
!18 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !19, i64 0}
!19 = !{!"any p2 pointer", !11, i64 0}
!20 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !21, i64 0}
!21 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!22 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !23, i64 0, !14, i64 8}
!23 = !{!"float", !5, i64 0}
!24 = !{!17, !14, i64 8}
!25 = !{!22, !23, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTSN5folly10F14NodeMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEEENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_SI_EEEE", !11, i64 0}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEvvvEEEE", !30, i64 0, !31, i64 8}
!30 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEEE", !11, i64 0}
!31 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEEEEELb1EEE", !13, i64 0, !32, i64 8}
!32 = !{!"_ZTSN5folly3f146detail18PackedChunkItemPtrIPPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEEEEE", !14, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTSN5folly10F14NodeMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKNS_7dynamicEPvEENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_SJ_EEEE", !11, i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISE_EERKNS_7dynamicEEEvvvEEEE", !37, i64 0, !38, i64 8}
!37 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISF_EERKNS_7dynamicEEEEEE", !11, i64 0}
!38 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISH_EERKNS_7dynamicEEEEEEEELb1EEE", !13, i64 0, !39, i64 8}
!39 = !{!"_ZTSN5folly3f146detail18PackedChunkItemPtrIPPSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISF_EERKNS_7dynamicEEEEEE", !14, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTSN5folly10F14NodeMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISB_EERKNS_7dynamicEEENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_SJ_EEEE", !11, i64 0}
!42 = !{!17, !21, i64 16}
!43 = !{!20, !21, i64 0}
!44 = !{!45, !47, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !46, i64 0, !14, i64 8, !5, i64 16}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !47, i64 0}
!47 = !{!"p1 omnipotent char", !11, i64 0}
!48 = !{!5, !5, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!52, !5, i64 15}
!52 = !{!"_ZTSN5folly3f146detail17F14EmptyTagVectorE", !53, i64 0, !5, i64 15}
!53 = !{!"_ZTSSt5arrayIhLm15EE", !5, i64 0}
!54 = !{!13, !14, i64 0}
!55 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!56 = !{!57, !57, i64 0}
!57 = !{!"p1 _ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEEEE", !11, i64 0}
!58 = !{!59, !11, i64 16}
!59 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!60 = distinct !{!60, !50}
!61 = distinct !{!61, !50}
!62 = !{!14, !14, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"p1 _ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10shared_ptrIKN8facebook5velox13ISerializableEERKN5folly7dynamicEPvEEE", !11, i64 0}
!65 = distinct !{!65, !50}
!66 = distinct !{!66, !50}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFSt10unique_ptrIN8facebook5velox13ISerializableESt14default_deleteISB_EERKN5folly7dynamicEEEE", !11, i64 0}
!69 = distinct !{!69, !50}
!70 = distinct !{!70, !50}
end_hunk_0
