inline.NumInlined: 1045
inline.NumDeleted: 503
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<google::protobuf::io::Printer::Sub, std::allocator<google::protobuf::io::Printer::Sub>>::_Vector_impl" }
%"struct.std::_Vector_base<google::protobuf::io::Printer::Sub, std::allocator<google::protobuf::io::Printer::Sub>>::_Vector_impl" = type { %"struct.std::_Vector_base<google::protobuf::io::Printer::Sub, std::allocator<google::protobuf::io::Printer::Sub>>::_Vector_impl_data" }
%"struct.std::_Vector_base<google::protobuf::io::Printer::Sub, std::allocator<google::protobuf::io::Printer::Sub>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call" = type <{ %"class.std::basic_string_view", %"class.std::basic_string_view", %"class.std::optional.11", %"class.std::optional.19", %"class.std::vector.27", i8, [7 x i8] }>
%"class.std::basic_string_view" = type { i64, ptr }
%"class.std::optional.11" = type { %"struct.std::_Optional_base.12" }
%"struct.std::_Optional_base.12" = type { %"struct.std::_Optional_payload.14" }
%"struct.std::_Optional_payload.14" = type { %"struct.std::_Optional_payload_base.base.16", [3 x i8] }
%"struct.std::_Optional_payload_base.base.16" = type <{ %"union.std::_Optional_payload_base<int>::_Storage", i8 }>
%"union.std::_Optional_payload_base<int>::_Storage" = type { i32 }
%"class.std::optional.19" = type { %"struct.std::_Optional_base.20" }
%"struct.std::_Optional_base.20" = type { %"struct.std::_Optional_payload.22" }
%"struct.std::_Optional_payload.22" = type { %"struct.std::_Optional_payload_base.base.24", [7 x i8] }
%"struct.std::_Optional_payload_base.base.24" = type <{ %"union.std::_Optional_payload_base<std::basic_string_view<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::basic_string_view<char>>::_Storage" = type { %"class.std::basic_string_view" }
%"class.std::vector.27" = type { %"struct.std::_Vector_base.28" }
%"struct.std::_Vector_base.28" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.absl::lts_20250512::substitute_internal::Arg" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.absl::lts_20250512::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.google::protobuf::io::Printer::Sub" = type { %"class.std::__cxx11::basic_string", %"struct.google::protobuf::io::Printer::ValueImpl", %"class.std::optional.41" }
%"struct.google::protobuf::io::Printer::ValueImpl" = type <{ %"class.std::variant", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"class.std::variant" = type { %"struct.std::__detail::__variant::_Variant_base.base", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base" = type { %"struct.std::__detail::__variant::_Move_assign_base.base" }
%"struct.std::__detail::__variant::_Move_assign_base.base" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base" }
%"struct.std::__detail::__variant::_Copy_assign_base.base" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base" }
%"struct.std::__detail::__variant::_Move_ctor_base.base" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base" = type { %"struct.std::__detail::__variant::_Variant_storage.base" }
%"struct.std::__detail::__variant::_Variant_storage.base" = type { %"union.std::__detail::__variant::_Variadic_union", i8 }
%"union.std::__detail::__variant::_Variadic_union" = type { %"struct.std::__detail::__variant::_Uninitialized" }
%"struct.std::__detail::__variant::_Uninitialized" = type { %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [32 x i8] }
%"class.std::optional.41" = type { %"struct.std::_Optional_base.42" }
%"struct.std::_Optional_base.42" = type { %"struct.std::_Optional_payload.44" }
%"struct.std::_Optional_payload.44" = type { %"struct.std::_Optional_payload.base.61", [7 x i8] }
%"struct.std::_Optional_payload.base.61" = type { %"struct.std::_Optional_payload_base.base.60" }
%"struct.std::_Optional_payload_base.base.60" = type <{ %"union.std::_Optional_payload_base<google::protobuf::io::Printer::AnnotationRecord>::_Storage", i8 }>
%"union.std::_Optional_payload_base<google::protobuf::io::Printer::AnnotationRecord>::_Storage" = type { %"struct.google::protobuf::io::Printer::AnnotationRecord" }
%"struct.google::protobuf::io::Printer::AnnotationRecord" = type { %"class.std::vector.47", %"class.std::__cxx11::basic_string", %"class.std::optional.52" }
%"class.std::vector.47" = type { %"struct.std::_Vector_base.48" }
%"struct.std::_Vector_base.48" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::optional.52" = type { %"struct.std::_Optional_base.53" }
%"struct.std::_Optional_base.53" = type { %"struct.std::_Optional_payload.55" }
%"struct.std::_Optional_payload.55" = type { %"struct.std::_Optional_payload_base.base.57", [3 x i8] }
%"struct.std::_Optional_payload_base.base.57" = type <{ %"union.std::_Optional_payload_base<google::protobuf::io::AnnotationCollector::Semantic>::_Storage", i8 }>
%"union.std::_Optional_payload_base<google::protobuf::io::AnnotationCollector::Semantic>::_Storage" = type { i32 }
%"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Getters" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }

$__clang_call_terminate = comdat any

$_ZN6google8protobuf2io7Printer3SubD2Ev = comdat any

$_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EED2Ev = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findISt17basic_string_viewIcS7_EEENSE_8iteratorERKT_ = comdat any

$_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE = comdat any

$_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_ = comdat any

$_ZN6google8protobuf2io7Printer3SubC2EOS3_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN6google8protobuf8compiler3cpp20MakeDefaultFieldNameB5cxx11EPKNS0_15FieldDescriptorE = comdat any

@.str = private unnamed_addr constant [13 x i8] c"_extensions_\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"_impl_._extensions_\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"serialize\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"OnSerialize\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"&this_\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"deserialize\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"OnDeserialize\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"_this\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"reflection\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"OnGetMetadata\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"bytesize\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"OnByteSize\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"mergefrom\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"OnMergeFrom\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"&from\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"unknown_fields\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"OnUnknownFields\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"mutable_unknown_fields\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"OnMutableUnknownFields\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"extension_has\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"OnHasExtension\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"extension_get\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"OnGetExtension\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"extension_mutable\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"OnMutableExtension\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"extension_set\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"OnSetExtension\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"extension_release\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"OnReleaseExtension\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"repeated_extension_get\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"repeated_extension_mutable\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"repeated_extension_set\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"repeated_extension_add\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"OnAddExtension\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"repeated_extension_add_mutable\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"OnAddMutableExtension\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"extension_repeated_size\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"OnExtensionSize\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"repeated_extension_list\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"OnListExtension\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"repeated_extension_list_mutable\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"OnMutableListExtension\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"extension_clear\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"OnClearExtension\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"$0_AccessedNoStrip = true;\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"OnGet\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"OnSet\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"has\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"OnHas\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"mutable\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"OnMutable\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"OnRelease\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"OnClear\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"OnSize\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"OnList\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"mutable_list\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"OnMutableList\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"OnAdd\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"add_mutable\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"OnAddMutable\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"$0.$1\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"<$0>\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.70 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.71 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"if (::\00", align 1
@.str.74 = private unnamed_addr constant [39 x i8] c"::internal::cpp::IsTrackingEnabled()) \00", align 1
@_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE = external constant ptr, align 8
@.str.76 = private unnamed_addr constant [17 x i8] c"Impl_::_tracker_\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"proto2\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"google::protobuf\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"annotate_\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"id.number()\00", align 1
@.str.85 = private unnamed_addr constant [52 x i8] c"$0::GetPtr(id.number(), $1, id.default_value_ref())\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"_proto_TypeTraits\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"$0::GetPtr(id.number(), $1, index)\00", align 1
@.str.88 = private unnamed_addr constant [63 x i8] c"$0::GetPtr(id.number(), $1, $1.ExtensionSize(id.number()) - 1)\00", align 1
@.str.89 = private unnamed_addr constant [36 x i8] c"$0::GetRepeatedPtr(id.number(), $1)\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"nullptr\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"_internal_\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"&$0.Get(index)\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"&$0.Get($0.size() - 1)\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE = external local_unnamed_addr constant [19 x i32], align 16
@.str.98 = private unnamed_addr constant [22 x i8] c"$0.UnsafeGetPointer()\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"&$0\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"$0_case() == k$1\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c".get()\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"$0 ? $1 : nullptr\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"$0 ? $1 : &$2\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"Impl_::\00", align 1
@.str.105 = private unnamed_addr constant [47 x i8] c"_i_give_permission_to_break_this_code_default_\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.107 = private unnamed_addr constant [51 x i8] c"$0.IsDefault() ? &$1.get() : $0.UnsafeGetPointer()\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(217) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::optional", align 8     ; 6 uses
  %4 = alloca [21 x %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call"], align 8 ; 75 uses
  %5 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 17 uses
  %6 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 17 uses
  %7 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 15 uses
  %8 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 15 uses
  %9 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 10 uses
  %10 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 15 uses
  %11 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 51
  %i.d = load i8, ptr %i.c, align 1, !tbaa !26, !range !27, !noundef !28
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.e, ptr @.str, ptr @.str.1   ; 13 uses
  %i.g = select i1 %i.e, i64 12, i64 19           ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  store i8 0, ptr %i.h, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i64 9, ptr %5, align 8, !tbaa !31
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 11, ptr %i.i, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @.str.3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i8 0, ptr %i.j, align 4, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i8 0, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  store i64 6, ptr %i.k, align 8, !noalias !36
  store ptr @.str.4, ptr %i.l, align 8, !noalias !36
  store i8 1, ptr %i.m, align 8, !noalias !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %4, ptr noundef nonnull align 8 dereferenceable(89) %5, i64 64, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !noalias !36
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i8 0, ptr %i.s, align 8, !tbaa !39, !alias.scope !36
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i64 11, ptr %6, align 8, !tbaa !31
  %.sroa.22.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.5, ptr %.sroa.22.0..sroa_idx.i36, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 13, ptr %i.u, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @.str.6, ptr %.sroa.2.0..sroa_idx.i37, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 0, ptr %i.v, align 4, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i8 0, ptr %i.aa, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  store i64 5, ptr %i.w, align 8, !noalias !54
  store ptr @.str.7, ptr %i.x, align 8, !noalias !54
  store i8 1, ptr %i.y, align 8, !noalias !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.t, ptr noundef nonnull align 8 dereferenceable(89) %6, i64 64, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false), !noalias !54
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i8 0, ptr %i.ae, align 8, !tbaa !39, !alias.scope !54
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i64 10, ptr %7, align 8, !tbaa !31
  %.sroa.22.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.8, ptr %.sroa.22.0..sroa_idx.i38, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 13, ptr %i.ag, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr @.str.9, ptr %.sroa.2.0..sroa_idx.i39, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i8 0, ptr %i.ah, align 4, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 4, ptr %i.ai, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr @.str.83, ptr %i.aj, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i8 0, ptr %i.am, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  store i8 0, ptr %i.ak, align 8, !noalias !59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.af, ptr noundef nonnull align 8 dereferenceable(89) %7, i64 64, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false), !noalias !59
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 280
  store i8 0, ptr %i.ao, align 8, !tbaa !39, !alias.scope !59
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 288
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store i64 8, ptr %8, align 8, !tbaa !31
  %.sroa.22.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.10, ptr %.sroa.22.0..sroa_idx.i40, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 10, ptr %i.aq, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr @.str.11, ptr %.sroa.2.0..sroa_idx.i41, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i8 0, ptr %i.ar, align 4, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i8 0, ptr %i.aw, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  store i64 6, ptr %i.as, align 8, !noalias !62
  store ptr @.str.4, ptr %i.at, align 8, !noalias !62
  store i8 1, ptr %i.au, align 8, !noalias !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %i.ap, ptr noundef nonnull align 8 dereferenceable(89) %8, i64 64, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !noalias !62
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 376
  store i8 0, ptr %i.ay, align 8, !tbaa !39, !alias.scope !62
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store i64 9, ptr %10, align 8, !tbaa !31
  %.sroa.22.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.12, ptr %.sroa.22.0..sroa_idx.i42, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 11, ptr %i.ba, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @.str.13, ptr %.sroa.2.0..sroa_idx.i43, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i8 0, ptr %i.bb, align 4, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 88
  store i8 0, ptr %i.bg, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  store i64 5, ptr %i.bc, align 8, !noalias !65
  store ptr @.str.7, ptr %i.bd, align 8, !noalias !65
  store i8 1, ptr %i.be, align 8, !noalias !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %9, ptr noundef nonnull align 8 dereferenceable(89) %10, i64 64, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false), !noalias !65
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i8 0, ptr %i.bk, align 8, !tbaa !39, !alias.scope !65
  invoke fastcc void @_ZNO6google8protobuf8compiler3cpp12_GLOBAL__N_14Call3ArgIJEEES4_St17basic_string_viewIcSt11char_traitsIcEEDpRKT_(ptr dead_on_unwind noalias writable align 8 %i.az, ptr noundef nonnull align 8 dereferenceable(89) %9, i64 5, ptr nonnull @.str.14)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 480
  store i64 14, ptr %i.bl, align 8, !tbaa !31
  %.sroa.22.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %4, i64 488
  store ptr @.str.15, ptr %.sroa.22.0..sroa_idx.i44, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 496
  store i64 15, ptr %i.bm, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %4, i64 504
  store ptr @.str.16, ptr %.sroa.2.0..sroa_idx.i45, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 516
  store i8 0, ptr %i.bn, align 4, !tbaa !34
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 520
  store i64 4, ptr %i.bo, align 8, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 528
  store ptr @.str.83, ptr %i.bp, align 8, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 536
  store i8 1, ptr %i.bq, align 8, !tbaa !68
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.br, i8 0, i64 25, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 576
  store i64 22, ptr %i.bs, align 8, !tbaa !31
  %.sroa.22.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %4, i64 584
  store ptr @.str.17, ptr %.sroa.22.0..sroa_idx.i46, align 8, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 592
  store i64 22, ptr %i.bt, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %4, i64 600
  store ptr @.str.18, ptr %.sroa.2.0..sroa_idx.i47, align 8, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 612
  store i8 0, ptr %i.bu, align 4, !tbaa !34
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 616
  store i64 4, ptr %i.bv, align 8, !tbaa !57
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 624
  store ptr @.str.83, ptr %i.bw, align 8, !tbaa !58
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 632
  store i8 1, ptr %i.bx, align 8, !tbaa !68
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 640
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsE:bb.a

.lr.ph.i.i.i.i111:                                ; preds = %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit109, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i114
  %.05.i.i.i.i112 = phi ptr [ %i.ek, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i114 ], [ %i.ed, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit109 ] ; 3 uses
  %i.ef = load ptr, ptr %.05.i.i.i.i112, align 8, !tbaa !74 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i112, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i113: ; preds = %.lr.ph.i.i.i.i111
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !26
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i114

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i114: ; preds = %.lr.ph.i.i.i.i111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i113
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i112, i64 32 ; 2 uses
  %.not.i.i.i.i115 = icmp eq ptr %i.ek, %i.ee
  br i1 %.not.i.i.i.i115, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i118, label %.lr.ph.i.i.i.i111, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i118: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i114, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit109
  %.not.i.i1.i.i119 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i1.i.i119, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit121, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i118
  %i.el = load ptr, ptr %i.ad, align 8, !tbaa !79
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ed to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.eo) #21
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit121

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit121: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i118, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ep = load ptr, ptr %i.n, align 8, !tbaa !72  ; 5 uses
  %i.eq = load ptr, ptr %i.q, align 8, !tbaa !73  ; 2 uses
  %.not4.i.i.i.i122 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not4.i.i.i.i122, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i130, label %.lr.ph.i.i.i.i123

.lr.ph.i.i.i.i123:                                ; preds = %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit121, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i126
  %.05.i.i.i.i124 = phi ptr [ %i.ew, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i126 ], [ %i.ep, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit121 ] ; 3 uses
  %i.er = load ptr, ptr %.05.i.i.i.i124, align 8, !tbaa !74 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i124, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i125: ; preds = %.lr.ph.i.i.i.i123
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !26
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i126

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i126: ; preds = %.lr.ph.i.i.i.i123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i125
  %i.ew = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i124, i64 32 ; 2 uses
  %.not.i.i.i.i127 = icmp eq ptr %i.ew, %i.eq
  br i1 %.not.i.i.i.i127, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i130, label %.lr.ph.i.i.i.i123, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i130: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i126, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit121
  %.not.i.i1.i.i131 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i1.i.i131, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit133, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i130
  %i.ex = load ptr, ptr %i.r, align 8, !tbaa !79
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ep to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.fa) #21
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit133

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit133: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i130, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.fb = load i8, ptr %i.h, align 8, !tbaa !29, !range !27, !noundef !28
  %i.fc = trunc nuw i8 %i.fb to i1
  store i8 0, ptr %i.h, align 8, !tbaa !29
  br i1 %i.fc, label %bb.v, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.v:                                             ; preds = %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit133
  %i.fd = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !26
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.v, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  ret void

bb.w:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.j, %bb.k, %bb.g, %bb.h, %bb.i, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  %.09 = phi ptr [ %i.cl, %bb.n ], [ %i.ck, %bb.m ], [ %i.cj, %bb.l ], [ %i.ci, %bb.k ], [ %i.ch, %bb.j ], [ %i.cg, %bb.i ], [ %i.cf, %bb.h ], [ %i.ce, %bb.g ], [ %i.cd, %bb.f ], [ %i.cc, %bb.e ], [ %i.cb, %bb.d ], [ %i.ca, %bb.c ], [ %i.bz, %bb.b ], [ %i.az, %bb.a ]
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.o
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 1920
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fk) #20
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 1824
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fl) #20
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 1728
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fm) #20
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 1632
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fn) #20
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 1536
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fo) #20
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 1440
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fp) #20
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 1344
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fq) #20
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 1248
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fr) #20
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 1152
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fs) #20
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 1056
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.ft) #20
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 960
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fu) #20
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 864
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fv) #20
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 768
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fw) #20
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 672
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fx) #20
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 576
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fy) #20
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 480
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.fz) #20
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 384
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.ga) #20
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 288
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.gb) #20
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 192
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.gc) #20
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 96
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.gd) #20
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %4) #20
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1 = phi ptr [ %i.cm, %bb.x ], [ %.09, %bb.w ]
  %.pn = phi { ptr, i32 } [ %i.fj, %bb.x ], [ %i.fi, %bb.w ]
  %.not = phi i1 [ true, %bb.x ], [ false, %bb.w ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %9) #20
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.y, %.preheader
  %i.ge = phi ptr [ %i.gf, %.preheader ], [ %.1, %bb.y ]
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -96 ; 3 uses
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.gf) #20
  %i.gg = icmp eq ptr %i.gf, %4
  br i1 %i.gg, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.gh = load i8, ptr %i.h, align 8, !tbaa !29, !range !27, !noundef !28
  %i.gi = trunc nuw i8 %i.gh to i1
  store i8 0, ptr %i.h, align 8, !tbaa !29
  br i1 %i.gi, label %bb.z, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit136

bb.z:                                             ; preds = %.loopexit
  %i.gj = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i134: ; preds = %bb.z
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !26
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gn) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit136

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit136: ; preds = %bb.z, %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i134
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_120GenerateTrackerCallsERKNS2_7OptionsEPKNS0_10DescriptorESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN4absl12lts_202505124SpanIKNS3_4CallEEE(ptr dead_on_unwind noalias writable align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(217) %1, ptr noundef readonly captures(none) %2, ptr noundef nonnull %3, ptr %4, i64 %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %8 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 26 uses
  %10 = alloca %"class.absl::lts_20250512::substitute_internal::Arg", align 8 ; 6 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %12 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 10 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 10 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %18 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %19 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %20 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.google::protobuf::io::Printer::Sub", align 8 ; 28 uses
  %22 = alloca %"class.google::protobuf::io::Printer::Sub", align 8 ; 22 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %24 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %25 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load i8, ptr %i.b, align 8, !tbaa !80, !range !27, !noundef !28
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN6google8protobuf8compiler3cpp10HasTrackerEPKNS0_10DescriptorERKNS2_7OptionsE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = load i32, ptr %i.i, align 8, !tbaa !26
  %.not.i = icmp eq i32 %i.j, 3
  br i1 %.not.i, label %_ZN6google8protobuf8compiler3cpp10HasTrackerEPKNS0_10DescriptorERKNS2_7OptionsE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 51
  %i.n = load i8, ptr %i.m, align 1, !tbaa !26, !range !27, !noundef !28
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = xor i1 %i.o, true
  br label %_ZN6google8protobuf8compiler3cpp10HasTrackerEPKNS0_10DescriptorERKNS2_7OptionsE.exit

_ZN6google8protobuf8compiler3cpp10HasTrackerEPKNS0_10DescriptorERKNS2_7OptionsE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.q = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.p, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.idx = mul nuw nsw i64 %5, 96
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %.idx
  %.not163 = icmp eq i64 %5, 0
  br i1 %.not163, label %._crit_edge167, label %.lr.ph166

.lr.ph166:                                        ; preds = %_ZN6google8protobuf8compiler3cpp10HasTrackerEPKNS0_10DescriptorERKNS2_7OptionsE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.2.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 211
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 210
  %.sroa.2.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %.sroa.2.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %22, i64 72 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %22, i64 88 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %22, i64 80 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %22, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %22, i64 176
  %i.bc = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %21, i64 56
  %i.bj = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 11 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %21, i64 72 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %21, i64 88 ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %21, i64 80 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %21, i64 104 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %21, i64 176 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %21, i64 112 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.bs = getelementptr inbounds nuw i8, ptr %21, i64 136 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %21, i64 152 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %21, i64 144 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %21, i64 168
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %26, i64 17
  %i.bz = getelementptr inbounds nuw i8, ptr %22, i64 89
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.0164 = phi ptr [ %4, %.lr.ph166 ], [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %i.t, ptr %9, align 8, !tbaa !108
  store i64 0, ptr %i.u, align 8, !tbaa !109
  store i8 0, ptr %i.t, align 8, !tbaa !26
  br i1 %i.q, label %bb.e, label %bb.ab

bb.e:                                             ; preds = %bb.d
  %i.ca = getelementptr inbounds nuw i8, ptr %.0164, i64 88
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !39, !range !27, !noundef !28
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cd = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE4findISt17basic_string_viewIcS7_EEENSE_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %.0164)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ce = extractvalue { ptr, ptr } %i.cd, 0
  %.not126 = icmp eq ptr %i.ce, null
  br i1 %.not126, label %bb.h, label %bb.ab

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %.0164, i64 16
  %.sroa.011.0.copyload = load i64, ptr %i.cf, align 8, !tbaa !31
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0164, i64 24
  %.sroa.212.0.copyload = load ptr, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store i64 16, ptr %8, align 16
  store ptr @.str.76, ptr %i.v, align 8
  store i64 %.sroa.011.0.copyload, ptr %i.w, align 16
  store ptr %.sroa.212.0.copyload, ptr %i.x, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %9, i64 5, ptr nonnull @.str.67, ptr noundef nonnull %8, i64 noundef 2)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.cg = getelementptr inbounds nuw i8, ptr %.0164, i64 36
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !34, !range !27, !noundef !28
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.0164, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !3
  %i.cl = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.ck, ptr noundef nonnull %i.y)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.z                     ; 2 uses
  store i64 %i.cn, ptr %10, align 8, !tbaa !57
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i64 %i.cn, ptr %7, align 16
  store ptr %i.y, ptr %i.ab, align 8
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull %9, i64 4, ptr nonnull @.str.68, ptr noundef nonnull %7, i64 noundef 1)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.p

bb.m:                                             ; preds = %bb.ag, %bb.ad, %bb.f
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.n:                                             ; preds = %bb.h
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.o:                                             ; preds = %bb.k, %bb.j
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_120GenerateTrackerCallsERKNS2_7OptionsEPKNS0_10DescriptorESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN4absl12lts_202505124SpanIKNS3_4CallEEE:bb.a
  %i.hs = load ptr, ptr %i.bl, align 8, !tbaa !74 ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.bm
  br i1 %i.ht, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102

bb.bg:                                            ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i101
  %i.hu = load i64, ptr %i.bn, align 8, !tbaa !109 ; 3 uses
  %i.hv = icmp ult i64 %i.hu, 16
  call void @llvm.assume(i1 %i.hv)
  %i.hw = add nuw nsw i64 %i.hu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hr, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.hw, i1 false)
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102: ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i.i101
  store ptr %i.hs, ptr %i.hq, align 8, !tbaa !74
  %i.hx = load i64, ptr %i.bm, align 8, !tbaa !26
  store i64 %i.hx, ptr %i.hr, align 8, !tbaa !26
  %.pre171 = load i64, ptr %i.bn, align 8, !tbaa !109
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit.i103

_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit.i103: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102, %bb.bg
  %i.hy = phi i64 [ %.pre171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102 ], [ %i.hu, %bb.bg ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.go, i64 80
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !109
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !74
  store i64 0, ptr %i.bn, align 8, !tbaa !109
  store i8 0, ptr %i.bm, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %i.go, i64 104
  %i.ib = load i8, ptr %i.bo, align 8, !tbaa !120, !range !27, !noundef !28
  store i8 %i.ib, ptr %i.ia, align 8, !tbaa !120
  %i.ic = getelementptr inbounds nuw i8, ptr %i.go, i64 176 ; 2 uses
  store i8 0, ptr %i.ic, align 8, !tbaa !128
  %i.id = load i8, ptr %i.bp, align 8, !tbaa !128, !range !27, !noundef !28
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.bh, label %_ZN6google8protobuf2io7Printer3SubC2EOS3_.exit108

bb.bh:                                            ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit.i103
  %i.if = getelementptr inbounds nuw i8, ptr %i.go, i64 112
  %i.ig = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !142
  store <2 x ptr> %i.ig, ptr %i.if, align 8, !tbaa !142
  %i.ih = getelementptr inbounds nuw i8, ptr %i.go, i64 128
  %i.ii = load ptr, ptr %i.br, align 8, !tbaa !143
  store ptr %i.ii, ptr %i.ih, align 8, !tbaa !143
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bq, i8 0, i64 24, i1 false)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.go, i64 136 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.go, i64 152 ; 3 uses
  store ptr %i.ik, ptr %i.ij, align 8, !tbaa !108
  %i.il = load ptr, ptr %i.bs, align 8, !tbaa !74 ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.bt
  br i1 %i.im, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i104

bb.bi:                                            ; preds = %bb.bh
  %i.in = load i64, ptr %i.bu, align 8, !tbaa !109 ; 3 uses
  %i.io = icmp ult i64 %i.in, 16
  call void @llvm.assume(i1 %i.io)
  %i.ip = add nuw nsw i64 %i.in, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ik, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.ip, i1 false)
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i104: ; preds = %bb.bh
  store ptr %i.il, ptr %i.ij, align 8, !tbaa !74
  %i.iq = load i64, ptr %i.bt, align 8, !tbaa !26
  store i64 %i.iq, ptr %i.ik, align 8, !tbaa !26
  %.pre172 = load i64, ptr %i.bu, align 8, !tbaa !109
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i105

_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i105: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i104, %bb.bi
  %i.ir = phi i64 [ %.pre172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i104 ], [ %i.in, %bb.bi ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.go, i64 144
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !109
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !74
  store i64 0, ptr %i.bu, align 8, !tbaa !109
  store i8 0, ptr %i.bt, align 8, !tbaa !26
  %i.it = getelementptr inbounds nuw i8, ptr %i.go, i64 168
  %i.iu = load i64, ptr %i.bv, align 8
  store i64 %i.iu, ptr %i.it, align 8
  store i8 1, ptr %i.ic, align 8, !tbaa !128
  br label %_ZN6google8protobuf2io7Printer3SubC2EOS3_.exit108

_ZN6google8protobuf2io7Printer3SubC2EOS3_.exit108: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit.i103, %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i.i105
  %i.iv = load ptr, ptr %i.bw, align 8, !tbaa !133
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 184
  store ptr %i.iw, ptr %i.bw, align 8, !tbaa !133
  br label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE9push_backEOS4_.exit

bb.bj:                                            ; preds = %_ZN6google8protobuf2io7Printer3SubC2EOS3_.exit
  invoke void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.go, ptr noundef nonnull align 8 dereferenceable(184) %21)
          to label %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE9push_backEOS4_.exit unwind label %bb.bl

_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZN6google8protobuf2io7Printer3SubC2EOS3_.exit108, %bb.bj
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %21) #20
  %i.ix = load ptr, ptr %26, align 8, !tbaa !74   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.bc
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE9push_backEOS4_.exit
  %i.iz = load i64, ptr %i.bc, align 8, !tbaa !26
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EE9push_backEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %22) #20
  %i.jb = load ptr, ptr %23, align 8, !tbaa !74   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.ao
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.jd = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.jf = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.t
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.jh = load i64, ptr %i.t, align 8, !tbaa !26
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.jj = getelementptr inbounds nuw i8, ptr %.0164, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.jj, %i.s
  br i1 %.not, label %._crit_edge167, label %bb.d

bb.bk:                                            ; preds = %bb.aq
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.bl:                                            ; preds = %bb.bj
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %21) #20
  %i.jm = load ptr, ptr %26, align 8, !tbaa !74   ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.bc
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.bl
  %i.jo = load i64, ptr %i.bc, align 8, !tbaa !26
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %22) #20
  br label %.body

.body:                                            ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.pn52.pn = phi { ptr, i32 } [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.fv, %bb.aw ] ; 2 uses
  %i.jq = load ptr, ptr %23, align 8, !tbaa !74   ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.ao
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %.body
  %i.js = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.bk
  %.pn52.pn.pn = phi { ptr, i32 } [ %i.jk, %bb.bk ], [ %.pn52.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn52.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.bm

bb.bm:                                            ; preds = %bb.u, %bb.y, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.ap, %bb.t, %bb.o, %bb.n, %bb.m
  %.pn52.pn.pn.pn = phi { ptr, i32 } [ %.pn52.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.ex, %bb.ap ], [ %i.co, %bb.m ], [ %i.cp, %bb.n ], [ %i.cv, %bb.t ], [ %i.cq, %bb.o ], [ %lpad.phi, %bb.y ], [ %i.dj, %bb.aa ], [ %i.cw, %bb.u ]
  %i.ju = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.t
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.bm
  %i.jw = load i64, ptr %i.t, align 8, !tbaa !26
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  resume { ptr, i32 } %.pn52.pn.pn.pn

._crit_edge167:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZN6google8protobuf8compiler3cpp10HasTrackerEPKNS0_10DescriptorERKNS2_7OptionsE.exit
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNO6google8protobuf8compiler3cpp12_GLOBAL__N_14Call3ArgIJEEES4_St17basic_string_viewIcSt11char_traitsIcEEDpRKT_(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(89) %1, i64 %2, ptr %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !108, !alias.scope !145
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !109, !alias.scope !145
  store i8 0, ptr %i.b, align 8, !tbaa !26, !alias.scope !145
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %4, i64 %2, ptr %3, ptr noundef null, i64 noundef 0)
          to label %_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !74, !alias.scope !145 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !26, !alias.scope !145
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #21
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !108
  %i.n = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.c, align 8, !tbaa !109  ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.r, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.n, ptr %i.j, align 8, !tbaa !74
  %i.s = load i64, ptr %i.b, align 8, !tbaa !26
  store i64 %i.s, ptr %i.m, align 8, !tbaa !26
  %.pre = load i64, ptr %i.c, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.t = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !109
  store i64 0, ptr %i.c, align 8, !tbaa !109
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.w, ptr %i.i, align 8, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit unwind label %bb.f

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.e
  %.pre8 = load ptr, ptr %4, align 8, !tbaa !74   ; 2 uses
  %i.x = icmp eq ptr %.pre8, %i.b
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.y = load i64, ptr %i.b, align 8, !tbaa !26
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %.pre8, i64 noundef %i.z) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(89) %1, i64 64, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = load <2 x ptr>, ptr %i.a, align 8, !tbaa !110
  store <2 x ptr> %i.ab, ptr %i.aa, align 8, !tbaa !110
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !79
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !39, !range !27, !noundef !28
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !39
  ret void

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.b
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !26
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsEENK3$_0clESt17basic_string_viewIcSt11char_traitsIcEESD_"(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, i64 %.0.val, ptr %.8.val, i64 %1, ptr %2, i64 %3, ptr %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 9 uses
  %6 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i64 %1, ptr %6, align 8, !tbaa !31
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.a, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 0, ptr %i.b, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 4, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr @.str.83, ptr %i.d, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i8 1, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, i8 0, i64 25, i1 false)
  invoke fastcc void @_ZNO6google8protobuf8compiler3cpp12_GLOBAL__N_14Call3ArgIJEEES4_St17basic_string_viewIcSt11char_traitsIcEEDpRKT_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(89) %6, i64 11, ptr nonnull @.str.84)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_ZNO6google8protobuf8compiler3cpp12_GLOBAL__N_14Call3ArgIJSt17basic_string_viewIcSt11char_traitsIcEES9_EEES4_S9_DpRKT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(89) %5, i64 51, ptr nonnull @.str.85, i64 %.0.val, ptr %.8.val)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !74 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !26
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.g, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #21
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i.i.i11 = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i11, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15
  %.05.i.i.i.i13 = phi ptr [ %i.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15 ], [ %i.w, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit ] ; 3 uses
  %i.z = load ptr, ptr %.05.i.i.i.i13, align 8, !tbaa !74 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i13, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14: ; preds = %.lr.ph.i.i.i.i12
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15: ; preds = %.lr.ph.i.i.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i13, i64 32 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ae, %i.y
  br i1 %.not.i.i.i.i16, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17, label %.lr.ph.i.i.i.i12, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15
  %.pr.i.i18 = load ptr, ptr %i.f, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit
  %i.af = phi ptr [ %.pr.i.i18, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17 ], [ %i.w, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i20 = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i20, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit22, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !79
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #21
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit22

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit22: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.f:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %5) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.al, %bb.f ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsEENK3$_1clESt17basic_string_viewIcSt11char_traitsIcEESD_"(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, i64 %.0.val, ptr %.8.val, i64 %1, ptr %2, i64 %3, ptr %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 9 uses
  %6 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i64 %1, ptr %6, align 8, !tbaa !31
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.a, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 0, ptr %i.b, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 4, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr @.str.83, ptr %i.d, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i8 1, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, i8 0, i64 25, i1 false)
  invoke fastcc void @_ZNO6google8protobuf8compiler3cpp12_GLOBAL__N_14Call3ArgIJEEES4_St17basic_string_viewIcSt11char_traitsIcEEDpRKT_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(89) %6, i64 11, ptr nonnull @.str.84)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_ZNO6google8protobuf8compiler3cpp12_GLOBAL__N_14Call3ArgIJSt17basic_string_viewIcSt11char_traitsIcEES9_EEES4_S9_DpRKT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(89) %5, i64 34, ptr nonnull @.str.87, i64 %.0.val, ptr %.8.val)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !74 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !26
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.g, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #21
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i.i.i11 = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i11, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15
  %.05.i.i.i.i13 = phi ptr [ %i.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15 ], [ %i.w, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit ] ; 3 uses
  %i.z = load ptr, ptr %.05.i.i.i.i13, align 8, !tbaa !74 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i13, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14: ; preds = %.lr.ph.i.i.i.i12
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15: ; preds = %.lr.ph.i.i.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i13, i64 32 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ae, %i.y
  br i1 %.not.i.i.i.i16, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17, label %.lr.ph.i.i.i.i12, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15
  %.pr.i.i18 = load ptr, ptr %i.f, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit
  %i.af = phi ptr [ %.pr.i.i18, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17 ], [ %i.w, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i20 = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i20, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit22, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !79
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #21
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit22

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit22: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.f:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %5) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.al, %bb.f ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsEENK3$_2clESt17basic_string_viewIcSt11char_traitsIcEESD_"(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, i64 %.0.val, ptr %.8.val, i64 %1, ptr %2, i64 %3, ptr %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 9 uses
  %6 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i64 %1, ptr %6, align 8, !tbaa !31
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.a, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 0, ptr %i.b, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 4, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr @.str.83, ptr %i.d, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i8 1, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, i8 0, i64 25, i1 false)
  invoke fastcc void @_ZNO6google8protobuf8compiler3cpp12_GLOBAL__N_14Call3ArgIJEEES4_St17basic_string_viewIcSt11char_traitsIcEEDpRKT_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(89) %6, i64 11, ptr nonnull @.str.84)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_ZNO6google8protobuf8compiler3cpp12_GLOBAL__N_14Call3ArgIJSt17basic_string_viewIcSt11char_traitsIcEES9_EEES4_S9_DpRKT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(89) %5, i64 62, ptr nonnull @.str.88, i64 %.0.val, ptr %.8.val)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !74 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !26
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.g, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #21
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i.i.i11 = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i11, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15
  %.05.i.i.i.i13 = phi ptr [ %i.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15 ], [ %i.w, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit ] ; 3 uses
  %i.z = load ptr, ptr %.05.i.i.i.i13, align 8, !tbaa !74 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i13, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14: ; preds = %.lr.ph.i.i.i.i12
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15: ; preds = %.lr.ph.i.i.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i13, i64 32 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ae, %i.y
  br i1 %.not.i.i.i.i16, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17, label %.lr.ph.i.i.i.i12, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15
  %.pr.i.i18 = load ptr, ptr %i.f, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit
  %i.af = phi ptr [ %.pr.i.i18, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17 ], [ %i.w, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i20 = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i20, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit22, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !79
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #21
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit22

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit22: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.f:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %5) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.al, %bb.f ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_10DescriptorERKNS2_7OptionsEENK3$_3clESt17basic_string_viewIcSt11char_traitsIcEESD_"(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, i64 %.0.val, ptr %.8.val, i64 %1, ptr %2, i64 %3, ptr %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 9 uses
  %6 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i64 %1, ptr %6, align 8, !tbaa !31
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %3, ptr %i.a, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 0, ptr %i.b, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 4, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr @.str.83, ptr %i.d, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i8 1, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, i8 0, i64 25, i1 false)
  invoke fastcc void @_ZNO6google8protobuf8compiler3cpp12_GLOBAL__N_14Call3ArgIJEEES4_St17basic_string_viewIcSt11char_traitsIcEEDpRKT_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(89) %6, i64 11, ptr nonnull @.str.84)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_ZNO6google8protobuf8compiler3cpp12_GLOBAL__N_14Call3ArgIJSt17basic_string_viewIcSt11char_traitsIcEES9_EEES4_S9_DpRKT_(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(89) %5, i64 35, ptr nonnull @.str.89, i64 %.0.val, ptr %.8.val)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !74 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !26
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.g, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.q = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !79
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #21
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !72   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i.i.i11 = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i11, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15
  %.05.i.i.i.i13 = phi ptr [ %i.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15 ], [ %i.w, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit ] ; 3 uses
  %i.z = load ptr, ptr %.05.i.i.i.i13, align 8, !tbaa !74 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i13, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14: ; preds = %.lr.ph.i.i.i.i12
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15: ; preds = %.lr.ph.i.i.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i14
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i13, i64 32 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ae, %i.y
  br i1 %.not.i.i.i.i16, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17, label %.lr.ph.i.i.i.i12, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i15
  %.pr.i.i18 = load ptr, ptr %i.f, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit
  %i.af = phi ptr [ %.pr.i.i18, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i17 ], [ %i.w, %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i20 = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i20, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit22, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !79
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #21
  br label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit22

_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev.exit22: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i19, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.f:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %5) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.al, %bb.f ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(89) dereferenceable(89) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !74 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !26
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(217) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %11 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %16 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %17 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %18 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 9 uses
  %19 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %20 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %21 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %22 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %30 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %33 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %34 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %36 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %37 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %43 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %44 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %45 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Getters", align 8 ; 26 uses
  %46 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Getters", align 8 ; 22 uses
  %47 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Getters", align 8 ; 27 uses
  %48 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Getters", align 8 ; 27 uses
  %49 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Getters", align 8 ; 22 uses
  %50 = alloca %"class.std::optional", align 8    ; 8 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %53 = alloca [11 x %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call"], align 8 ; 61 uses
  %54 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 18 uses
  %55 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  %56 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  %57 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  %58 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  %59 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  %60 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  %61 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  %62 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  %63 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  %64 = alloca %"struct.google::protobuf::compiler::cpp::(anonymous namespace)::Call", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  %i.b = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  store ptr %i.b, ptr %45, align 8, !tbaa !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.90, i64 7, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 6 uses
  store i64 7, ptr %i.c, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %45, i64 23
  store i8 0, ptr %i.d, align 1, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %45, i64 32 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %45, i64 48 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str.90, i64 7, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %45, i64 40 ; 3 uses
  store i64 7, ptr %i.g, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %45, i64 55
  store i8 0, ptr %i.h, align 1, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %45, i64 64 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %45, i64 80 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.j, ptr noundef nonnull align 1 dereferenceable(7) @.str.90, i64 7, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %45, i64 72 ; 5 uses
  store i64 7, ptr %i.k, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %45, i64 87
  store i8 0, ptr %i.l, align 1, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.n, 32
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.p = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 6 uses
  store ptr %i.p, ptr %46, align 8, !tbaa !108, !alias.scope !148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.p, ptr noundef nonnull align 1 dereferenceable(7) @.str.90, i64 7, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 4 uses
  store i64 7, ptr %i.q, align 8, !tbaa !109, !alias.scope !148
  %i.r = getelementptr inbounds nuw i8, ptr %46, i64 23
  store i8 0, ptr %i.r, align 1, !tbaa !26, !alias.scope !148
  %i.s = getelementptr inbounds nuw i8, ptr %46, i64 32 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %46, i64 48 ; 6 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !108, !alias.scope !148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.t, ptr noundef nonnull align 1 dereferenceable(7) @.str.90, i64 7, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %46, i64 40 ; 4 uses
  store i64 7, ptr %i.u, align 8, !tbaa !109, !alias.scope !148
  %i.v = getelementptr inbounds nuw i8, ptr %46, i64 55
  store i8 0, ptr %i.v, align 1, !tbaa !26, !alias.scope !148
  %i.w = getelementptr inbounds nuw i8, ptr %46, i64 64 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %46, i64 80 ; 6 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !108, !alias.scope !148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.x, ptr noundef nonnull align 1 dereferenceable(7) @.str.90, i64 7, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %46, i64 72 ; 4 uses
  store i64 7, ptr %i.y, align 8, !tbaa !109, !alias.scope !148
  %i.z = getelementptr inbounds nuw i8, ptr %46, i64 87
  store i8 0, ptr %i.z, align 1, !tbaa !26, !alias.scope !148
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !148
  %i.ac = and i8 %i.ab, 16
  %.not7.i = icmp eq i8 %i.ac, 0
  br i1 %.not7.i, label %bb.c, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_120RepeatedFieldGettersEPKNS0_15FieldDescriptorERKNS2_7OptionsE.exit

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !151, !noalias !148
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !154, !noalias !148
  %.not.i = icmp eq i32 %i.ah, 10
  br i1 %.not.i, label %_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_120RepeatedFieldGettersEPKNS0_15FieldDescriptorERKNS2_7OptionsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20, !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20, !noalias !148
  store i64 10, ptr %36, align 8, !noalias !148
  %i.ai = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr @.str.91, ptr %i.ai, align 8, !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20, !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20, !noalias !148
  invoke void @_ZN6google8protobuf8compiler3cpp9FieldNameB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.aa

bb.e:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler3cpp16MakeTrackerCallsEPKNS0_15FieldDescriptorERKNS2_7OptionsE:bb.a
bb.gf:                                            ; preds = %bb.ev
  %i.aro = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.gg:                                            ; preds = %bb.ew
  %i.arp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.gh:                                            ; preds = %bb.ex
  %i.arq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gl

bb.gi:                                            ; preds = %bb.ey
  %i.arr = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gj:                                            ; preds = %bb.ez
  %i.ars = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit531

.loopexit531.loopexit:                            ; preds = %bb.fa
  %i.art = landingpad { ptr, i32 }
          cleanup
  %i.aru = getelementptr inbounds nuw i8, ptr %53, i64 960
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.aru) #20
  %i.arv = getelementptr inbounds nuw i8, ptr %53, i64 864
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.arv) #20
  %i.arw = getelementptr inbounds nuw i8, ptr %53, i64 768
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.arw) #20
  %i.arx = getelementptr inbounds nuw i8, ptr %53, i64 672
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.arx) #20
  %i.ary = getelementptr inbounds nuw i8, ptr %53, i64 576
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.ary) #20
  %i.arz = getelementptr inbounds nuw i8, ptr %53, i64 480
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.arz) #20
  %i.asa = getelementptr inbounds nuw i8, ptr %53, i64 384
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.asa) #20
  %i.asb = getelementptr inbounds nuw i8, ptr %53, i64 288
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.asb) #20
  %i.asc = getelementptr inbounds nuw i8, ptr %53, i64 192
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.asc) #20
  %i.asd = getelementptr inbounds nuw i8, ptr %53, i64 96
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.asd) #20
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %53) #20
  br label %.loopexit531

.loopexit531:                                     ; preds = %.loopexit531.loopexit, %bb.gj
  %.pn86 = phi { ptr, i32 } [ %i.ars, %bb.gj ], [ %i.art, %.loopexit531.loopexit ]
  %i.ase = phi i1 [ false, %bb.gj ], [ true, %.loopexit531.loopexit ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %64) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #20
  br label %bb.gk

bb.gk:                                            ; preds = %.loopexit531, %bb.gi
  %.072 = phi ptr [ %i.acu, %.loopexit531 ], [ %i.acl, %bb.gi ]
  %.pn86.pn = phi { ptr, i32 } [ %.pn86, %.loopexit531 ], [ %i.arr, %bb.gi ]
  %.1 = phi i1 [ %i.ase, %.loopexit531 ], [ false, %bb.gi ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %63) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #20
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gh
  %.173 = phi ptr [ %.072, %bb.gk ], [ %i.acc, %bb.gh ]
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %bb.gk ], [ %i.arq, %bb.gh ]
  %.2 = phi i1 [ %.1, %bb.gk ], [ false, %bb.gh ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %62) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gg
  %.274 = phi ptr [ %.173, %bb.gl ], [ %i.abt, %bb.gg ]
  %.pn86.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn, %bb.gl ], [ %i.arp, %bb.gg ]
  %.3 = phi i1 [ %.2, %bb.gl ], [ false, %bb.gg ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %61) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #20
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gf
  %.375 = phi ptr [ %.274, %bb.gm ], [ %i.abk, %bb.gf ]
  %.pn86.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn, %bb.gm ], [ %i.aro, %bb.gf ]
  %.4 = phi i1 [ %.3, %bb.gm ], [ false, %bb.gf ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %60) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #20
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.ge
  %.476 = phi ptr [ %.375, %bb.gn ], [ %i.abb, %bb.ge ]
  %.pn86.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn, %bb.gn ], [ %i.arn, %bb.ge ]
  %.5 = phi i1 [ %.4, %bb.gn ], [ false, %bb.ge ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %59) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #20
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gd
  %.577 = phi ptr [ %.476, %bb.go ], [ %i.aas, %bb.gd ]
  %.pn86.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn.pn, %bb.go ], [ %i.arm, %bb.gd ]
  %.6 = phi i1 [ %.5, %bb.go ], [ false, %bb.gd ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %58) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #20
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.gc
  %.678 = phi ptr [ %.577, %bb.gp ], [ %i.aaj, %bb.gc ]
  %.pn86.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn.pn.pn, %bb.gp ], [ %i.arl, %bb.gc ]
  %.7 = phi i1 [ %.6, %bb.gp ], [ false, %bb.gc ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %57) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #20
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gb
  %.779 = phi ptr [ %.678, %bb.gq ], [ %i.aaa, %bb.gb ]
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn.pn.pn.pn, %bb.gq ], [ %i.ark, %bb.gb ]
  %.8 = phi i1 [ %.7, %bb.gq ], [ false, %bb.gb ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %56) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #20
  br label %bb.gs

bb.gs:                                            ; preds = %bb.ga, %bb.gr
  %.880 = phi ptr [ %.779, %bb.gr ], [ %i.zr, %bb.ga ] ; 2 uses
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gr ], [ %i.arj, %bb.ga ] ; 2 uses
  %.9 = phi i1 [ %.8, %bb.gr ], [ false, %bb.ga ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %55) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #20
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %54) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #20
  %i.asf = icmp eq ptr %53, %.880
  %or.cond = select i1 %.9, i1 true, i1 %i.asf
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.gs, %.preheader
  %i.asg = phi ptr [ %i.ash, %.preheader ], [ %.880, %bb.gs ]
  %i.ash = getelementptr inbounds i8, ptr %i.asg, i64 -96 ; 3 uses
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_14CallD2Ev(ptr noundef nonnull align 8 dead_on_return(89) dereferenceable(89) %i.ash) #20
  %i.asi = icmp eq ptr %i.ash, %53
  br i1 %i.asi, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.thread, %bb.gs
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn530 = phi { ptr, i32 } [ %i.ari, %.thread ], [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.gs ], [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #20
  %i.asj = load i8, ptr %i.zi, align 8, !tbaa !29, !range !27, !noundef !28
  %i.ask = trunc nuw i8 %i.asj to i1
  store i8 0, ptr %i.zi, align 8, !tbaa !29
  br i1 %i.ask, label %bb.gt, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit385

bb.gt:                                            ; preds = %.loopexit
  %i.asl = load ptr, ptr %50, align 8, !tbaa !74  ; 2 uses
  %i.asm = icmp eq ptr %i.asl, %i.yz
  br i1 %i.asm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit385, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i383: ; preds = %bb.gt
  %i.asn = load i64, ptr %i.yz, align 8, !tbaa !26
  %i.aso = add i64 %i.asn, 1
  call void @_ZdlPvm(ptr noundef %i.asl, i64 noundef %i.aso) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit385

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit385: ; preds = %bb.gt, %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i383
  %i.asp = load ptr, ptr %51, align 8, !tbaa !74  ; 2 uses
  %i.asq = icmp eq ptr %i.asp, %i.yt
  br i1 %i.asq, label %.body194, label %.body194.sink.split

.body194.sink.split:                              ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit385, %bb.en
  %.sink = phi ptr [ %i.yx, %bb.en ], [ %i.asp, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit385 ]
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.yw, %bb.en ], [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn530, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit385 ]
  %i.asr = load i64, ptr %i.yt, align 8, !tbaa !26
  %i.ass = add i64 %i.asr, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ass) #21
  br label %.body194

.body194:                                         ; preds = %.body194.sink.split, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit385, %bb.en
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.yw, %bb.en ], [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn530, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit385 ], [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body194.sink.split ] ; 2 uses
  %i.ast = load ptr, ptr %52, align 8, !tbaa !74  ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 2 uses
  %i.asv = icmp eq ptr %i.ast, %i.asu
  br i1 %i.asv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %.body194
  %i.asw = load i64, ptr %i.asu, align 8, !tbaa !26
  %i.asx = add i64 %i.asw, 1
  call void @_ZdlPvm(ptr noundef %i.ast, i64 noundef %i.asx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391: ; preds = %.body194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389, %bb.fz
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.arh, %bb.fz ], [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389 ], [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body194 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #20
  br label %bb.gu

bb.gu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, %.body123, %.body151, %.body178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i
  %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391 ], [ %.pn13.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i ], [ %eh.lpad-body152, %.body151 ], [ %eh.lpad-body179, %.body178 ], [ %eh.lpad-body124, %.body123 ]
  call fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_17GettersD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %45) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  resume { ptr, i32 } %.pn86.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(96) ptr @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_17GettersaSEOS4_(ptr noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !74     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !109  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !205

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1, !tbaa !26
  store i8 %i.j, ptr %i.a, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load i64, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !109
  %i.m = load ptr, ptr %0, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !26
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !109
  store i64 %i.q, ptr %i.o, align 8, !tbaa !109
  %i.r = load i64, ptr %i.e, align 8, !tbaa !26
  store i64 %i.r, ptr %i.b, align 8, !tbaa !26
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.s = load i64, ptr %i.b, align 8, !tbaa !26
  store ptr %i.d, ptr %0, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !109
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !109
  %i.w = load i64, ptr %i.e, align 8, !tbaa !26
  store i64 %i.w, ptr %i.b, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.a, ptr %1, align 8, !tbaa !74
  store i64 %i.s, ptr %i.e, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.e, ptr %1, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.x = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !109
  store i8 0, ptr %i.x, align 1, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !74  ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.ag = icmp eq ptr %i.ae, %i.af                ; 2 uses
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ag, label %bb.h, label %.thread.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  br i1 %i.ag, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !109 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %.not21.i7 = icmp eq ptr %1, %0
  br i1 %.not21.i7, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12, label %bb.i, !prof !205

bb.i:                                             ; preds = %bb.h
  switch i64 %i.ai, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !26
  store i8 %i.ak, ptr %i.ab, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ae, i64 %i.ai, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8: ; preds = %bb.k, %bb.j, %bb.i
  %i.al = load i64, ptr %i.ah, align 8, !tbaa !109 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.al, ptr %i.am, align 8, !tbaa !109
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !26
  %.pre.i9 = load ptr, ptr %i.aa, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12

.thread.i11:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !109
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !109
  %i.as = load i64, ptr %i.af, align 8, !tbaa !26
  store i64 %i.as, ptr %i.ac, align 8, !tbaa !26
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4
  %i.at = load i64, ptr %i.ac, align 8, !tbaa !26
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !74
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !109
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !109
  %i.ax = load i64, ptr %i.af, align 8, !tbaa !26
  store i64 %i.ax, ptr %i.ac, align 8, !tbaa !26
  %.not.i6 = icmp eq ptr %i.ab, null
  br i1 %.not.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !74
  store i64 %i.at, ptr %i.af, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5, %.thread.i11
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8, %bb.l, %bb.m
  %i.ay = phi ptr [ %.pre.i9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8 ], [ %i.ab, %bb.l ], [ %i.af, %bb.m ], [ %i.ae, %bb.h ]
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.az, align 8, !tbaa !109
  store i8 0, ptr %i.ay, align 1, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !74 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !74 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg                ; 2 uses
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12
  br i1 %i.bh, label %bb.n, label %.thread.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12
  br i1 %i.bh, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i14

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !109 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bk)
  %.not21.i16 = icmp eq ptr %1, %0
  br i1 %.not21.i16, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21, label %bb.o, !prof !205

bb.o:                                             ; preds = %bb.n
  switch i64 %i.bj, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.bl = load i8, ptr %i.bf, align 1, !tbaa !26
  store i8 %i.bl, ptr %i.bc, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bf, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17: ; preds = %bb.q, %bb.p, %bb.o
  %i.bm = load i64, ptr %i.bi, align 8, !tbaa !109 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !109
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !74
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  store i8 0, ptr %i.bp, align 1, !tbaa !26
  %.pre.i18 = load ptr, ptr %i.bb, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21

.thread.i20:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !74
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !109
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !109
  %i.bt = load i64, ptr %i.bg, align 8, !tbaa !26
  store i64 %i.bt, ptr %i.bd, align 8, !tbaa !26
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13
  %i.bu = load i64, ptr %i.bd, align 8, !tbaa !26
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !74
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !109
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !109
  %i.by = load i64, ptr %i.bg, align 8, !tbaa !26
  store i64 %i.by, ptr %i.bd, align 8, !tbaa !26
  %.not.i15 = icmp eq ptr %i.bc, null
  br i1 %.not.i15, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i14
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !74
  store i64 %i.bu, ptr %i.bg, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i14, %.thread.i20
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17, %bb.r, %bb.s
  %i.bz = phi ptr [ %.pre.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i17 ], [ %i.bc, %bb.r ], [ %i.bg, %bb.s ], [ %i.bf, %bb.n ]
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.ca, align 8, !tbaa !109
  store i8 0, ptr %i.bz, align 1, !tbaa !26
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN6google8protobuf8compiler3cpp12_GLOBAL__N_17GettersD2Ev(ptr noundef nonnull readonly align 8 captures(address) dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !26
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !26
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.p = load i64, ptr %i.n, align 8, !tbaa !26
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

declare void @_ZN6google8protobuf8compiler3cpp9FieldNameB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !128, !range !27, !noundef !28
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !128
  br i1 %i.d, label %bb.b, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !26
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !206  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !143
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #21
  br label %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !26
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Optional_baseIN6google8protobuf2io7Printer16AnnotationRecordELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load i8, ptr %i.x, align 8, !tbaa !118
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !74  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #21
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !140 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(73) %i.q, ptr noundef nonnull align 8 dereferenceable(73) %i.q, i32 noundef 3)
          to label %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #22
  unreachable

_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.e, %bb.f
  %i.ak = load ptr, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit
  %i.an = load i64, ptr %i.al, align 8, !tbaa !26
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf2io7Printer3SubESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !207    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !133  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i) #20
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 184 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !208

_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !207
  br label %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6google8protobuf2io7Printer3SubES4_EvT_S6_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #21
  br label %_ZNSt12_Vector_baseIN6google8protobuf2io7Printer3SubESaIS4_EED2Ev.exit
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf2io7Printer3SubC2EOS3_:bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !109  ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !74
  %i.i = load i64, ptr %i.c, align 8, !tbaa !26
  store i64 %i.i, ptr %i.a, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !109
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !109
  store ptr %i.c, ptr %1, align 8, !tbaa !74
  store i64 0, ptr %i.j, align 8, !tbaa !109
  store i8 0, ptr %i.c, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i8 -1, ptr %i.o, align 8, !tbaa !118
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !118
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.m, align 8, !tbaa !108
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !74   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !109  ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.t, ptr %i.m, align 8, !tbaa !74
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !26
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !26
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !109
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !109
  store ptr %i.u, ptr %i.n, align 8, !tbaa !74
  store i64 0, ptr %i.ab, align 8, !tbaa !109
  store i8 0, ptr %i.u, align 8, !tbaa !26
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.m, i8 0, i64 24, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !137
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !137
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !140
  %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.m, ptr noundef nonnull align 8 dereferenceable(73) %i.n, i64 16, i1 false), !tbaa.struct !141
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !140
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  br label %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i

_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i: ; preds = %bb.f, %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC1EOSE_EUlOT_T0_E_OSt7variantIJSA_SD_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i
  %i.al = load i8, ptr %i.p, align 8, !tbaa !118
  store i8 %i.al, ptr %i.o, align 8, !tbaa !118
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !108
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !74 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = load i64, ptr %i.as, align 8, !tbaa !109 ; 2 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7variantIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEEC2EOS9_.exit.i
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !74
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !26
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !26
  br label %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit

_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !109
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !109
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !74
  store i64 0, ptr %i.ax, align 8, !tbaa !109
  store i8 0, ptr %i.aq, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !120, !range !27, !noundef !28
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !120
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 0, ptr %i.be, align 8, !tbaa !128
  %i.bf = load i8, ptr %i.bd, align 8, !tbaa !128, !range !27, !noundef !28
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.h, label %_ZNSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEEC2EOS5_.exit

bb.h:                                             ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bj = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !142
  store <2 x ptr> %i.bj, ptr %i.bi, align 8, !tbaa !142
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !143
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !143
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i8 0, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !108
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !74 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !109 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 16
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false)
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !74
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !26
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !26
  br label %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !109
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !109
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !74
  store i64 0, ptr %i.by, align 8, !tbaa !109
  store i8 0, ptr %i.br, align 8, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cd = load i64, ptr %i.cc, align 8
  store i64 %i.cd, ptr %i.cb, align 8
  store i8 1, ptr %i.be, align 8, !tbaa !128
  br label %_ZNSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEEC2EOS5_.exit

_ZNSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEEC2EOS5_.exit: ; preds = %_ZN6google8protobuf2io7Printer9ValueImplILb1EEC2EOS4_.exit, %_ZNSt22_Optional_payload_baseIN6google8protobuf2io7Printer16AnnotationRecordEE12_M_constructIJS4_EEEvDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNO6google8protobuf8compiler3cpp12_GLOBAL__N_14Call3ArgIJSt17basic_string_viewIcSt11char_traitsIcEES9_EEES4_S9_DpRKT_(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(89) %1, i64 %2, ptr %3, i64 %.0.val, ptr %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [2 x %"class.std::basic_string_view"], align 16 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !108, !alias.scope !217
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !109, !alias.scope !217
  store i8 0, ptr %i.b, align 8, !tbaa !26, !alias.scope !217
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !217
  store i64 17, ptr %4, align 16, !noalias !217
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.86, ptr %i.d, align 8, !noalias !217
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.0.val, ptr %i.e, align 16, !noalias !217
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.8.val, ptr %i.f, align 8, !noalias !217
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %5, i64 %2, ptr %3, ptr noundef nonnull %4, i64 noundef 2)
          to label %_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERKNS0_19substitute_internal3ArgES8_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !74, !alias.scope !217 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8, !tbaa !26, !alias.scope !217
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #21
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERKNS0_19substitute_internal3ArgES8_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !217
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERKNS0_19substitute_internal3ArgES8_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !108
  %i.q = load ptr, ptr %5, align 8, !tbaa !74     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !109  ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.u, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.q, ptr %i.m, align 8, !tbaa !74
  %i.v = load i64, ptr %i.b, align 8, !tbaa !26
  store i64 %i.v, ptr %i.p, align 8, !tbaa !26
  %.pre = load i64, ptr %i.c, align 8, !tbaa !109
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.s, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !109
  store i64 0, ptr %i.c, align 8, !tbaa !109
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.z, ptr %i.l, align 8, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051210SubstituteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERKNS0_19substitute_internal3ArgES8_.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit unwind label %bb.f

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.e
  %.pre4 = load ptr, ptr %5, align 8, !tbaa !74   ; 2 uses
  %i.aa = icmp eq ptr %.pre4, %i.b
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !26
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.pre4, i64 noundef %i.ac) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(89) %1, i64 64, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load <2 x ptr>, ptr %i.a, align 8, !tbaa !110
  store <2 x ptr> %i.ae, ptr %i.ad, align 8, !tbaa !110
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !79
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !39, !range !27, !noundef !28
  store i8 %i.aj, ptr %i.ah, align 8, !tbaa !39
  ret void

bb.f:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.f
  %i.an = load i64, ptr %i.b, align 8, !tbaa !26
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !72     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.79) #23
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i.a = icmp eq i64 %i.l, 0
  br i1 %.not.i.a, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %3

3:                                                ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %4 = shl nuw nsw i64 %i.l, 5
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %3
  %6 = phi ptr [ %5, %3 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %i.n ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %8, ptr %7, align 8, !tbaa !108
  %9 = load ptr, ptr %2, align 8, !tbaa !74       ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !109  ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(1) %10, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %9, ptr %7, align 8, !tbaa !74
  %i.s = load i64, ptr %10, align 8, !tbaa !26
  store i64 %i.s, ptr %8, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !109
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !109
  store ptr %10, ptr %2, align 8, !tbaa !74
  store i64 0, ptr %i.u, align 8, !tbaa !109
  store i8 0, ptr %10, align 8, !tbaa !26
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !108, !alias.scope !220, !noalias !223
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !74, !alias.scope !223, !noalias !220 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !109, !alias.scope !223, !noalias !220 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !225
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !74, !alias.scope !220, !noalias !223
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !26, !alias.scope !223, !noalias !220
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !26, !alias.scope !220, !noalias !223
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !109, !alias.scope !223, !noalias !220
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.af = phi i64 [ %i.ab, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !109, !alias.scope !220, !noalias !223
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !74, !alias.scope !223, !noalias !220
  store i64 0, ptr %i.ag, align 8, !tbaa !109, !alias.scope !223, !noalias !220
  store i8 0, ptr %i.y, align 8, !tbaa !26, !alias.scope !223, !noalias !220
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !226

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i18, align 8, !tbaa !108, !alias.scope !227, !noalias !230
  %i.am = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !74, !alias.scope !230, !noalias !227 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !109, !alias.scope !230, !noalias !227 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !232
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.am, ptr %.012.i.i.i18, align 8, !tbaa !74, !alias.scope !227, !noalias !230
  %i.at = load i64, ptr %i.an, align 8, !tbaa !26, !alias.scope !230, !noalias !227
  store i64 %i.at, ptr %i.al, align 8, !tbaa !26, !alias.scope !227, !noalias !230
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !109, !alias.scope !230, !noalias !227
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.au = phi i64 [ %i.aq, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !109, !alias.scope !227, !noalias !230
  store ptr %i.an, ptr %.0911.i.i.i19, align 8, !tbaa !74, !alias.scope !230, !noalias !227
  store i64 0, ptr %i.av, align 8, !tbaa !109, !alias.scope !230, !noalias !227
  store i8 0, ptr %i.an, align 8, !tbaa !26, !alias.scope !230, !noalias !227
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !226

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !79
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #21
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %6, ptr %0, align 8, !tbaa !72
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !73
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !79
  ret void
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare void @_ZN6google8protobuf8compiler3cpp15FieldMemberNameB5cxx11EPKNS0_15FieldDescriptorEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp11ShouldSplitEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp16IsArenaStringPtrEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp13IsMicroStringEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #5

declare void @_ZN6google8protobuf8compiler3cpp22UnderscoresToCamelCaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler3cpp20MakeDefaultFieldNameB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i64 7, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.104, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !233
  store i64 46, ptr %2, align 8, !noalias !233
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.105, ptr %i.b, align 8, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !233
  call void @_ZN6google8protobuf8compiler3cpp9FieldNameB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %1), !noalias !233
  %i.c = load ptr, ptr %4, align 8, !tbaa !74, !noalias !233
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !109, !noalias !233
  store i64 %i.e, ptr %3, align 8, !noalias !233
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.f, align 8, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !233
  store i64 1, ptr %5, align 8, !noalias !233
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.106, ptr %i.g, align 8, !noalias !233
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !233
  %i.h = load ptr, ptr %4, align 8, !tbaa !74, !noalias !233 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6google8protobuf8compiler3cpp15MakeDefaultNameB5cxx11EPKNS0_15FieldDescriptorE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !26, !noalias !233
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZN6google8protobuf8compiler3cpp15MakeDefaultNameB5cxx11EPKNS0_15FieldDescriptorE.exit

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !233
  %i.n = load ptr, ptr %4, align 8, !tbaa !74, !noalias !233 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !26, !noalias !233
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !233
  br label %common.resume

_ZN6google8protobuf8compiler3cpp15MakeDefaultNameB5cxx11EPKNS0_15FieldDescriptorE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !233
  %i.s = load ptr, ptr %8, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !109
  store i64 %i.u, ptr %7, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.s, ptr %i.v, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf8compiler3cpp15MakeDefaultNameB5cxx11EPKNS0_15FieldDescriptorE.exit
  %i.w = load ptr, ptr %8, align 8, !tbaa !74     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !26
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void

bb.e:                                             ; preds = %_ZN6google8protobuf8compiler3cpp15MakeDefaultNameB5cxx11EPKNS0_15FieldDescriptorE.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.e
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }

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
!7 = !{!8, !17, i64 40}
!8 = !{!"_ZTSN6google8protobuf10DescriptorE", !9, i64 0, !10, i64 1, !10, i64 1, !5, i64 1, !5, i64 2, !11, i64 4, !4, i64 8, !12, i64 16, !15, i64 24, !16, i64 32, !17, i64 40, !18, i64 48, !18, i64 56, !19, i64 64, !20, i64 72, !16, i64 80, !21, i64 88, !22, i64 96, !19, i64 104, !23, i64 112, !24, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156}
!9 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!10 = !{!"bool", !5, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !13, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !14, i64 0}
end_hunk_4
