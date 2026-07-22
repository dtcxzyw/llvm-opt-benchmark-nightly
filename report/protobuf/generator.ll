inline.NumInlined: 328
inline.NumDeleted: 244
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%struct.upb_alloc = type { ptr }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::allocator<std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.upb::generator::reflection::ReflectionGenerator" = type { %"class.google::protobuf::compiler::CodeGenerator" }
%"class.google::protobuf::compiler::CodeGenerator" = type { ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<const google::protobuf::FileDescriptor *, std::allocator<const google::protobuf::FileDescriptor *>>::_Vector_impl" }
%"struct.std::_Vector_base<const google::protobuf::FileDescriptor *, std::allocator<const google::protobuf::FileDescriptor *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const google::protobuf::FileDescriptor *, std::allocator<const google::protobuf::FileDescriptor *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const google::protobuf::FileDescriptor *, std::allocator<const google::protobuf::FileDescriptor *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.anon.30 = type { ptr }
%"struct.upb::generator::reflection::Options" = type { %"class.std::__cxx11::basic_string" }
%"class.upb::Arena" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Tuple_impl.13", %"struct.std::_Head_base.14" }
%"struct.std::_Tuple_impl.13" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"struct.std::_Head_base.14" = type { ptr }
%"class.upb::generator::DefPoolPair" = type { %"class.upb::DefPool", %"class.upb::DefPool" }
%"class.upb::DefPool" = type { %"class.std::unique_ptr.15" }
%"class.std::unique_ptr.15" = type { %"struct.std::__uniq_ptr_data.16" }
%"struct.std::__uniq_ptr_data.16" = type { %"class.std::__uniq_ptr_impl.17" }
%"class.std::__uniq_ptr_impl.17" = type { %"class.std::tuple.18" }
%"class.std::tuple.18" = type { %"struct.std::_Tuple_impl.19" }
%"struct.std::_Tuple_impl.19" = type { %"struct.std::_Tuple_impl.20", %"struct.std::_Head_base.22" }
%"struct.std::_Tuple_impl.20" = type { %"struct.std::_Head_base.21" }
%"struct.std::_Head_base.21" = type { ptr }
%"struct.std::_Head_base.22" = type { ptr }
%"class.absl::lts_20250512::flat_hash_set" = type { %"class.absl::lts_20250512::container_internal::raw_hash_set" }
%"class.absl::lts_20250512::container_internal::raw_hash_set" = type { %"class.absl::lts_20250512::container_internal::CompressedTuple" }
%"class.absl::lts_20250512::container_internal::CompressedTuple" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage" }
%"struct.absl::lts_20250512::container_internal::internal_compressed_tuple::Storage" = type { %"class.absl::lts_20250512::container_internal::CommonFields" }
%"class.absl::lts_20250512::container_internal::CommonFields" = type { i64, %"class.absl::lts_20250512::container_internal::HashtableSize", %"union.absl::lts_20250512::container_internal::HeapOrSoo" }
%"class.absl::lts_20250512::container_internal::HashtableSize" = type { i64 }
%"union.absl::lts_20250512::container_internal::HeapOrSoo" = type { %"struct.absl::lts_20250512::container_internal::HeapPtrs" }
%"struct.absl::lts_20250512::container_internal::HeapPtrs" = type { ptr, %"union.absl::lts_20250512::container_internal::MaybeInitializedPtr" }
%"union.absl::lts_20250512::container_internal::MaybeInitializedPtr" = type { ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl" }
%"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const google::protobuf::FieldDescriptor *, std::allocator<const google::protobuf::FieldDescriptor *>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN3upb9generator10reflection19ReflectionGeneratorD0Ev = comdat any

$_ZNK3upb9generator10reflection19ReflectionGenerator8GenerateEPKN6google8protobuf14FileDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS4_8compiler16GeneratorContextEPSD_ = comdat any

$_ZNK3upb9generator10reflection19ReflectionGenerator11GenerateAllERKSt6vectorIPKN6google8protobuf14FileDescriptorESaIS8_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS5_8compiler16GeneratorContextEPSI_ = comdat any

$_ZNK3upb9generator10reflection19ReflectionGenerator20GetSupportedFeaturesEv = comdat any

$_ZNK6google8protobuf8compiler13CodeGenerator14HasGenerateAllEv = comdat any

$_ZNK6google8protobuf8compiler13CodeGenerator20GetFeatureExtensionsEv = comdat any

$_ZNK3upb9generator10reflection19ReflectionGenerator17GetMinimumEditionEv = comdat any

$_ZNK3upb9generator10reflection19ReflectionGenerator17GetMaximumEditionEv = comdat any

$_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EED2Ev = comdat any

$_ZN3upb9generator11DefPoolPairD2Ev = comdat any

$_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS3_10StringHashENS3_8StringEqESaISB_EE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSJ_SK_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE = comdat any

$_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb = comdat any

$_ZTVN3upb9generator10reflection19ReflectionGeneratorE = comdat any

$_ZTIN3upb9generator10reflection19ReflectionGeneratorE = comdat any

$_ZTSN3upb9generator10reflection19ReflectionGeneratorE = comdat any

@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown parameter: $0\00", align 1
@_ZTVN3upb9generator10reflection19ReflectionGeneratorE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN3upb9generator10reflection19ReflectionGeneratorE, ptr @_ZN6google8protobuf8compiler13CodeGeneratorD2Ev, ptr @_ZN3upb9generator10reflection19ReflectionGeneratorD0Ev, ptr @_ZNK3upb9generator10reflection19ReflectionGenerator8GenerateEPKN6google8protobuf14FileDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS4_8compiler16GeneratorContextEPSD_, ptr @_ZNK3upb9generator10reflection19ReflectionGenerator11GenerateAllERKSt6vectorIPKN6google8protobuf14FileDescriptorESaIS8_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS5_8compiler16GeneratorContextEPSI_, ptr @_ZNK3upb9generator10reflection19ReflectionGenerator20GetSupportedFeaturesEv, ptr @_ZNK6google8protobuf8compiler13CodeGenerator14HasGenerateAllEv, ptr @_ZNK6google8protobuf8compiler13CodeGenerator20GetFeatureExtensionsEv, ptr @_ZNK3upb9generator10reflection19ReflectionGenerator17GetMinimumEditionEv, ptr @_ZNK3upb9generator10reflection19ReflectionGenerator17GetMaximumEditionEv] }, comdat, align 8
@_ZTIN3upb9generator10reflection19ReflectionGeneratorE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3upb9generator10reflection19ReflectionGeneratorE, ptr @_ZTIN6google8protobuf8compiler13CodeGeneratorE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3upb9generator10reflection19ReflectionGeneratorE = linkonce_odr dso_local constant [50 x i8] c"N3upb9generator10reflection19ReflectionGeneratorE\00", comdat, align 1
@_ZTIN6google8protobuf8compiler13CodeGeneratorE = external constant ptr
@upb_alloc_global = external global %struct.upb_alloc, align 8
@_ZN4absl12lts_2025051218container_internal11kEmptyGroupE = external constant [32 x i8], align 16

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3upb9generator10reflection12GenerateFileENS_10FileDefPtrERKNS1_7OptionsEPN6google8protobuf8compiler16GeneratorContextE(ptr %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN3upb9generator10reflection24GenerateReflectionHeaderENS_10FileDefPtrERKNS1_7OptionsEPN6google8protobuf8compiler16GeneratorContextE(ptr %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  tail call void @_ZN3upb9generator10reflection24GenerateReflectionSourceENS_10FileDefPtrERKNS1_7OptionsEPN6google8protobuf8compiler16GeneratorContextE(ptr %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret void
}

declare void @_ZN3upb9generator10reflection24GenerateReflectionHeaderENS_10FileDefPtrERKNS1_7OptionsEPN6google8protobuf8compiler16GeneratorContextE(ptr, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN3upb9generator10reflection24GenerateReflectionSourceENS_10FileDefPtrERKNS1_7OptionsEPN6google8protobuf8compiler16GeneratorContextE(ptr, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3upb9generator10reflection12ParseOptionsESt17basic_string_viewIcSt11char_traitsIcEEPNS1_7OptionsEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %0, ptr %1, ptr noundef %2, ptr nofree noundef captures(address) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [1 x %"class.std::basic_string_view"], align 16 ; 5 uses
  %5 = alloca %"class.std::vector", align 8       ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !8
  invoke void @_ZN6google8protobuf8compiler23ParseGeneratorParameterESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorISt4pairINSt7__cxx1112basic_stringIcS4_SaIcEEESB_ESaISC_EE(i64 %0, ptr %1, ptr noundef nonnull align 8 %5)
          to label %_ZN3upb9generator23ParseGeneratorParameterB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.m, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.a, %bb.b ], [ %.pn, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  br label %common.resume

_ZN3upb9generator23ParseGeneratorParameterB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %5, align 8, !tbaa !11     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %.not30 = icmp eq ptr %i.b, %i.d
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3upb9generator23ParseGeneratorParameterB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.l
  %.sroa.020.031 = phi ptr [ %i.aw, %bb.l ], [ %i.b, %_ZN3upb9generator23ParseGeneratorParameterB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.020.031, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14
  %i.g = icmp eq i64 %i.f, 14
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %7 = load ptr, ptr %.sroa.020.031, align 8, !tbaa !19 ; 2 uses
  %i.h = load i64, ptr %7, align 1
  %i.i = xor i64 %i.h, 8245933105138658404
  %i.j = getelementptr i8, ptr %7, i64 6
  %i.k = load i64, ptr %i.j, align 1
  %i.l = xor i64 %i.k, 7810197660563173999
  %i.m = or i64 %i.i, %i.l
  %i.n = icmp ne i64 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.020.031, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.l unwind label %bb.c

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.020.031, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %9 = load ptr, ptr %.sroa.020.031, align 8, !tbaa !19
  %10 = load i64, ptr %8, align 8, !tbaa !14
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.s, ptr %6, align 8, !tbaa !23, !alias.scope !20
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 0, ptr %i.t, align 8, !tbaa !14, !alias.scope !20
  store i8 0, ptr %i.s, align 8, !tbaa !24, !alias.scope !20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !20
  store i64 %10, ptr %4, align 16, !noalias !20
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %9, ptr %i.u, align 8, !noalias !20
  invoke void @_ZN4absl12lts_2025051219substitute_internal24SubstituteAndAppendArrayEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EPKSA_m(ptr noundef nonnull align 8 %6, i64 21, ptr nonnull @.str.1, ptr noundef nonnull %4, i64 noundef 1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %6, align 8, !tbaa !19, !alias.scope !20 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.s
  br i1 %i.x, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.s, align 8, !tbaa !24, !alias.scope !20
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #16
  br label %.body

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !20
  %i.aa = load ptr, ptr %3, align 8, !tbaa !19    ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  %i.ad = load ptr, ptr %6, align 8, !tbaa !19    ; 6 uses
  %i.ae = icmp eq ptr %i.ad, %i.s                 ; 2 uses
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.ae, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.ae, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = load i64, ptr %i.t, align 8, !tbaa !14  ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %.not21.i = icmp eq ptr %6, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  switch i64 %i.af, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !24
  store i8 %i.ah, ptr %i.aa, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ai = load i64, ptr %i.t, align 8, !tbaa !14  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !14
  %i.ak = load ptr, ptr %3, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !24
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ad, ptr %3, align 8, !tbaa !19
  %i.an = load <2 x i64>, ptr %i.t, align 8, !tbaa !24
  store <2 x i64> %i.an, ptr %i.am, align 8, !tbaa !24
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ao = load i64, ptr %i.ab, align 8, !tbaa !24
  store ptr %i.ad, ptr %3, align 8, !tbaa !19
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load <2 x i64>, ptr %i.t, align 8, !tbaa !24
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aa, ptr %6, align 8, !tbaa !19
  store i64 %i.ao, ptr %i.s, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.s, ptr %6, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ar = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.aa, %bb.j ], [ %i.s, %bb.k ], [ %i.ad, %bb.f ]
  store i64 0, ptr %i.t, align 8, !tbaa !14
  store i8 0, ptr %i.ar, align 1, !tbaa !24
  %i.as = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.s
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.au = load i64, ptr %i.s, align 8, !tbaa !24
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.loopexit

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.020.031, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.m:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.v, %.body ]
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %common.resume

.loopexit:                                        ; preds = %bb.l, %_ZN3upb9generator23ParseGeneratorParameterB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.not26 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ true, %_ZN3upb9generator23ParseGeneratorParameterB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ true, %bb.l ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !26    ; 3 uses
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bk, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i ], [ %i.ax, %.loopexit ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !19 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !24
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !24
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #16
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %i.ay
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !26
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.bl = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i ], [ %i.ax, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !31
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #16
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i1 %.not26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
end_hunk_0
