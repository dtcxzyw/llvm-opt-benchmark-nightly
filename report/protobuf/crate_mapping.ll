inline.NumInlined: 729
inline.NumDeleted: 425
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.absl::lts_20250512::container_internal::PolicyFunctions" = type { i32, i32, i32, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.absl::lts_20250512::StatusOr" = type { %"class.absl::lts_20250512::internal_statusor::StatusOrData" }
%"class.absl::lts_20250512::internal_statusor::StatusOrData" = type { %union.anon, %union.anon.0 }
%union.anon = type { %"class.absl::lts_20250512::Status" }
%"class.absl::lts_20250512::Status" = type { i64 }
%union.anon.0 = type { %"class.absl::lts_20250512::flat_hash_map" }
%"class.absl::lts_20250512::flat_hash_map" = type { %"class.absl::lts_20250512::container_internal::raw_hash_map" }
%"class.absl::lts_20250512::container_internal::raw_hash_map" = type { %"class.absl::lts_20250512::container_internal::raw_hash_set" }
%"class.absl::lts_20250512::container_internal::raw_hash_set" = type { %"class.absl::lts_20250512::container_internal::CompressedTuple" }
%"class.absl::lts_20250512::container_internal::CompressedTuple" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage" = type { %"class.absl::lts_20250512::container_internal::CommonFields" }
%"class.absl::lts_20250512::container_internal::CommonFields" = type { i64, %"class.absl::lts_20250512::container_internal::HashtableSize", %"union.absl::lts_20250512::container_internal::HeapOrSoo" }
%"class.absl::lts_20250512::container_internal::HashtableSize" = type { i64 }
%"union.absl::lts_20250512::container_internal::HeapOrSoo" = type { %"struct.absl::lts_20250512::container_internal::HeapPtrs" }
%"struct.absl::lts_20250512::container_internal::HeapPtrs" = type { ptr, %"union.absl::lts_20250512::container_internal::MaybeInitializedPtr" }
%"union.absl::lts_20250512::container_internal::MaybeInitializedPtr" = type { ptr }
%class.anon.18 = type { ptr }
%"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::ByChar, absl::lts_20250512::SkipEmpty, std::basic_string_view<char>>::ConvertToContainer" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.4 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.4 = type { i64, [8 x i8] }
%"class.absl::lts_20250512::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.absl::lts_20250512::strings_internal::Splitter" = type <{ %"class.std::basic_string_view", %"class.absl::lts_20250512::ByChar", [7 x i8] }>
%"class.absl::lts_20250512::ByChar" = type { i8 }
%"struct.std::pair.9" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.std::array" = type { [16 x %struct.raw_view] }
%struct.raw_view = type { ptr, i64 }
%"class.absl::lts_20250512::strings_internal::SplitIterator" = type <{ i64, i32, [4 x i8], %"class.std::basic_string_view", ptr, %"class.absl::lts_20250512::ByChar", [7 x i8] }>

$_ZN4absl12lts_202505126StatusD2Ev = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SB_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSM_SN_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE = comdat any

$_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEEC2EOSH_ = comdat any

$_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_ = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2025051216strings_internal8SplitterINS8_6ByCharENS8_9SkipEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag = comdat any

$_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE = comdat any

$_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmPKvPv = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE19transfer_n_slots_fnEPvSI_SI_m = comdat any

$_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSN_PFvSN_hmmE = comdat any

$_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE18GetPolicyFunctionsEvE5value = comdat any

@.str = private unnamed_addr constant [54 x i8] c"Couldn't parse number of import paths in mapping file\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Could not open file\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed to close file\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to read the file \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c". Error code: \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN4absl12lts_2025051218container_internal11kEmptyGroupE = external constant [32 x i8], align 16
@.str.9 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE = external constant ptr, align 8
@_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE18GetPolicyFunctionsEvE5value = linkonce_odr hidden constant %"struct.absl::lts_20250512::container_internal::PolicyFunctions" { i32 32, i32 64, i32 64, i16 8, i8 0, i8 1, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal23TypeErasedApplyToSlotFnINS1_10StringHashENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEmPKvPv, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE19transfer_n_slots_fnEPvSI_SI_m, ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE, ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m, ptr @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb, ptr @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSN_PFvSN_hmmE }, comdat, align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler4rust27GetImportPathToCrateNameMapB5cxx11EPKNS2_7OptionsE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.18, align 8             ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 12 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::ByChar, absl::lts_20250512::SkipEmpty, std::basic_string_view<char>>::ConvertToContainer", align 1 ; 3 uses
  %i.d = alloca [1024 x i8], align 16             ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %9 = alloca %"class.absl::lts_20250512::flat_hash_map", align 8 ; 18 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::Status", align 8 ; 10 uses
  %12 = alloca %"class.std::vector", align 8      ; 13 uses
  %13 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 7 uses
  %14 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %15 = alloca %"struct.std::pair.9", align 8     ; 16 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !7
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEEC2EOSH_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  store i64 1, ptr %0, align 8, !tbaa !13
  br label %bb.bk

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.j, ptr %10, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.k, align 8, !tbaa !7
  store i8 0, ptr %i.j, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23, !noalias !17
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !20, !noalias !17
  %i.m = call noalias ptr @fopen(ptr noundef %i.l, ptr noundef nonnull @.str.1), !noalias !17 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.o = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 1024, ptr noundef nonnull %i.m), !noalias !17 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051213NotFoundErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %11, i64 19, ptr nonnull @.str.3)
          to label %bb.l unwind label %.loopexit.split-lp109

.lr.ph.i:                                         ; preds = %.preheader.i, %.noexc37
  %i.q = phi i64 [ %i.v, %.noexc37 ], [ %i.o, %.preheader.i ] ; 2 uses
  %i.r = load i64, ptr %i.k, align 8, !tbaa !7, !noalias !17
  %i.s = sub i64 4611686018427387903, %i.r
  %i.t = icmp ult i64 %i.s, %i.q
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #24
          to label %.noexc36 unwind label %.loopexit.split-lp109

.noexc36:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.lr.ph.i
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.d, i64 noundef %i.q)
          to label %.noexc37 unwind label %.loopexit108 ; 0 uses

.noexc37:                                         ; preds = %bb.f
  %i.v = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 1024, ptr noundef nonnull %i.m), !noalias !17 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc37, %.preheader.i
  %i.x = call i32 @ferror(ptr noundef nonnull %i.m) #23, !noalias !17 ; 2 uses
  %i.y = call i32 @fclose(ptr noundef nonnull %i.m), !noalias !17
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  invoke void @_ZN4absl12lts_2025051213InternalErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %11, i64 20, ptr nonnull @.str.4)
          to label %bb.l unwind label %.loopexit.split-lp109

bb.h:                                             ; preds = %._crit_edge.i
  %.not16.i = icmp eq i32 %i.x, 0
  br i1 %.not16.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !17
  store i64 24, ptr %5, align 8, !noalias !17
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.5, ptr %i.z, align 8, !noalias !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !17
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !20, !noalias !17
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !7, !noalias !17
  store i64 %i.ab, ptr %6, align 8, !noalias !17
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !noalias !17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !17
  store i64 14, ptr %7, align 8, !noalias !17
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.6, ptr %i.ad, align 8, !noalias !17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !17
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.af = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.x, ptr noundef nonnull %i.ae)
          to label %.noexc39 unwind label %.loopexit.split-lp109

.noexc39:                                         ; preds = %bb.i
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  store i64 %i.ai, ptr %8, align 8, !tbaa !21, !noalias !17
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ae, ptr %i.aj, align 8, !tbaa !23, !noalias !17
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %.noexc40 unwind label %.loopexit.split-lp109

.noexc40:                                         ; preds = %.noexc39
  %i.ak = load ptr, ptr %4, align 8, !tbaa !20, !noalias !17
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !7, !noalias !17
  invoke void @_ZN4absl12lts_2025051213InternalErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %11, i64 %i.am, ptr %i.ak)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc40
  %i.an = load ptr, ptr %4, align 8, !tbaa !20, !noalias !17 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !16, !noalias !17
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !17
  br label %bb.l

bb.k:                                             ; preds = %.noexc40
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %4, align 8, !tbaa !20, !noalias !17 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i: ; preds = %bb.k
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !16, !noalias !17
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23, !noalias !17
  br label %.body

.thread:                                          ; preds = %bb.h
  store i64 1, ptr %11, align 8, !tbaa !13, !alias.scope !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23, !noalias !17
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.d, %bb.g
  %.pr = load i64, ptr %11, align 8, !tbaa !13    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23, !noalias !17
  %i.ay = icmp eq i64 %.pr, 1
  br i1 %i.ay, label %bb.m, label %.thread244

.thread244:                                       ; preds = %bb.l
  store i64 %.pr, ptr %0, align 8, !tbaa !13
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit75

.loopexit108:                                     ; preds = %bb.f
  %lpad.loopexit110 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp109:                            ; preds = %bb.d, %bb.e, %bb.g, %bb.i, %.noexc39
  %lpad.loopexit.split-lp111 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.l, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.az = load ptr, ptr %10, align 8, !tbaa !20
  %i.ba = load i64, ptr %i.k, align 8, !tbaa !7
  store i64 %i.ba, ptr %13, align 8, !tbaa !27, !alias.scope !28
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.az, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !31, !alias.scope !28
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 10, ptr %i.bb, align 8, !tbaa !16, !alias.scope !28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !32
  invoke void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %12, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(18) %13)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %i.be = load ptr, ptr %12, align 8, !tbaa !38   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler4rust27GetImportPathToCrateNameMapB5cxx11EPKNS2_7OptionsE:bb.a
  %i.fb = lshr i64 %i.ec, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !16
  %i.fe = zext i8 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 8
  %i.fg = or disjoint i64 %i.fa, %i.ff
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.0.i.i = phi i64 [ %i.es, %bb.am ], [ %i.fg, %bb.ao ]
  %i.fh = xor i64 %.0.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.fi = mul i64 %i.fh, -2543921745674291987
  %i.fj = call noundef i64 @llvm.bswap.i64(i64 %i.fi)
  br label %.noexc84

bb.aq:                                            ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit
  %i.fk = icmp ult i64 %i.ec, 17
  br i1 %i.fk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.0.copyload.i.i.i.i = load i64, ptr %i.eb, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ec
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -8
  %.0.copyload.i.i4.i.i = load i64, ptr %i.fm, align 1
  %i.fn = xor i64 %.0.copyload.i.i.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.fo = xor i64 %.0.copyload.i.i4.i.i, -2543921745674291987
  %i.fp = zext i64 %i.fn to i128
  %i.fq = zext i64 %i.fo to i128
  %i.fr = mul nuw i128 %i.fq, %i.fp               ; 2 uses
  %i.fs = lshr i128 %i.fr, 64
  %i.ft = xor i128 %i.fs, %i.fr
  %i.fu = trunc i128 %i.ft to i64
  br label %.noexc84

bb.as:                                            ; preds = %bb.aq
  %i.fv = icmp ult i64 %i.ec, 33
  br i1 %i.fv, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %.0.copyload.i.i20.i = load i64, ptr %i.eb, align 1
  %i.fw = xor i64 %.0.copyload.i.i20.i, 1376283091369227076
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.0.copyload.i.i21.i = load i64, ptr %i.fx, align 1
  %i.fy = xor i64 %.0.copyload.i.i21.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.fz = zext i64 %i.fw to i128
  %i.ga = zext i64 %i.fy to i128
  %i.gb = mul nuw i128 %i.ga, %i.fz               ; 2 uses
  %i.gc = getelementptr i8, ptr %i.eb, i64 %i.ec  ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 -16
  %.0.copyload.i.i22.i = load i64, ptr %i.gd, align 1
  %i.ge = xor i64 %.0.copyload.i.i22.i, 589684135938649225
  %i.gf = getelementptr i8, ptr %i.gc, i64 -8
  %.0.copyload.i.i23.i = load i64, ptr %i.gf, align 1
  %i.gg = xor i64 %.0.copyload.i.i23.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.gh = zext i64 %i.ge to i128
  %i.gi = zext i64 %i.gg to i128
  %i.gj = mul nuw i128 %i.gi, %i.gh               ; 2 uses
  %i.gk = xor i128 %i.gj, %i.gb
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = xor i128 %i.gb, %i.gl
  %i.gn = xor i128 %i.gm, %i.gj
  %i.go = trunc i128 %i.gn to i64
  br label %.noexc84

bb.au:                                            ; preds = %bb.as
  %.not.i86 = icmp ugt i64 %i.ec, 1024
  br i1 %.not.i86, label %bb.aw, label %bb.av, !prof !41

bb.av:                                            ; preds = %bb.au
  %i.gp = invoke noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %i.eb, i64 noundef %i.ec)
          to label %.noexc87 unwind label %bb.bc

.noexc87:                                         ; preds = %bb.av
  %i.gq = xor i64 %i.gp, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.gr = zext i64 %i.gq to i128
  %i.gs = mul nuw i128 %i.gr, 15902822328035259629 ; 2 uses
  %i.gt = lshr i128 %i.gs, 64
  %i.gu = xor i128 %i.gt, %i.gs
  %i.gv = trunc i128 %i.gu to i64
  br label %.noexc84

bb.aw:                                            ; preds = %bb.au
  %i.gw = invoke noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.eb, i64 noundef %i.ec)
          to label %.noexc84 unwind label %bb.bc

.noexc84:                                         ; preds = %.noexc87, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.aw
  %.0.i = phi i64 [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.an ], [ %i.fu, %bb.ar ], [ %i.go, %bb.at ], [ %i.gv, %.noexc87 ], [ %i.fj, %bb.ap ], [ %i.gw, %bb.aw ]
  %i.gx = add i64 %i.ec, 87
  %i.gy = add i64 %i.gx, %.0.i                    ; 3 uses
  %i.gz = load i64, ptr %i.bs, align 8, !tbaa !45, !noalias !47
  %i.ha = and i64 %i.gz, 65535
  %i.hb = load i64, ptr %9, align 8, !tbaa !50, !noalias !47 ; 5 uses
  %i.hc = lshr i64 %i.gy, 7
  %i.hd = xor i64 %i.ha, %i.hc                    ; 2 uses
  %i.he = trunc i64 %i.gy to i8
  %i.hf = and i8 %i.he, 127
  %i.hg = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !16, !noalias !42 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !16, !noalias !42 ; 4 uses
  %i.hh = insertelement <16 x i8> poison, i8 %i.hf, i64 0
  %i.hi = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.hj = load ptr, ptr %15, align 8, !noalias !42
  %i.hk = load i64, ptr %i.bo, align 8, !noalias !42
  %.fr172 = freeze i64 %i.hk                      ; 3 uses
  %i.hl = icmp eq i64 %.fr172, 0
  br i1 %i.hl, label %.noexc84.split.us, label %.noexc84.split

.noexc84.split.us:                                ; preds = %.noexc84, %bb.ax
  %.pn.i.us = phi i64 [ %i.hu, %bb.ax ], [ %i.hd, %.noexc84 ]
  %.sroa.15.0.i.us = phi i64 [ %i.ht, %bb.ax ], [ 0, %.noexc84 ] ; 2 uses
  %.sroa.7.0.i.us = and i64 %.pn.i.us, %i.hb      ; 5 uses
  %i.hm = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i.us
  call void @llvm.prefetch.p0(ptr %i.hm, i32 0, i32 3, i32 1), !noalias !42
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sroa.7.0.i.us
  %i.ho = load <16 x i8>, ptr %i.hn, align 1, !tbaa !16, !noalias !42 ; 2 uses
  %i.hp = icmp eq <16 x i8> %i.hi, %i.ho
  %i.hq = bitcast <16 x i1> %i.hp to i16          ; 2 uses
  %.not58.i.us = icmp eq i16 %i.hq, 0
  br i1 %.not58.i.us, label %.critedge18.i.us, label %.lr.ph.i82.us.us

.critedge18.i.us:                                 ; preds = %.critedge.i.us.us, %.noexc84.split.us
  %i.hr = icmp eq <16 x i8> %i.ho, splat (i8 -128)
  %i.hs = bitcast <16 x i1> %i.hr to i16          ; 2 uses
  %.not51.i.us = icmp eq i16 %i.hs, 0
  br i1 %.not51.i.us, label %bb.ax, label %.thread.i, !prof !41

bb.ax:                                            ; preds = %.critedge18.i.us
  %i.ht = add i64 %.sroa.15.0.i.us, 16            ; 2 uses
  %i.hu = add i64 %i.ht, %.sroa.7.0.i.us
  br label %.noexc84.split.us

.lr.ph.i82.us.us:                                 ; preds = %.noexc84.split.us, %.critedge.i.us.us
  %.sroa.033.059.i.us.us = phi i16 [ %i.ie, %.critedge.i.us.us ], [ %i.hq, %.noexc84.split.us ] ; 3 uses
  %i.hv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i.us.us, i1 true)
  %i.hw = zext nneg i16 %i.hv to i64
  %i.hx = add i64 %.sroa.7.0.i.us, %i.hw
  %i.hy = and i64 %i.hx, %i.hb
  %i.hz = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !7, !noalias !42
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit, label %.critedge.i.us.us, !prof !52

.critedge.i.us.us:                                ; preds = %.lr.ph.i82.us.us
  %i.id = add i16 %.sroa.033.059.i.us.us, -1
  %i.ie = and i16 %i.id, %.sroa.033.059.i.us.us   ; 2 uses
  %.not.i83.us.us = icmp eq i16 %i.ie, 0
  br i1 %.not.i83.us.us, label %.critedge18.i.us, label %.lr.ph.i82.us.us

.noexc84.split:                                   ; preds = %.noexc84, %bb.ay
  %.pn.i = phi i64 [ %i.je, %bb.ay ], [ %i.hd, %.noexc84 ]
  %.sroa.15.0.i = phi i64 [ %i.jd, %bb.ay ], [ 0, %.noexc84 ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.hb            ; 5 uses
  %i.if = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.if, i32 0, i32 3, i32 1), !noalias !42
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sroa.7.0.i
  %i.ih = load <16 x i8>, ptr %i.ig, align 1, !tbaa !16, !noalias !42 ; 2 uses
  %i.ii = icmp eq <16 x i8> %i.hi, %i.ih
  %i.ij = bitcast <16 x i1> %i.ii to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.ij, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.noexc84.split, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.iv, %.critedge.i ], [ %i.ij, %.noexc84.split ] ; 3 uses
  %i.ik = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.il = zext nneg i16 %i.ik to i64
  %i.im = add i64 %.sroa.7.0.i, %i.il
  %i.in = and i64 %i.im, %i.hb
  %i.io = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.in ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !7, !noalias !42
  %i.ir = icmp eq i64 %i.iq, %.fr172
  br i1 %i.ir, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, label %.critedge.i, !prof !52

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i82
  %i.is = load ptr, ptr %i.io, align 8, !tbaa !20, !noalias !42
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.is, ptr %i.hj, i64 %.fr172), !noalias !42
  %i.it = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.it, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i82
  %i.iu = add i16 %.sroa.033.059.i, -1
  %i.iv = and i16 %i.iu, %.sroa.033.059.i         ; 2 uses
  %.not.i83 = icmp eq i16 %i.iv, 0
  br i1 %.not.i83, label %.critedge18.i, label %.lr.ph.i82

.critedge18.i:                                    ; preds = %.critedge.i, %.noexc84.split
  %i.iw = icmp eq <16 x i8> %i.ih, splat (i8 -128)
  %i.ix = bitcast <16 x i1> %i.iw to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.ix, 0
  br i1 %.not51.i, label %bb.ay, label %.thread.i, !prof !41

.thread.i:                                        ; preds = %.critedge18.i, %.critedge18.i.us
  %.us-phi136 = phi i16 [ %i.hs, %.critedge18.i.us ], [ %i.ix, %.critedge18.i ]
  %.us-phi137 = phi i64 [ %.sroa.15.0.i.us, %.critedge18.i.us ], [ %.sroa.15.0.i, %.critedge18.i ]
  %.us-phi138 = phi i64 [ %.sroa.7.0.i.us, %.critedge18.i.us ], [ %.sroa.7.0.i, %.critedge18.i ]
  %i.iy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.us-phi136, i1 true)
  %i.iz = zext nneg i16 %i.iy to i64
  %i.ja = add i64 %.us-phi138, %i.iz
  %i.jb = and i64 %i.ja, %i.hb
  %i.jc = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.gy, i64 %i.jb, i64 %.us-phi137)
          to label %bb.az unwind label %bb.bc     ; 2 uses

bb.ay:                                            ; preds = %.critedge18.i
  %i.jd = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.je = add i64 %i.jd, %.sroa.7.0.i
  br label %.noexc84.split

bb.az:                                            ; preds = %.thread.i
  %18 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !16, !noalias !42
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 %i.jc
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.bt, align 8, !tbaa !16, !noalias !42
  %i.jf = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.jc ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %19) ]
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 3 uses
  store ptr %i.jg, ptr %i.jf, align 8, !tbaa !15
  %i.jh = load ptr, ptr %15, align 8, !tbaa !20, !noalias !53 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.bn
  br i1 %i.ji, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.jj = load i64, ptr %i.bo, align 8, !tbaa !7, !noalias !53 ; 2 uses
  %i.jk = icmp ult i64 %i.jj, 16
  call void @llvm.assume(i1 %i.jk)
  %i.jl = add nuw nsw i64 %i.jj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jg, ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i64 %i.jl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.az
  store ptr %i.jh, ptr %i.jf, align 8, !tbaa !20
  %i.jm = load i64, ptr %i.bn, align 8, !tbaa !16, !noalias !53
  store i64 %i.jm, ptr %i.jg, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ba
  %i.jn = load i64, ptr %i.bo, align 8, !tbaa !7, !noalias !53
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store i64 %i.jn, ptr %i.jo, align 8, !tbaa !7
  store ptr %i.bn, ptr %15, align 8, !tbaa !20, !noalias !53
  store i64 0, ptr %i.bo, align 8, !tbaa !7, !noalias !53
  store i8 0, ptr %i.bn, align 8, !tbaa !16, !noalias !53
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jf, i64 32 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 48 ; 3 uses
  store ptr %i.jq, ptr %i.jp, align 8, !tbaa !15
  %i.jr = load ptr, ptr %i.bp, align 8, !tbaa !20, !noalias !53 ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.bq
  br i1 %i.js, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jt = load i64, ptr %i.br, align 8, !tbaa !7, !noalias !53 ; 2 uses
  %i.ju = icmp ult i64 %i.jt, 16
  call void @llvm.assume(i1 %i.ju)
  %i.jv = add nuw nsw i64 %i.jt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jq, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.jv, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.jr, ptr %i.jp, align 8, !tbaa !20
  %i.jw = load i64, ptr %i.bq, align 8, !tbaa !16, !noalias !53
  store i64 %i.jw, ptr %i.jq, align 8, !tbaa !16
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit.thread

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit.thread: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jx = load i64, ptr %i.br, align 8, !tbaa !7, !noalias !53
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  store i64 %i.jx, ptr %i.jy, align 8, !tbaa !7
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !20, !noalias !53
  store i64 0, ptr %i.br, align 8, !tbaa !7, !noalias !53
  store i8 0, ptr %i.bq, align 8, !tbaa !16, !noalias !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i82.us.us
  %.pre197 = load ptr, ptr %i.bp, align 8, !tbaa !20 ; 2 uses
  %i.jz = icmp eq ptr %.pre197, %i.bq
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit
  %i.ka = load i64, ptr %i.bq, align 8, !tbaa !16
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %.pre197, i64 noundef %i.kb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE6insertEOSD_IS9_S9_E.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i60
  %i.kc = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.bn
  br i1 %i.kd, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61
  %i.ke = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #25
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.kg = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.bl
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.ki = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.kk = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.bj
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.km = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.kn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %exitcond.not = icmp eq i64 %i.db, %i.ce
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !64

.loopexit102.split:                               ; preds = %.noexc.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

.loopexit.split-lp:                               ; preds = %.split.us142
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

.loopexit103:                                     ; preds = %.noexc.i.i.i55
  %lpad.loopexit105 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

.loopexit.split-lp104:                            ; preds = %.split145.us
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.bc:                                            ; preds = %bb.aw, %bb.av, %.thread.i
  %i.ko = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %15) #23
  %i.kp = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.bl
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.bc
  %i.kr = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.bc, %.loopexit103, %.loopexit.split-lp104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %.pn26 = phi { ptr, i32 } [ %i.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %lpad.loopexit.split-lp106, %.loopexit.split-lp104 ], [ %lpad.loopexit105, %.loopexit103 ], [ %i.ko, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.kt = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.bj
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.kv = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %.loopexit.split-lp, %.loopexit102.split.us, %.loopexit102.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %lpad.loopexit.us, %.loopexit102.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit102.split ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.bf

._crit_edge:                                      ; preds = %.loopexit, %bb.n
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEEC2EOSH_(ptr noundef nonnull align 8 dereferenceable(32) %i.kx, ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  store i64 1, ptr %0, align 8, !tbaa !13
  br label %bb.bd

bb.bd:                                            ; preds = %.thread100, %._crit_edge
  %i.ky = load ptr, ptr %12, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kz = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !65
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.ky to i64
  %i.ld = sub i64 %i.lb, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.ld) #25
  br label %bb.bh

bb.bf:                                            ; preds = %bb.z, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %i.cz, %bb.z ], [ %.pn26.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pn, %bb.ab ] ; 2 uses
  %i.le = load ptr, ptr %12, align 8, !tbaa !38   ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.le, null
  br i1 %.not.i.i.i73, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit74, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !65
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = ptrtoint ptr %i.le to i64
  %i.lj = sub i64 %i.lh, %i.li
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.lj) #25
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit74

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit74: ; preds = %bb.bg, %bb.bf, %bb.y
  %.pn26.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cy, %bb.y ], [ %.pn26.pn.pn.pn, %bb.bf ], [ %.pn26.pn.pn.pn, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  br label %.body

bb.bh:                                            ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.pre198 = load i64, ptr %11, align 8, !tbaa !13 ; 2 uses
  %i.lk = trunc i64 %.pre198 to i1
  br i1 %i.lk, label %_ZN4absl12lts_202505126StatusD2Ev.exit75, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ll = inttoptr i64 %.pre198 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ll)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit75 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lm = landingpad { ptr, i32 }
          catch ptr null
  %i.ln = extractvalue { ptr, i32 } %i.lm, 0
  call void @__clang_call_terminate(ptr %i.ln) #26
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit75:         ; preds = %.thread244, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.lo = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.lp = icmp eq ptr %i.lo, %i.j
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit75
  %i.lq = load i64, ptr %i.j, align 8, !tbaa !16
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.lr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bk

.body:                                            ; preds = %.loopexit108, %.loopexit.split-lp109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit74
  %.pn26.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn.pn.pn, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit74 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ], [ %lpad.loopexit110, %.loopexit108 ], [ %lpad.loopexit.split-lp111, %.loopexit.split-lp109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ls = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.j
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %.body
  %i.lu = load i64, ptr %i.j, align 8, !tbaa !16
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  resume { ptr, i32 } %.pn26.pn.pn.pn.pn.pn.pn

bb.bk:                                            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.lw = load i64, ptr %9, align 8, !tbaa !50
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %9, ptr %2, align 8, !tbaa !66
  invoke void @_ZN4absl12lts_2025051218container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 64, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_EENS3_10StringHashENS3_8StringEqESaISt4pairIKSB_SB_EEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSM_SN_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.bm

.noexc.i:                                         ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ly = load i64, ptr %9, align 8, !tbaa !50
end_hunk_1
