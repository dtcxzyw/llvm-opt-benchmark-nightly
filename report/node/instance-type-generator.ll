Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instance-type-generator?download=true
inline.NumInlined: 1289
inline.NumDeleted: 517
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::allocator" = type { i8 }
%"class.std::vector.122" = type { %"struct.std::_Vector_base.123" }
%"struct.std::_Vector_base.123" = type { %"struct.std::_Vector_base<std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>, std::allocator<std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>, std::allocator<std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>, std::allocator<std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>, std::allocator<std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::unordered_map.102" = type { %"class.std::_Hashtable.103" }
%"class.std::_Hashtable.103" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.v8::internal::torque::MessageBuilder" = type { %"struct.v8::internal::torque::TorqueMessage", %"class.std::vector.166" }
%"struct.v8::internal::torque::TorqueMessage" = type <{ %"class.std::__cxx11::basic_string", %"class.std::optional.158", i32, [4 x i8] }>
%"class.std::optional.158" = type { %"struct.std::_Optional_base.159" }
%"struct.std::_Optional_base.159" = type { %"struct.std::_Optional_payload.161" }
%"struct.std::_Optional_payload.161" = type { %"struct.std::_Optional_payload_base.base.163", [3 x i8] }
%"struct.std::_Optional_payload_base.base.163" = type <{ %"union.std::_Optional_payload_base<v8::internal::torque::SourcePosition>::_Storage", i8 }>
%"union.std::_Optional_payload_base<v8::internal::torque::SourcePosition>::_Storage" = type { %"struct.v8::internal::torque::SourcePosition" }
%"struct.v8::internal::torque::SourcePosition" = type { %"class.v8::internal::torque::SourceId", %"struct.v8::internal::torque::LineAndColumn", %"struct.v8::internal::torque::LineAndColumn" }
%"class.v8::internal::torque::SourceId" = type { i32 }
%"struct.v8::internal::torque::LineAndColumn" = type { i32, i32, i32 }
%"class.std::vector.166" = type { %"struct.std::_Vector_base.167" }
%"struct.std::_Vector_base.167" = type { %"struct.std::_Vector_base<v8::internal::torque::TorqueMessage, std::allocator<v8::internal::torque::TorqueMessage>>::_Vector_impl" }
%"struct.std::_Vector_base<v8::internal::torque::TorqueMessage, std::allocator<v8::internal::torque::TorqueMessage>>::_Vector_impl" = type { %"struct.std::_Vector_base<v8::internal::torque::TorqueMessage, std::allocator<v8::internal::torque::TorqueMessage>>::_Vector_impl_data" }
%"struct.std::_Vector_base<v8::internal::torque::TorqueMessage, std::allocator<v8::internal::torque::TorqueMessage>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.v8::internal::torque::IncludeGuardScope" = type { ptr, %"class.std::__cxx11::basic_string" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<const v8::internal::torque::ClassType *, std::allocator<const v8::internal::torque::ClassType *>>::_Vector_impl" }
%"struct.std::_Vector_base<const v8::internal::torque::ClassType *, std::allocator<const v8::internal::torque::ClassType *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const v8::internal::torque::ClassType *, std::allocator<const v8::internal::torque::ClassType *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const v8::internal::torque::ClassType *, std::allocator<const v8::internal::torque::ClassType *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::multimap" = type { %"class.std::_Rb_tree.239" }
%"class.std::_Rb_tree.239" = type { %"struct.std::_Rb_tree<int, std::pair<const int, std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>>, std::_Select1st<std::pair<const int, std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>>>, std::less<int>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<int, std::pair<const int, std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>>, std::_Select1st<std::pair<const int, std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>>>, std::less<int>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::map.244" = type { %"class.std::_Rb_tree.245" }
%"class.std::_Rb_tree.245" = type { %"struct.std::_Rb_tree<v8::internal::torque::(anonymous namespace)::InstanceTypeTree *, std::pair<v8::internal::torque::(anonymous namespace)::InstanceTypeTree *const, std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>>, std::_Select1st<std::pair<v8::internal::torque::(anonymous namespace)::InstanceTypeTree *const, std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>>>, v8::internal::torque::(anonymous namespace)::CompareUnconstrainedTypes>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<v8::internal::torque::(anonymous namespace)::InstanceTypeTree *, std::pair<v8::internal::torque::(anonymous namespace)::InstanceTypeTree *const, std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>>, std::_Select1st<std::pair<v8::internal::torque::(anonymous namespace)::InstanceTypeTree *const, std::unique_ptr<v8::internal::torque::(anonymous namespace)::InstanceTypeTree>>>, v8::internal::torque::(anonymous namespace)::CompareUnconstrainedTypes>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }

$__clang_call_terminate = comdat any

$_ZN2v88internal6torque14MessageBuilderD2Ev = comdat any

$_ZN2v88internal6torque8ToStringIJRA43_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S3_SD_EEESB_DpOT_ = comdat any

$_ZN2v88internal6torque8ToStringIJRA50_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_DpOT_ = comdat any

$_ZN2v88internal6torque8ToStringIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESE_DpOT_ = comdat any

$_ZN2v88internal6torque8ToStringIJRA56_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S3_SD_RA32_S3_SD_EEESB_DpOT_ = comdat any

$_ZN2v88internal6torque8ToStringIJRA86_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_DpOT_ = comdat any

$_ZN2v88internal6torque8ToStringIJRA55_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S3_SD_RA32_S3_SD_EEESB_DpOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZN2v84base18ContextualVariableINS_8internal6torque13GlobalContextES4_E4top_E = comdat any

@.str = private unnamed_addr constant [17 x i8] c"instance-types.h\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"// Instance types for all classes except for those that use InstanceType as flags.\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"#define TORQUE_ASSIGNED_INSTANCE_TYPES(V) \\\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"// Instance types for all classes except for those that use\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"// InstanceType as flags.\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"#define TORQUE_ASSIGNED_INSTANCE_TYPE_LIST(V) \\\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"// Pairs of (ClassName, INSTANCE_TYPE) for classes that have\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"// full Torque definitions.\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"#define TORQUE_INSTANCE_CHECKERS_SINGLE_FULLY_DEFINED(V) \\\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"// full Torque definitions and subclasses.\0A\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"#define TORQUE_INSTANCE_CHECKERS_MULTIPLE_FULLY_DEFINED(V) \\\0A\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"// Pairs of (ClassName, INSTANCE_TYPE) for classes that are\0A\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"// declared but not defined in Torque. These classes may\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"// correspond with actual C++ classes, but they are not\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"// guaranteed to.\0A\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"#define TORQUE_INSTANCE_CHECKERS_SINGLE_ONLY_DECLARED(V) \\\0A\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"// declared but not defined in Torque, and have subclasses.\0A\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"// These classes may correspond with actual C++ classes, but\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"// they are not guaranteed to.\0A\00", align 1
@.str.21 = private unnamed_addr constant [62 x i8] c"#define TORQUE_INSTANCE_CHECKERS_MULTIPLE_ONLY_DECLARED(V) \\\0A\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"// Triples of (ClassName, FIRST_TYPE, LAST_TYPE) for classes\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"// that have full Torque definitions.\0A\00", align 1
@.str.24 = private unnamed_addr constant [59 x i8] c"#define TORQUE_INSTANCE_CHECKERS_RANGE_FULLY_DEFINED(V) \\\0A\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"// that are declared but not defined in Torque. These classes\0A\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"// may correspond with actual C++ classes, but they are not\0A\00", align 1
@.str.27 = private unnamed_addr constant [59 x i8] c"#define TORQUE_INSTANCE_CHECKERS_RANGE_ONLY_DECLARED(V) \\\0A\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"_TYPE\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"  V(\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c") \\\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"  V(_, \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Map, \00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"_map, \00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"  V(Map, \00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Map) \\\0A\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"// Fully Torque-defined classes (both internal and exported).\0A\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"#define TORQUE_DEFINED_CLASS_LIST(V) \\\0A\00", align 1
@.str.39 = private unnamed_addr constant [56 x i8] c"#define TORQUE_DEFINED_VARSIZE_INSTANCE_TYPE_LIST(V) \\\0A\00", align 1
@.str.40 = private unnamed_addr constant [54 x i8] c"#define TORQUE_DEFINED_FIXED_INSTANCE_TYPE_LIST(V) \\\0A\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"#define TORQUE_DEFINED_INSTANCE_TYPE_LIST(V) \\\0A\00", align 1
@.str.42 = private unnamed_addr constant [50 x i8] c"  TORQUE_DEFINED_VARSIZE_INSTANCE_TYPE_LIST(V) \\\0A\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"  TORQUE_DEFINED_FIXED_INSTANCE_TYPE_LIST(V) \\\0A\00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"#define TORQUE_DEFINED_MAP_CSA_LIST_GENERATOR(V, _) \\\0A\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"#define TORQUE_DEFINED_MAP_ROOT_LIST(V) \\\0A\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"Expected only one root class type. Found: \00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@_ZN2v84base18ContextualVariableINS_8internal6torque13GlobalContextES4_E4top_E = linkonce_odr hidden thread_local local_unnamed_addr global ptr null, comdat, align 8
@.str.51 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.52 = private unnamed_addr constant [50 x i8] c"Instance type value requested for abstract class \00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"Failed to assign instance type \00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.55 = private unnamed_addr constant [56 x i8] c"Two classes requested to be the highest instance type: \00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c" within range for parent class \00", align 1
@.str.57 = private unnamed_addr constant [86 x i8] c"Class requested to be both highest and lowest instance type within its parent range: \00", align 1
@.str.58 = private unnamed_addr constant [55 x i8] c"Two classes requested to be the lowest instance type: \00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"V(FIRST_\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"V(\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c") /* \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c" */\\\0A\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c" */ \\\0A\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"V(LAST_\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c", FIRST_\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c", LAST_\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.68 = private unnamed_addr constant [61 x i8] c"https://source.chromium.org/chromium/chromium/src/+/main:v8/\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"?l=\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"&c=\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.72 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2v88internal6torque21ImplementationVisitor21GenerateInstanceTypesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1460) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.std::vector.122", align 8   ; 9 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::unordered_map.102", align 8 ; 14 uses
  %7 = alloca %"class.std::vector.122", align 8   ; 13 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %9 = alloca %"class.v8::internal::torque::MessageBuilder", align 8 ; 7 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.v8::internal::torque::IncludeGuardScope", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::unique_ptr", align 8  ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %17 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %18 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %19 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %20 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %21 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %22 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %31 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %32 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %33 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %34 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %35 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 21 uses
  %36 = alloca %"class.std::vector", align 8      ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.c, ptr %12, align 8
  %i.d = invoke noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #21
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117 unwind label %bb.bc ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.d, ptr %12, align 8
  store i64 16, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) @.str, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 16, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 0, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 67 uses
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.h, ptr %14, align 8
  %i.i = invoke noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #21
          to label %bb.a unwind label %bb.bd      ; 3 uses

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i117
  store ptr %i.i, ptr %14, align 8
  store i64 16, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 16, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 0, ptr %i.k, align 1
  invoke void @_ZN2v88internal6torque17IncludeGuardScopeC1ERSoNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 %14)
          to label %bb.b unwind label %bb.be

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %14, align 8               ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.h
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.h, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.1, i64 noundef 83)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.2, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124 unwind label %bb.bf ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !5)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !11
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.r, ptr %6, align 8, !noalias !11
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 1, ptr %i.s, align 8, !noalias !11
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !noalias !11
  store float 1.000000e+00, ptr %i.u, align 8, !noalias !11
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !noalias !11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !11
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque13GlobalContextES4_E4top_E) ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !11 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !noalias !11 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !11 ; 2 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i.i, label %.lr.ph.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  store ptr null, ptr %15, align 8, !alias.scope !11
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i

.lr.ph.i.i:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit124
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  br label %bb.c

._crit_edge.i.i125:                               ; preds = %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i
  store ptr %i.ce, ptr %7, align 8, !noalias !11
  store ptr null, ptr %15, align 8, !alias.scope !11
  %i.af = icmp eq ptr %i.ce, %i.cd
  br i1 %i.af, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph94.i.i

.lr.ph94.i.i:                                     ; preds = %._crit_edge.i.i125
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 2 uses
  br label %bb.w

bb.c:                                             ; preds = %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i, %.lr.ph.i.i
  %i.aj = phi ptr [ null, %.lr.ph.i.i ], [ %i.cd, %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i ] ; 11 uses
  %.sroa.075.091.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.cf, %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i ] ; 2 uses
  %i.ak = phi ptr [ null, %.lr.ph.i.i ], [ %i.ce, %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i ] ; 16 uses
  %i.al = load ptr, ptr %.sroa.075.091.i.i, align 8, !noalias !11 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 8, !noalias !11
  %i.ao = icmp eq i32 %i.an, 9
  br i1 %i.ao, label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.i.i, label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i

_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.i.i: ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.aq = load i8, ptr %i.ap, align 8, !range !12, !noalias !11, !noundef !13
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.at = load ptr, ptr %i.as, align 8, !noalias !11
  br label %_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i

bb.f:                                             ; preds = %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.i.i
  %i.au = invoke noundef ptr @_ZNK2v88internal6torque9TypeAlias7ResolveEv(ptr noundef nonnull align 8 dereferenceable(152) %i.al)
          to label %_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i unwind label %bb.h, !noalias !11

_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i55.i.i = phi ptr [ %i.at, %bb.e ], [ %i.au, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !11
  %.not.i56.i.i = icmp eq ptr %.0.i55.i.i, null
  br i1 %.not.i56.i.i, label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i55.i.i, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !noalias !11
  %i.ax = icmp eq i32 %i.aw, 6
  br i1 %i.ax, label %bb.i, label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i

bb.h:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %7, align 8, !noalias !11
  br label %bb.ak

bb.i:                                             ; preds = %bb.g
  store ptr %.0.i55.i.i, ptr %i.a, align 8, !noalias !11
  %i.az = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13unordered_mapIPKN2v88internal6torque9ClassTypeEPNS2_12_GLOBAL__N_116InstanceTypeTreeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.j unwind label %bb.k, !noalias !11 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !11
  %.not33.i.i = icmp eq ptr %i.ba, null
  br i1 %.not33.i.i, label %bb.l, label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i

bb.k:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %7, align 8, !noalias !11
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !11
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.bc = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %bb.m unwind label %bb.q, !noalias !11 ; 7 uses

bb.m:                                             ; preds = %bb.l
  store ptr %.0.i55.i.i, ptr %i.bc, align 8, !noalias !17
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false), !noalias !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store <4 x i32> <i32 2147483647, i32 -2147483648, i32 -1, i32 0>, ptr %i.be, align 8, !noalias !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store i32 0, ptr %i.bf, align 8, !noalias !17
  store ptr %i.bc, ptr %8, align 8, !alias.scope !14, !noalias !11
  store ptr %i.bc, ptr %i.az, align 8, !noalias !11
  %i.bg = load ptr, ptr %i.ae, align 8, !noalias !11
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.bg
  %i.bh = ptrtoint ptr %i.bc to i64               ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.thread.i.i

_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.thread.i.i: ; preds = %bb.m
  store i64 %i.bh, ptr %i.aj, align 8, !noalias !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.bi, ptr %i.ad, align 8, !noalias !11
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bj = ptrtoint ptr %i.aj to i64
  %i.bk = ptrtoint ptr %i.ak to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 4 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.o, label %_ZNKSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  store ptr %i.ak, ptr %7, align 8, !noalias !11
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #23
          to label %.noexc60.i.i unwind label %.loopexit.split-lp.i.i, !noalias !11

.noexc60.i.i:                                     ; preds = %bb.o
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.n
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %i.bo = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = select i1 %i.bo, i64 1, i64 %i.bn
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.bn ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bn
  %i.br = call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #21
          to label %.noexc61.i.i unwind label %.loopexit.i.i, !noalias !11 ; 5 uses

.noexc61.i.i:                                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bl
  store i64 %i.bh, ptr %i.bv, align 8, !noalias !11
  store ptr null, ptr %8, align 8, !noalias !11
  br i1 %i.bo, label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc61.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bu, %.noexc61.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ak, %.noexc61.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i.i.i, align 8, !alias.scope !21, !noalias !23
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i.i.i, align 8, !alias.scope !18, !noalias !24
  store ptr null, ptr %.092.i.i.i.i.i.i.i.i, align 8, !alias.scope !21, !noalias !23
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef nonnull %.092.i.i.i.i.i.i.i.i), !noalias !23
  %i.bw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.aj
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !25

_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc61.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.noexc61.i.i ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i28.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i28.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bl) #22, !noalias !11
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit27.i.i.i.i.i
  store ptr %i.by, ptr %i.ad, align 8, !noalias !11
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.bz, ptr %i.ae, align 8, !noalias !11
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.i.i, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.thread.i.i
  %i.ca = phi ptr [ %i.bi, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.thread.i.i ], [ %i.by, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.i.i ]
  %i.cb = phi ptr [ %i.ak, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.thread.i.i ], [ %i.bu, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !11
  br label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i

bb.q:                                             ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %7, align 8, !noalias !11
  br label %bb.s

.loopexit.i.i:                                    ; preds = %_ZNKSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %7, align 8, !noalias !11
  br label %bb.r

.loopexit.split-lp.i.i:                           ; preds = %bb.o
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20, !noalias !11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn34.i.i = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.r ], [ %i.cc, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.k
  %.pn34.pn.pn.i.i = phi { ptr, i32 } [ %i.bb, %bb.k ], [ %.pn34.i.i, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !11
  br label %bb.ak

_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i: ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i.i, %bb.j, %bb.g, %_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i
  %.ph.i.i = phi ptr [ %i.ca, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i.i ], [ %i.aj, %bb.g ], [ %i.aj, %_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i ], [ %i.aj, %bb.j ]
  %.ph140.i.i = phi ptr [ %i.cb, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i.i ], [ %i.ak, %bb.g ], [ %i.ak, %_ZNK2v88internal6torque9TypeAlias4typeEv.exit.i.i ], [ %i.ak, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !11
  br label %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i

_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.i.i: ; preds = %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i, %bb.d, %bb.c
  %i.cd = phi ptr [ %i.aj, %bb.d ], [ %i.aj, %bb.c ], [ %.ph.i.i, %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i ] ; 4 uses
  %i.ce = phi ptr [ %i.ak, %bb.d ], [ %i.ak, %bb.c ], [ %.ph140.i.i, %_ZN2v88internal6torque9TypeAlias11DynamicCastEPNS1_10DeclarableE.exit.thread.sink.split.i.i ] ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.075.091.i.i, i64 8 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ab
  br i1 %i.cg, label %._crit_edge.i.i125, label %bb.c

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i ], [ %i.ce, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i), !noalias !11, !inline_history !27
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 2 uses
  %.not.i.i64.i.i = icmp eq ptr %i.ch, %i.cd
  br i1 %.not.i.i64.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !28

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i125
  %.val630 = phi ptr [ null, %._crit_edge.i.i125 ], [ %.val54.i64.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i
  %.val1.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !11
  %i.ci = ptrtoint ptr %.val1.i.i.i to i64
  %i.cj = ptrtoint ptr %i.ce to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ck) #22, !noalias !11, !inline_history !29
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i

_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i: ; preds = %bb.u, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i.i
  %.val629 = phi ptr [ %.val630, %bb.u ], [ %.val630, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i ], [ null, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !11
  %.val.i.i.i65.i.i = load ptr, ptr %i.t, align 8, !noalias !11 ; 2 uses
  %.not1.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i65.i.i, null
  br i1 %.not1.i.i.i.i.i.i, label %_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeESt4pairIKS5_PNS2_12_GLOBAL__N_116InstanceTypeTreeEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.02.i.i.i.i.i.i = phi ptr [ %.0.val.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val.i.i.i65.i.i, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i ] ; 2 uses
  %.0.val.i.i.i.i.i.i = load ptr, ptr %.02.i.i.i.i.i.i, align 8, !noalias !11 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.02.i.i.i.i.i.i, i64 noundef 24) #22, !noalias !11
  %.not.i.i.i.i66.i.i = icmp eq ptr %.0.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i66.i.i, label %_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeESt4pairIKS5_PNS2_12_GLOBAL__N_116InstanceTypeTreeEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !30

_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeESt4pairIKS5_PNS2_12_GLOBAL__N_116InstanceTypeTreeEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev.exit.i.i
  %i.cl = load ptr, ptr %6, align 8, !noalias !11
  %i.cm = load i64, ptr %i.s, align 8, !noalias !11
  %i.cn = shl i64 %i.cm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cl, i8 0, i64 %i.cn, i1 false), !noalias !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false), !noalias !11
  %i.co = load ptr, ptr %6, align 8, !noalias !11 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.r
  br i1 %i.cp, label %_ZN2v88internal6torque12_GLOBAL__N_121BuildInstanceTypeTreeEv.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeESt4pairIKS5_PNS2_12_GLOBAL__N_116InstanceTypeTreeEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.cq = load i64, ptr %i.s, align 8, !noalias !11
  %i.cr = shl i64 %i.cq, 3
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #22, !noalias !11
  br label %_ZN2v88internal6torque12_GLOBAL__N_121BuildInstanceTypeTreeEv.exit.i

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i, %.lr.ph94.i.i
  %.val54.i.i = phi ptr [ null, %.lr.ph94.i.i ], [ %.val54.i64.i, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i ] ; 7 uses
  %.sroa.073.092.i.i = phi ptr [ %i.ce, %.lr.ph94.i.i ], [ %i.ei, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !11
  %.val53.i.i = load ptr, ptr %.sroa.073.092.i.i, align 8, !noalias !11
  %i.cs = load ptr, ptr %.val53.i.i, align 8, !noalias !11
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !11 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !noalias !11
  %i.cy = icmp eq i32 %i.cx, 6
  br i1 %i.cy, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr null, ptr %i.b, align 8, !noalias !11
  %.not.i68.i.i = icmp eq ptr %.val54.i.i, null
  br i1 %.not.i68.i.i, label %.thread.i.i, label %bb.z

.thread.i.i:                                      ; preds = %bb.y
  %i.cz = load ptr, ptr %.sroa.073.092.i.i, align 8, !noalias !11 ; 2 uses
  store ptr null, ptr %.sroa.073.092.i.i, align 8, !noalias !11
  store ptr %i.cz, ptr %15, align 8, !alias.scope !11
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !11
  %i.da = load ptr, ptr %.val54.i.i, align 8, !noalias !11
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 168
  %.val51.i.i = load ptr, ptr %.sroa.073.092.i.i, align 8, !noalias !11
  %i.dc = load ptr, ptr %.val51.i.i, align 8, !noalias !11
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !31
  invoke void @_ZN2v88internal6torque8ToStringIJRA43_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S3_SD_EEESB_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(43) @.str.49, ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 1 dereferenceable(6) @.str.50, ptr noundef nonnull align 8 dereferenceable(32) %i.dd)
          to label %.noexc69.i.i unwind label %bb.ae, !noalias !11

.noexc69.i.i:                                     ; preds = %bb.z
  invoke void @_ZN2v88internal6torque14MessageBuilderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13TorqueMessage4KindE(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0)
          to label %bb.aa unwind label %bb.ab, !noalias !11

bb.aa:                                            ; preds = %.noexc69.i.i
  %i.de = load ptr, ptr %5, align 8, !noalias !31 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ag
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.dg = load i64, ptr %i.ag, align 8, !noalias !31
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #22, !noalias !11
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.ab:                                            ; preds = %.noexc69.i.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %5, align 8, !noalias !31 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.ag
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i: ; preds = %bb.ab
  %i.dl = load i64, ptr %i.ag, align 8, !noalias !31
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #22, !noalias !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !31
  br label %.body.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !31
  %.val50.i.i = load ptr, ptr %.sroa.073.092.i.i, align 8, !noalias !11
  %i.dn = load ptr, ptr %.val50.i.i, align 8, !noalias !11
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 288
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !36
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dr = load i8, ptr %i.ai, align 4, !range !12, !noalias !11, !noundef !13
  %i.ds = trunc nuw i8 %i.dr to i1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ah, ptr noundef nonnull align 4 dereferenceable(28) %i.dq, i64 28, i1 false), !noalias !11
  br i1 %i.ds, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  store i8 1, ptr %i.ai, align 4, !noalias !11
  br label %bb.af

bb.ad:                                            ; preds = %bb.ai, %bb.ah
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ae:                                            ; preds = %bb.z
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.du, %bb.ae ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !11
  br label %bb.aj

bb.af:                                            ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  call void @_ZN2v88internal6torque14MessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #20, !noalias !11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !11
  %i.dv = load ptr, ptr %.sroa.073.092.i.i, align 8, !noalias !11 ; 2 uses
  store ptr null, ptr %.sroa.073.092.i.i, align 8, !noalias !11
  store ptr %i.dv, ptr %15, align 8, !alias.scope !11
  %i.dw = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 8 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !11 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !11 ; 2 uses
  %.not.i2.i.i.i.i.i.i.i.i = icmp eq ptr %i.dx, %i.dz
  br i1 %.not.i2.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i71.i.i

.lr.ph.i.i.i.i.i.i71.i.i:                         ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i71.i.i
  %.0.i3.i.i.i.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i71.i.i ], [ %i.dx, %bb.af ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i.i.i.i.i.i), !noalias !11, !inline_history !39
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ea, %i.dz
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i71.i.i, !llvm.loop !28

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i71.i.i
  %.val.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.dw, align 8, !noalias !11
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i, %bb.af
  %.val.i.i.i.i.i.i72.i.i = phi ptr [ %.val.pre.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.dx, %bb.af ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i72.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 24
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !noalias !11
  %i.ec = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i to i64
  %i.ed = ptrtoint ptr %.val.i.i.i.i.i.i72.i.i to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i72.i.i, i64 noundef %i.ee) #22, !noalias !11, !inline_history !40
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i: ; preds = %bb.ag, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val54.i.i, i64 noundef 56) #22, !noalias !11, !inline_history !41
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i

bb.ah:                                            ; preds = %bb.x
  store ptr %i.cu, ptr %i.b, align 8, !noalias !11
  %i.ef = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt13unordered_mapIPKN2v88internal6torque9ClassTypeEPNS2_12_GLOBAL__N_116InstanceTypeTreeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEEixERSE_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ai unwind label %bb.ad, !noalias !11

bb.ai:                                            ; preds = %bb.ah
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !11
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  invoke fastcc void @_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.073.092.i.i)
          to label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i unwind label %bb.ad, !noalias !11

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit.i.i: ; preds = %bb.ai, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i, %.thread.i.i
  %.val54.i64.i = phi ptr [ %.val54.i.i, %bb.ai ], [ %i.dv, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i ], [ %i.cz, %.thread.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !11
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.073.092.i.i, i64 8 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.cd
  br i1 %i.ej, label %.lr.ph.i.i.i, label %bb.w

bb.aj:                                            ; preds = %.body.i.i, %bb.ad
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.dt, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !11
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.t, %bb.h
  %.pn34.pn.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.aj ], [ %i.ay, %bb.h ], [ %.pn34.pn.pn.i.i, %bb.t ]
  call fastcc void @_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20, !noalias !11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !11
  call fastcc void @_ZNSt13unordered_mapIPKN2v88internal6torque9ClassTypeEPNS2_12_GLOBAL__N_116InstanceTypeTreeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #20, !noalias !11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !11
  br label %.body

_ZN2v88internal6torque12_GLOBAL__N_121BuildInstanceTypeTreeEv.exit.i: ; preds = %bb.v, %_ZNSt10_HashtableIPKN2v88internal6torque9ClassTypeESt4pairIKS5_PNS2_12_GLOBAL__N_116InstanceTypeTreeEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !11
  %.not.i.i = icmp eq ptr %.val629, null
  %i.ek = ptrtoint ptr %.val629 to i64
  br i1 %.not.i.i, label %bb.at, label %bb.al

bb.al:                                            ; preds = %_ZN2v88internal6torque12_GLOBAL__N_121BuildInstanceTypeTreeEv.exit.i
  invoke fastcc void @_ZN2v88internal6torque12_GLOBAL__N_132PropagateInstanceTypeConstraintsEPNS2_16InstanceTypeTreeE(ptr noundef nonnull %.val629)
          to label %bb.am unwind label %bb.ar, !noalias !5

bb.am:                                            ; preds = %bb.al
  store ptr null, ptr %15, align 8, !alias.scope !5
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !42
  store i64 %i.ek, ptr %4, align 8, !noalias !42
  store ptr null, ptr %10, align 8, !noalias !42
  %i.el = invoke fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE(ptr noundef align 8 %4, i32 noundef 0, ptr noundef nonnull %3)
          to label %bb.an unwind label %.body.i, !noalias !42 ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.em = load ptr, ptr %4, align 8, !noalias !42 ; 5 uses
  %.not.i.i6.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i6.i, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i17.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !42 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !42 ; 2 uses
  %.not.i2.i.i.i.i7.i = icmp eq ptr %i.eo, %i.eq
  br i1 %.not.i2.i.i.i.i7.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i13.i, label %.lr.ph.i.i.i.i8.i

.lr.ph.i.i.i.i8.i:                                ; preds = %bb.ao, %.lr.ph.i.i.i.i8.i
  %.0.i3.i.i.i.i9.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i8.i ], [ %i.eo, %bb.ao ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i.i9.i), !noalias !42, !inline_history !45
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i9.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i10.i = icmp eq ptr %i.er, %i.eq
  br i1 %.not.i.i.i.i.i10.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i11.i, label %.lr.ph.i.i.i.i8.i, !llvm.loop !28

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i11.i: ; preds = %.lr.ph.i.i.i.i8.i
  %.val.pre.i.i.i.i12.i = load ptr, ptr %i.en, align 8, !noalias !42
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i13.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i13.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i11.i, %bb.ao
  %.val.i.i.i3.i.i = phi ptr [ %.val.pre.i.i.i.i12.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i11.i ], [ %i.eo, %bb.ao ] ; 3 uses
  %.not.i.i.i.i.i.i14.i = icmp eq ptr %.val.i.i.i3.i.i, null
  br i1 %.not.i.i.i.i.i.i14.i, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i16.i, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i13.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %.val1.i.i.i.i15.i = load ptr, ptr %i.es, align 8, !noalias !42
  %i.et = ptrtoint ptr %.val1.i.i.i.i15.i to i64
  %i.eu = ptrtoint ptr %.val.i.i.i3.i.i to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i3.i.i, i64 noundef %i.ev) #22, !noalias !42, !inline_history !46
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i16.i

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i16.i: ; preds = %bb.ap, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i13.i
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 56) #22, !noalias !42, !inline_history !47
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i17.i

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i17.i: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i16.i, %bb.an
  %.val.i.i = load ptr, ptr %3, align 8, !noalias !42 ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val1.i.i = load ptr, ptr %i.ew, align 8, !noalias !42 ; 2 uses
  %i.ex = icmp eq ptr %.val.i.i, %.val1.i.i
  br i1 %i.ex, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i24.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i17.i
  %.val.i.i.i4.i.i = load i64, ptr %.val.i.i, align 8, !noalias !42
  store ptr null, ptr %.val.i.i, align 8, !noalias !42
  br label %.lr.ph.i.i18.i

.lr.ph.i.i18.i:                                   ; preds = %.lr.ph.i.i18.i, %bb.aq
  %.0.i3.i.i19.i = phi ptr [ %i.ey, %.lr.ph.i.i18.i ], [ %.val.i.i, %bb.aq ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef nonnull %.0.i3.i.i19.i), !noalias !42, !inline_history !27
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i3.i.i19.i, i64 8 ; 2 uses
  %.not.i.i.i20.i = icmp eq ptr %i.ey, %.val1.i.i
  br i1 %.not.i.i.i20.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i21.loopexit.i, label %.lr.ph.i.i18.i, !llvm.loop !28

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i24.i: ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit.i17.i
  %.not.i.i.i.i25.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i25.i, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit45.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i21.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i21.loopexit.i: ; preds = %.lr.ph.i.i18.i
  %i.ez = inttoptr i64 %.val.i.i.i4.i.i to ptr
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i21.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i21.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i21.loopexit.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i24.i
  %.sroa.0.0.i = phi ptr [ null, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i24.i ], [ %i.ez, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i21.loopexit.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val1.i.i22.i = load ptr, ptr %i.fa, align 8, !noalias !42
  %i.fb = ptrtoint ptr %.val1.i.i22.i to i64
  %i.fc = ptrtoint ptr %.val.i.i to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.fd) #22, !noalias !42, !inline_history !29
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit45.i

.body.i:                                          ; preds = %bb.am
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20, !noalias !42
  call fastcc void @_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !42
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #20, !noalias !5
  br label %bb.as

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit45.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i21.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i24.i
  %.sroa.0.1.i = phi ptr [ null, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i24.i ], [ %.sroa.0.0.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.thread.i21.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !5
  store ptr %.sroa.0.1.i, ptr %15, align 8, !alias.scope !5
  br label %bb.at

bb.ar:                                            ; preds = %bb.al
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.fe, %.body.i ], [ %i.ff, %bb.ar ]
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #20
  br label %.body

bb.at:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit45.i, %_ZN2v88internal6torque12_GLOBAL__N_121BuildInstanceTypeTreeEv.exit.i
  %.val628 = phi ptr [ null, %_ZN2v88internal6torque12_GLOBAL__N_121BuildInstanceTypeTreeEv.exit.i ], [ %.sroa.0.1.i, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit45.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %16)
          to label %bb.au unwind label %bb.bg

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %17)
          to label %bb.av unwind label %bb.bh

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %18)
          to label %bb.aw unwind label %bb.bi

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %19)
          to label %bb.ax unwind label %bb.bj

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %20)
          to label %bb.ay unwind label %bb.bk

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %21)
          to label %bb.az unwind label %bb.bl

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %22)
          to label %bb.ba unwind label %bb.bm

bb.ba:                                            ; preds = %bb.az
  %.not.i = icmp eq ptr %.val628, null            ; 2 uses
  br i1 %.not.i, label %bb.bo, label %._crit_edge.i.i126

._crit_edge.i.i126:                               ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.fg = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.fg, ptr %23, align 8
  store i16 8224, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 2, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %23, i64 18
  store i8 0, ptr %i.fi, align 2
  %i.fj = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %16, i64 16
  invoke fastcc void @_ZN2v88internal6torque12_GLOBAL__N_118PrintInstanceTypesEPNS2_16InstanceTypeTreeERSoS5_S5_S5_S5_S5_S5_S5_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %.val628, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.fp, ptr noundef nonnull align 8 dereferenceable(8) %i.fo, ptr noundef nonnull align 8 dereferenceable(8) %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.bb unwind label %bb.bn

end_hunk_0
