Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_simdlib?download=true
inline.NumInlined: 349
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
%"struct.std::__uniq_ptr_data.5" = type { %"class.std::__uniq_ptr_impl.6" }
%"class.std::__uniq_ptr_impl.6" = type { %"class.std::tuple.7" }
%"class.std::tuple.7" = type { %"struct.std::_Tuple_impl.8" }
%"struct.std::_Tuple_impl.8" = type { %"struct.std::_Head_base.11" }
%"struct.std::_Head_base.11" = type { ptr }
%"class.testing::Message" = type { %"class.std::unique_ptr.12" }
%"class.std::unique_ptr.12" = type { %"struct.std::__uniq_ptr_data.13" }
%"struct.std::__uniq_ptr_data.13" = type { %"class.std::__uniq_ptr_impl.14" }
%"class.std::__uniq_ptr_impl.14" = type { %"class.std::tuple.15" }
%"class.std::tuple.15" = type { %"struct.std::_Tuple_impl.16" }
%"struct.std::_Tuple_impl.16" = type { %"struct.std::_Head_base.19" }
%"struct.std::_Head_base.19" = type { ptr }
%"class.testing::internal::AssertHelper" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.testing::internal::GTestLog" = type { i32 }
%"struct.testing::internal::CodeLocation" = type <{ %"class.std::__cxx11::basic_string", i32, [4 x i8] }>

$_ZN41TestSIMDLib_TestCmpltAndBlendInplace_TestD0Ev = comdat any

$_ZN7testing4Test5SetupEv = comdat any

$_ZN37TestSIMDLib_TestCmpltMinMaxFloat_TestD0Ev = comdat any

$_ZN35TestSIMDLib_TestCmpltMinMaxInt_TestD0Ev = comdat any

$_ZN37TestSIMDLib_TestCmpltMinMaxInt16_TestD0Ev = comdat any

$_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = comdat any

$_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = comdat any

$_ZN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestE10CreateTestEv = comdat any

$_ZN7testing15AssertionResultD2Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestE10CreateTestEv = comdat any

$_ZN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestE10CreateTestEv = comdat any

$_ZN7testing8internal15TestFactoryBaseD2Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestE10CreateTestEv = comdat any

$_ZTVN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE = comdat any

$_ZTSN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryBaseE = comdat any

$_ZTSN7testing8internal15TestFactoryBaseE = comdat any

$_ZTVN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE = comdat any

$_ZTSN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE = comdat any

$_ZTVN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE = comdat any

$_ZTSN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE = comdat any

$_ZTVN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE = comdat any

$_ZTSN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE = comdat any

@_ZTV41TestSIMDLib_TestCmpltAndBlendInplace_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI41TestSIMDLib_TestCmpltAndBlendInplace_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN41TestSIMDLib_TestCmpltAndBlendInplace_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN41TestSIMDLib_TestCmpltAndBlendInplace_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI41TestSIMDLib_TestCmpltAndBlendInplace_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS41TestSIMDLib_TestCmpltAndBlendInplace_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS41TestSIMDLib_TestCmpltAndBlendInplace_Test = dso_local constant [44 x i8] c"41TestSIMDLib_TestCmpltAndBlendInplace_Test\00", align 1
@_ZTIN7testing4TestE = external constant ptr
@_ZTV37TestSIMDLib_TestCmpltMinMaxFloat_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI37TestSIMDLib_TestCmpltMinMaxFloat_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN37TestSIMDLib_TestCmpltMinMaxFloat_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN37TestSIMDLib_TestCmpltMinMaxFloat_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI37TestSIMDLib_TestCmpltMinMaxFloat_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS37TestSIMDLib_TestCmpltMinMaxFloat_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTS37TestSIMDLib_TestCmpltMinMaxFloat_Test = dso_local constant [40 x i8] c"37TestSIMDLib_TestCmpltMinMaxFloat_Test\00", align 1
@_ZTV35TestSIMDLib_TestCmpltMinMaxInt_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI35TestSIMDLib_TestCmpltMinMaxInt_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN35TestSIMDLib_TestCmpltMinMaxInt_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN35TestSIMDLib_TestCmpltMinMaxInt_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI35TestSIMDLib_TestCmpltMinMaxInt_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS35TestSIMDLib_TestCmpltMinMaxInt_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTS35TestSIMDLib_TestCmpltMinMaxInt_Test = dso_local constant [38 x i8] c"35TestSIMDLib_TestCmpltMinMaxInt_Test\00", align 1
@_ZTV37TestSIMDLib_TestCmpltMinMaxInt16_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI37TestSIMDLib_TestCmpltMinMaxInt16_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN37TestSIMDLib_TestCmpltMinMaxInt16_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN37TestSIMDLib_TestCmpltMinMaxInt16_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI37TestSIMDLib_TestCmpltMinMaxInt16_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS37TestSIMDLib_TestCmpltMinMaxInt16_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTS37TestSIMDLib_TestCmpltMinMaxInt16_Test = dso_local constant [40 x i8] c"37TestSIMDLib_TestCmpltMinMaxInt16_Test\00", align 1
@_ZN41TestSIMDLib_TestCmpltAndBlendInplace_Test10test_info_E = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [12 x i8] c"TestSIMDLib\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"TestCmpltAndBlendInplace\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/faiss/faiss/tests/test_simdlib.cpp\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"/opt-bench/work/faiss/faiss/build/_deps/googletest-src/googletest/include/gtest/internal/gtest-internal.h\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Condition !test_case_fp || !test_suite_fp failed. \00", align 1
@.str.7 = private unnamed_addr constant [107 x i8] c"Test can not provide both SetUpTestSuite and SetUpTestCase, please make sure there is only one present at \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.9 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE = linkonce_odr dso_local constant [82 x i8] c"N7testing8internal15TestFactoryImplI41TestSIMDLib_TestCmpltAndBlendInplace_TestEE\00", comdat, align 1
@_ZTIN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant [37 x i8] c"N7testing8internal15TestFactoryBaseE\00", comdat, align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@_ZN37TestSIMDLib_TestCmpltMinMaxFloat_Test10test_info_E = dso_local global ptr null, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"TestCmpltMinMaxFloat\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE = linkonce_odr dso_local constant [78 x i8] c"N7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxFloat_TestEE\00", comdat, align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"minValues.is_same_as(expectedMinValues)\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"minIndices.is_same_as(expectedMinIndices)\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"maxValues.is_same_as(expectedMaxValues)\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"maxIndices.is_same_as(expectedMaxIndices)\00", align 1
@_ZN35TestSIMDLib_TestCmpltMinMaxInt_Test10test_info_E = dso_local global ptr null, align 8
@.str.21 = private unnamed_addr constant [19 x i8] c"TestCmpltMinMaxInt\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE = linkonce_odr dso_local constant [76 x i8] c"N7testing8internal15TestFactoryImplI35TestSIMDLib_TestCmpltMinMaxInt_TestEE\00", comdat, align 1
@_ZN37TestSIMDLib_TestCmpltMinMaxInt16_Test10test_info_E = dso_local global ptr null, align 8
@.str.23 = private unnamed_addr constant [21 x i8] c"TestCmpltMinMaxInt16\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE = linkonce_odr dso_local constant [78 x i8] c"N7testing8internal15TestFactoryImplI37TestSIMDLib_TestCmpltMinMaxInt16_TestEE\00", comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_test_simdlib.cpp, ptr null }]

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN41TestSIMDLib_TestCmpltAndBlendInplace_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #14
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN41TestSIMDLib_TestCmpltAndBlendInplace_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN5faiss12_GLOBAL__N_123cmplt_and_blend_inplaceENS_16simd8float32_tplILNS_9SIMDLevelE0EEENS_15simd8uint32_tplILS2_0EEERS3_RS5_.exit:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN37TestSIMDLib_TestCmpltMinMaxFloat_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN37TestSIMDLib_TestCmpltMinMaxFloat_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN35TestSIMDLib_TestCmpltMinMaxInt_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN35TestSIMDLib_TestCmpltMinMaxInt_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN37TestSIMDLib_TestCmpltMinMaxInt16_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN37TestSIMDLib_TestCmpltMinMaxInt16_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 6 uses
  %2 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 5 uses
  %3 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 6 uses
  %4 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 5 uses
  %5 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 10 uses
  %6 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 10 uses
  %7 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 10 uses
  %8 = alloca %"struct.faiss::simd16uint16_tpl", align 16 ; 10 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, ptr %1, align 16
  %.sroa.0204.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <8 x i16> <i16 1000, i16 1001, i16 1002, i16 1003, i16 1004, i16 1005, i16 1006, i16 1007>, ptr %.sroa.0204.sroa.9.0..sroa_idx, align 16
  store <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, ptr %2, align 16
  %.sroa.0205.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <8 x i16> <i16 1000, i16 1001, i16 1002, i16 1003, i16 1004, i16 1005, i16 1006, i16 1007>, ptr %.sroa.0205.sroa.9.0..sroa_idx, align 16
  store <8 x i16> <i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17>, ptr %3, align 16
  %.sroa.0206.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i16> <i16 1010, i16 1011, i16 1012, i16 1013, i16 1014, i16 1015, i16 1016, i16 1017>, ptr %.sroa.0206.sroa.9.0..sroa_idx, align 16
  store <8 x i16> splat (i16 5), ptr %4, align 16
  %.sroa.0207.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i16> splat (i16 1005), ptr %.sroa.0207.sroa.9.0..sroa_idx, align 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.027.i = phi i64 [ 0, %bb.a ], [ %i.ac, %bb.b ] ; 9 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %.027.i
  %i.r = load i16, ptr %i.q, align 2, !tbaa !10   ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.027.i
  %i.t = load i16, ptr %i.s, align 2, !tbaa !10   ; 3 uses
  %i.u = icmp ult i16 %i.r, %i.t                  ; 2 uses
  %..i = tail call i16 @llvm.umin.i16(i16 %i.r, i16 %i.t)
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %.027.i
  store i16 %..i, ptr %i.v, align 2, !tbaa !10
  %.pn.i = select i1 %i.u, ptr %3, ptr %1
  %.in.i = getelementptr inbounds nuw [2 x i8], ptr %.pn.i, i64 %.027.i
  %i.w = load i16, ptr %.in.i, align 2, !tbaa !10
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %.027.i
  store i16 %i.w, ptr %i.x, align 2, !tbaa !10
  %i.y = tail call i16 @llvm.umax.i16(i16 %i.r, i16 %i.t)
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %.027.i
  store i16 %i.y, ptr %i.z, align 2, !tbaa !10
  %.pn25.i = select i1 %i.u, ptr %1, ptr %3
  %.in24.i = getelementptr inbounds nuw [2 x i8], ptr %.pn25.i, i64 %.027.i
  %i.aa = load i16, ptr %.in24.i, align 2, !tbaa !10
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %.027.i
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !10
  %i.ac = add nuw nsw i64 %.027.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, 16
  br i1 %exitcond.not.i, label %_ZN5faiss18cmplt_min_max_fastENS_16simd16uint16_tplILNS_9SIMDLevelE0EEES2_S2_S2_RS2_S3_S3_S3_.exit, label %bb.b, !llvm.loop !30

_ZN5faiss18cmplt_min_max_fastENS_16simd16uint16_tplILNS_9SIMDLevelE0EEES2_S2_S2_RS2_S3_S3_S3_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.ad = load <4 x i32>, ptr %5, align 16
  %.fr = freeze <4 x i32> %i.ad
  %i.ae = load i32, ptr %i.a, align 16
  %.not.4.i = icmp eq i32 %i.ae, 65602536
  %i.af = load i32, ptr %i.b, align 4
  %.not.5.i = icmp eq i32 %i.af, 65733610
  %i.ag = load i32, ptr %i.c, align 8
  %.not.6.i = icmp eq i32 %i.ag, 65864684
  %i.ah = icmp ne <4 x i32> %.fr, <i32 65536, i32 196610, i32 327684, i32 327685>
  %i.ai = bitcast <4 x i1> %i.ah to i4
  %i.aj = icmp eq i4 %i.ai, 0
  %op.rdx375 = select i1 %i.aj, i1 %.not.4.i, i1 false
  %i.ak = select i1 %op.rdx375, i1 %.not.5.i, i1 false
  %op.rdx377 = select i1 %i.ak, i1 %.not.6.i, i1 false
  br i1 %op.rdx377, label %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit, label %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit.thread

_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit.thread: ; preds = %_ZN5faiss18cmplt_min_max_fastENS_16simd16uint16_tplILNS_9SIMDLevelE0EEES2_S2_S2_RS2_S3_S3_S3_.exit
  store i8 0, ptr %9, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !42
  br label %bb.c

_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit: ; preds = %_ZN5faiss18cmplt_min_max_fastENS_16simd16uint16_tplILNS_9SIMDLevelE0EEES2_S2_S2_RS2_S3_S3_S3_.exit
  %i.am = load i32, ptr %i.d, align 4, !tbaa !10
  %.not.7.i = icmp eq i32 %i.am, 65864685         ; 2 uses
  %i.an = zext i1 %.not.7.i to i8
  store i8 %i.an, ptr %9, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !42
  br i1 %.not.7.i, label %bb.n, label %bb.c

bb.c:                                             ; preds = %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit.thread, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit
  %i.ap = phi ptr [ %i.al, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit.thread ], [ %i.ao, %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %12, align 8, !tbaa !17
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 229, ptr noundef %i.aq)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #13
  %i.ar = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.au = load i64, ptr %i.as, align 8, !tbaa !10
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.aw = load ptr, ptr %10, align 8, !tbaa !44   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(128) %i.aw) #13, !inline_history !31
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !20 ; 4 uses
  %.not.i.i47 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i47, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !17 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !10
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.ay

bb.i:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit53

bb.j:                                             ; preds = %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.k:                                             ; preds = %bb.e
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.l ], [ %i.bi, %bb.k ] ; 2 uses
  %i.bk = load ptr, ptr %12, align 8, !tbaa !17   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.m
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !10
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.bp = load ptr, ptr %10, align 8, !tbaa !44   ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i51, label %_ZN7testing7MessageD2Ev.exit53, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(128) %i.bp) #13, !inline_history !31
  br label %_ZN7testing7MessageD2Ev.exit53

_ZN7testing7MessageD2Ev.exit53:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.i ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.az

bb.n:                                             ; preds = %_ZNK5faiss14simd256bit_tplILNS_9SIMDLevelE0EE10is_same_asES2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.bt = load <4 x i32>, ptr %6, align 16
end_hunk_0
