Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_integration_tests?download=true
inline.NumInlined: 828
inline.NumDeleted: 464
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::pmr::unsynchronized_pool_resource" = type { %"class.std::pmr::memory_resource", %"class.std::pmr::__pool_resource", ptr }
%"class.std::pmr::memory_resource" = type { ptr }
%"class.std::pmr::__pool_resource" = type <{ %"struct.std::pmr::pool_options", %"class.std::vector.4", i32, [4 x i8] }>
%"struct.std::pmr::pool_options" = type { i64, i64 }
%"class.std::vector.4" = type { %"struct.std::_Vector_base.5" }
%"struct.std::_Vector_base.5" = type { %"struct.std::_Vector_base<std::pmr::__pool_resource::_BigBlock, std::pmr::polymorphic_allocator<std::pmr::__pool_resource::_BigBlock>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pmr::__pool_resource::_BigBlock, std::pmr::polymorphic_allocator<std::pmr::__pool_resource::_BigBlock>>::_Vector_impl" = type { %"class.std::pmr::polymorphic_allocator", %"struct.std::_Vector_base<std::pmr::__pool_resource::_BigBlock, std::pmr::polymorphic_allocator<std::pmr::__pool_resource::_BigBlock>>::_Vector_impl_data" }
%"class.std::pmr::polymorphic_allocator" = type { ptr }
%"struct.std::_Vector_base<std::pmr::__pool_resource::_BigBlock, std::pmr::polymorphic_allocator<std::pmr::__pool_resource::_BigBlock>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.proxy_integration_tests_detail::Point" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.pro::v4::proxy" = type { %"struct.pro::v4::detail::meta_ptr_indirect_impl", [16 x i8] }
%"struct.pro::v4::detail::meta_ptr_indirect_impl" = type { ptr }
%"class.testing::internal::GTestLog" = type { i32 }
%"class.testing::AssertionResult" = type { i8, %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.testing::Message" = type { %"class.std::unique_ptr.10" }
%"class.std::unique_ptr.10" = type { %"struct.std::__uniq_ptr_data.11" }
%"struct.std::__uniq_ptr_data.11" = type { %"class.std::__uniq_ptr_impl.12" }
%"class.std::__uniq_ptr_impl.12" = type { %"class.std::tuple.13" }
%"class.std::tuple.13" = type { %"struct.std::_Tuple_impl.14" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Head_base.17" }
%"struct.std::_Head_base.17" = type { ptr }
%"class.testing::internal::AssertHelper" = type { ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.pro::v4::proxy.19" = type { %"struct.pro::v4::detail::meta_ptr_indirect_impl.21", [16 x i8] }
%"struct.pro::v4::detail::meta_ptr_indirect_impl.21" = type { ptr }
%"struct.testing::internal::CodeLocation" = type <{ %"class.std::__cxx11::basic_string", i32, [4 x i8] }>

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt3pmr28unsynchronized_pool_resourceC2Ev = comdat any

$_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = comdat any

$_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = comdat any

$_ZN7testing15AssertionResultD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN39ProxyIntegrationTests_TestDrawable_TestD0Ev = comdat any

$_ZN7testing4Test5SetupEv = comdat any

$_ZN37ProxyIntegrationTests_TestLogger_TestD0Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEC1INS1_13allocated_ptrINS4_9RectangleENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESL_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail8DrawableEEENS4_7MemDrawEFvRSoEEC1INS1_13allocated_ptrINS4_9RectangleENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_S8_E_8__invokeESM_S8_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail8DrawableEEENS4_7MemAreaEDoFdvEEC1INS1_13allocated_ptrINS4_9RectangleENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESL_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrINS4_6CircleEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESH_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail8DrawableEEENS4_7MemDrawEFvRSoEEC1INS1_11inplace_ptrINS4_6CircleEEEEESt15in_place_type_tIT_EENUlRS6_S8_E_8__invokeESI_S8_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail8DrawableEEENS4_7MemAreaEDoFdvEEC1INS1_11inplace_ptrINS4_6CircleEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESH_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEC1IPNS4_5PointEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESG_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail8DrawableEEENS4_7MemDrawEFvRSoEEC1IPNS4_5PointEEESt15in_place_type_tIT_EENUlRS6_S8_E_8__invokeESH_S8_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail8DrawableEEENS4_7MemAreaEDoFdvEEC1IPNS4_5PointEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESG_ = comdat any

$_ZN7testing8internal15TestFactoryImplI39ProxyIntegrationTests_TestDrawable_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI39ProxyIntegrationTests_TestDrawable_TestE10CreateTestEv = comdat any

$_ZN7testing8internal15TestFactoryBaseD2Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI37ProxyIntegrationTests_TestLogger_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI37ProxyIntegrationTests_TestLogger_TestE10CreateTestEv = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_5proxyIN30proxy_integration_tests_detail6LoggerEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrINS4_12StreamLoggerEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESH_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail6LoggerEEENS4_6MemLogEFvPKcEEC1INS1_11inplace_ptrINS4_12StreamLoggerEEEEESt15in_place_type_tIT_EENUlRS6_S9_E_8__invokeESJ_S9_ = comdat any

$_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail6LoggerEEENS4_6MemLogEFvPKcRKSt9exceptionEEC1INS1_11inplace_ptrINS4_12StreamLoggerEEEEESt15in_place_type_tIT_EENUlRS6_S9_SC_E_8__invokeESM_S9_SC_ = comdat any

$_ZN30proxy_integration_tests_detail12StreamLogger3LogEPKcRKSt9exception = comdat any

$_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA71_cEENS_15AssertionResultEPKcSB_RKT_RKT0_ = comdat any

$_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZN7testing13PrintToStringIPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_ = comdat any

$_ZN7testing8internal21UniversalTersePrinterIPKcE5PrintES3_PSo = comdat any

$_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA51_cEENS_15AssertionResultEPKcSB_RKT_RKT0_ = comdat any

$_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA32_cEENS_15AssertionResultEPKcSB_RKT_RKT0_ = comdat any

$_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA61_cEENS_15AssertionResultEPKcSB_RKT_RKT0_ = comdat any

$_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS6_7MemDrawEFvRSoEEENS4_ISD_NS6_7MemAreaEDoFdvEEEEEEE7storageINS1_13allocated_ptrINS6_9RectangleENSt3pmr21polymorphic_allocatorISt4byteEEEEEE = comdat any

$_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS6_7MemDrawEFvRSoEEENS4_ISD_NS6_7MemAreaEDoFdvEEEEEEE7storageINS1_11inplace_ptrINS6_6CircleEEEEE = comdat any

$_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS6_7MemDrawEFvRSoEEENS4_ISD_NS6_7MemAreaEDoFdvEEEEEEE7storageIPNS6_5PointEEE = comdat any

$_ZTVN7testing8internal15TestFactoryImplI39ProxyIntegrationTests_TestDrawable_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryImplI39ProxyIntegrationTests_TestDrawable_TestEE = comdat any

$_ZTSN7testing8internal15TestFactoryImplI39ProxyIntegrationTests_TestDrawable_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryBaseE = comdat any

$_ZTSN7testing8internal15TestFactoryBaseE = comdat any

$_ZTVN7testing8internal15TestFactoryImplI37ProxyIntegrationTests_TestLogger_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryImplI37ProxyIntegrationTests_TestLogger_TestEE = comdat any

$_ZTSN7testing8internal15TestFactoryImplI37ProxyIntegrationTests_TestLogger_TestEE = comdat any

$_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN30proxy_integration_tests_detail6LoggerEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS6_6MemLogEFvPKcEEENS4_ISD_SE_FvSG_RKSt9exceptionEEEEEEE7storageINS1_11inplace_ptrINS6_12StreamLoggerEEEEE = comdat any

@.str = private unnamed_addr constant [9 x i8] c"shape = \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c", area = \00", align 1
@_ZZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21rectangle_memory_pool = internal global %"class.std::pmr::unsynchronized_pool_resource" zeroinitializer, align 8
@_ZGVZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21rectangle_memory_pool = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@.str.4 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@_ZZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8instance = internal global %"class.proxy_integration_tests_detail::Point" zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Invalid command\00", align 1
@_ZTISt13runtime_error = external constant ptr
@_ZN39ProxyIntegrationTests_TestDrawable_Test10test_info_E = dso_local global ptr null, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"ProxyIntegrationTests\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"TestDrawable\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/proxy/proxy/tests/proxy_integration_tests.cpp\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Rectangle 2 3\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"\22shape = {Rectangle: width = 2.00000, height = 3.00000}, area = 6.00000\22\00", align 1
@.str.12 = private unnamed_addr constant [71 x i8] c"shape = {Rectangle: width = 2.00000, height = 3.00000}, area = 6.00000\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"\22shape = {Circle: radius = 1.00000}, area = 3.14159\22\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"shape = {Circle: radius = 1.00000}, area = 3.14159\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"\22shape = {Point}, area = 0.00000\22\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"shape = {Point}, area = 0.00000\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Triangle 2 3\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"e.what()\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"\22Invalid command\22\00", align 1
@_ZN37ProxyIntegrationTests_TestLogger_Test10test_info_E = dso_local global ptr null, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"TestLogger\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@_ZTISt9exception = external constant ptr
@.str.24 = private unnamed_addr constant [15 x i8] c"runtime error!\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.27 = private unnamed_addr constant [65 x i8] c"\22[INFO] hello\\n[ERROR] world (exception info: runtime error!)\\n\22\00", align 1
@.str.28 = private unnamed_addr constant [61 x i8] c"[INFO] hello\0A[ERROR] world (exception info: runtime error!)\0A\00", align 1
@_ZTV39ProxyIntegrationTests_TestDrawable_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI39ProxyIntegrationTests_TestDrawable_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN39ProxyIntegrationTests_TestDrawable_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN39ProxyIntegrationTests_TestDrawable_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI39ProxyIntegrationTests_TestDrawable_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS39ProxyIntegrationTests_TestDrawable_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS39ProxyIntegrationTests_TestDrawable_Test = dso_local constant [42 x i8] c"39ProxyIntegrationTests_TestDrawable_Test\00", align 1
@_ZTIN7testing4TestE = external constant ptr
@_ZTV37ProxyIntegrationTests_TestLogger_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI37ProxyIntegrationTests_TestLogger_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN37ProxyIntegrationTests_TestLogger_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN37ProxyIntegrationTests_TestLogger_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI37ProxyIntegrationTests_TestLogger_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS37ProxyIntegrationTests_TestLogger_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTS37ProxyIntegrationTests_TestLogger_Test = dso_local constant [40 x i8] c"37ProxyIntegrationTests_TestLogger_Test\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS6_7MemDrawEFvRSoEEENS4_ISD_NS6_7MemAreaEDoFdvEEEEEEE7storageINS1_13allocated_ptrINS6_9RectangleENSt3pmr21polymorphic_allocatorISt4byteEEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEC1INS1_13allocated_ptrINS4_9RectangleENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESL_, ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail8DrawableEEENS4_7MemDrawEFvRSoEEC1INS1_13allocated_ptrINS4_9RectangleENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_S8_E_8__invokeESM_S8_, ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail8DrawableEEENS4_7MemAreaEDoFdvEEC1INS1_13allocated_ptrINS4_9RectangleENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESL_ }, comdat, align 8
@.str.33 = private unnamed_addr constant [21 x i8] c"{Rectangle: width = \00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c", height = \00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"stod\00", align 1
@_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS6_7MemDrawEFvRSoEEENS4_ISD_NS6_7MemAreaEDoFdvEEEEEEE7storageINS1_11inplace_ptrINS6_6CircleEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrINS4_6CircleEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESH_, ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail8DrawableEEENS4_7MemDrawEFvRSoEEC1INS1_11inplace_ptrINS4_6CircleEEEEESt15in_place_type_tIT_EENUlRS6_S8_E_8__invokeESI_S8_, ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail8DrawableEEENS4_7MemAreaEDoFdvEEC1INS1_11inplace_ptrINS4_6CircleEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESH_ }, comdat, align 8
@.str.38 = private unnamed_addr constant [19 x i8] c"{Circle: radius = \00", align 1
@_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS6_7MemDrawEFvRSoEEENS4_ISD_NS6_7MemAreaEDoFdvEEEEEEE7storageIPNS6_5PointEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEC1IPNS4_5PointEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESG_, ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail8DrawableEEENS4_7MemDrawEFvRSoEEC1IPNS4_5PointEEESt15in_place_type_tIT_EENUlRS6_S8_E_8__invokeESH_S8_, ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail8DrawableEEENS4_7MemAreaEDoFdvEEC1IPNS4_5PointEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESG_ }, comdat, align 8
@.str.40 = private unnamed_addr constant [8 x i8] c"{Point}\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI39ProxyIntegrationTests_TestDrawable_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI39ProxyIntegrationTests_TestDrawable_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI39ProxyIntegrationTests_TestDrawable_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI39ProxyIntegrationTests_TestDrawable_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI39ProxyIntegrationTests_TestDrawable_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI39ProxyIntegrationTests_TestDrawable_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI39ProxyIntegrationTests_TestDrawable_TestEE = linkonce_odr dso_local constant [80 x i8] c"N7testing8internal15TestFactoryImplI39ProxyIntegrationTests_TestDrawable_TestEE\00", comdat, align 1
@_ZTIN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant [37 x i8] c"N7testing8internal15TestFactoryBaseE\00", comdat, align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN7testing8internal15TestFactoryImplI37ProxyIntegrationTests_TestLogger_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI37ProxyIntegrationTests_TestLogger_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI37ProxyIntegrationTests_TestLogger_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI37ProxyIntegrationTests_TestLogger_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI37ProxyIntegrationTests_TestLogger_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI37ProxyIntegrationTests_TestLogger_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI37ProxyIntegrationTests_TestLogger_TestEE = linkonce_odr dso_local constant [78 x i8] c"N7testing8internal15TestFactoryImplI37ProxyIntegrationTests_TestLogger_TestEE\00", comdat, align 1
@_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN30proxy_integration_tests_detail6LoggerEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS6_6MemLogEFvPKcEEENS4_ISD_SE_FvSG_RKSt9exceptionEEEEEEE7storageINS1_11inplace_ptrINS6_12StreamLoggerEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN30proxy_integration_tests_detail6LoggerEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrINS4_12StreamLoggerEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESH_, ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail6LoggerEEENS4_6MemLogEFvPKcEEC1INS1_11inplace_ptrINS4_12StreamLoggerEEEEESt15in_place_type_tIT_EENUlRS6_S9_E_8__invokeESJ_S9_, ptr @_ZZN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIN30proxy_integration_tests_detail6LoggerEEENS4_6MemLogEFvPKcRKSt9exceptionEEC1INS1_11inplace_ptrINS4_12StreamLoggerEEEEESt15in_place_type_tIT_EENUlRS6_S9_SC_E_8__invokeESM_S9_SC_ }, comdat, align 8
@.str.44 = private unnamed_addr constant [8 x i8] c"[INFO] \00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"[ERROR] \00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c" (exception info: \00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.49 = private unnamed_addr constant [106 x i8] c"/opt-bench/work/proxy/proxy/build/_deps/googletest-src/googletest/include/gtest/internal/gtest-internal.h\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"Condition !test_case_fp || !test_suite_fp failed. \00", align 1
@.str.51 = private unnamed_addr constant [107 x i8] c"Test can not provide both SetUpTestSuite and SetUpTestCase, please make sure there is only one present at \00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.53 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_proxy_integration_tests.cpp, ptr null }]

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30proxy_integration_tests_detail21PrintDrawableToStringB5cxx11EN3pro2v45proxyINS_8DrawableEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !82
  %i.h = and i32 %i.g, -261
  %i.i = or disjoint i32 %i.h, 4
  store i32 %i.i, ptr %i.f, align 8, !tbaa !83
  %i.j = load i64, ptr %i.c, align 8
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 5, ptr %i.l, align 8, !tbaa !84
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !86
  invoke void %i.p(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN30proxy_integration_tests_detail7MemDraw8accessorIN3pro2v423proxy_indirect_accessorINS_8DrawableEEES0_JFvRSoEEE4DrawES7_.exit unwind label %bb.d, !inline_history !76

_ZN30proxy_integration_tests_detail7MemDraw8accessorIN3pro2v423proxy_indirect_accessorINS_8DrawableEEES0_JFvRSoEEE4DrawES7_.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.1, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1: ; preds = %_ZN30proxy_integration_tests_detail7MemDraw8accessorIN3pro2v423proxy_indirect_accessorINS_8DrawableEEES0_JFvRSoEEE4DrawES7_.exit
  %i.r = load ptr, ptr %1, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !88
  %i.u = call noundef double %i.t(ptr noundef nonnull align 1 dereferenceable(1) %1) #25, !inline_history !77
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, double noundef %i.u)
          to label %_ZNSolsEd.exit unwind label %bb.d ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28, !noalias !91 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %_ZNSolsEd.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29, !noalias !91 ; 2 uses
  %i.ab = icmp ugt ptr %i.y, %i.aa
  %.08.i9.i.i = select i1 %i.ab, ptr %i.y, ptr %i.aa ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30, !noalias !91
  %i.af = ptrtoint ptr %.08.i9.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !33, !noalias !91
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !34, !noalias !91
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !35, !noalias !91
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %_ZNSolsEd.exit
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !36, !alias.scope !91
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !34, !noalias !91 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !33, !noalias !91 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.an, ptr %0, align 8, !tbaa !34, !alias.scope !91
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !35, !noalias !91
  store i64 %i.au, ptr %i.am, align 8, !tbaa !35, !alias.scope !91
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !33, !noalias !91
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.av = phi i64 [ %i.ar, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !33, !alias.scope !91
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !34, !noalias !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aw, i8 0, i64 9, i1 false), !noalias !91
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull %i.ao, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !34, !alias.scope !91 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.am
  br i1 %i.ba, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.bb = load i64, ptr %i.am, align 8, !tbaa !35, !alias.scope !91
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #26
  br label %.body

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN30proxy_integration_tests_detail12ParseCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:.noexc
  %i.aj = icmp ugt i64 %i.ac, %i.ai
  br i1 %i.aj, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef %i.ab, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc28 unwind label %bb.h

.noexc28:                                         ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %i.z, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc28
  %i.ak = phi ptr [ %.pre.i.i, %.noexc28 ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ab
  store i8 %i.x, ptr %i.al, align 1, !tbaa !35
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !33
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ac
  store i8 0, ptr %i.an, align 1, !tbaa !35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

bb.h:                                             ; preds = %bb.q, %bb.o, %bb.g
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #25
  resume { ptr, i32 } %i.ao

bb.i:                                             ; preds = %bb.e
  %i.ap = icmp eq i8 %i.s, 34
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = xor i1 %.02137, true
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = icmp ne i8 %i.s, 32
  %or.cond = select i1 %i.ar, i1 true, i1 %.02137
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !45  ; 9 uses
  br i1 %or.cond, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !33
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !42
  %.not.i29 = icmp eq ptr %i.as, %i.aw
  br i1 %.not.i29, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !33
  store i8 0, ptr %i.ax, align 8, !tbaa !35
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store ptr %i.ba, ptr %i.f, align 8, !tbaa !43
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

bb.o:                                             ; preds = %bb.m
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.as)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit unwind label %bb.h

bb.p:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds i8, ptr %i.as, i64 -32 ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %i.as, i64 -24 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !33 ; 4 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !34 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.as, i64 -16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34: ; preds = %bb.p
  %i.bi = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.bi)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34
  %i.bk = phi i64 [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34 ]
  %i.bl = icmp ugt i64 %i.be, %i.bk
  br i1 %i.bl, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 noundef %i.bd, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc35 unwind label %bb.h

.noexc35:                                         ; preds = %bb.q
  %.pre.i.i33 = load ptr, ptr %i.bb, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32, %.noexc35
  %i.bm = phi ptr [ %.pre.i.i33, %.noexc35 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i32 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bd
  store i8 %i.s, ptr %i.bn, align 1, !tbaa !35
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !33
  %i.bo = load ptr, ptr %i.bb, align 8, !tbaa !34
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.be
  store i8 0, ptr %i.bp, align 1, !tbaa !35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJEEERS5_DpOT_.exit: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.l, %bb.j
  %.122 = phi i1 [ %.02137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.aq, %bb.j ], [ %.02137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36 ], [ false, %bb.l ], [ false, %bb.n ], [ false, %bb.o ]
  %.1 = phi i64 [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %.038, %bb.j ], [ %.038, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36 ], [ %.038, %bb.l ], [ %.038, %bb.n ], [ %.038, %bb.o ]
  %i.bq = add i64 %.1, 1                          ; 2 uses
  %.not = icmp ugt i64 %i.bq, %.08.i
  br i1 %.not, label %bb.d, label %bb.e, !llvm.loop !93

bb.r:                                             ; preds = %bb.d
  %i.br = getelementptr inbounds i8, ptr %i.m, i64 -32 ; 2 uses
  store ptr %i.br, ptr %i.f, align 8, !tbaa !43
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !34 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !35
  %i.bw = add i64 %i.bv, 1
  tail call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !34 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !35
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pro::v4::proxy") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.std::vector", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN30proxy_integration_tests_detail12ParseCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = load ptr, ptr %2, align 8, !tbaa !45     ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 4 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread26, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  switch i64 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread26 [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.k = load i64, ptr %i.j, align 1
  %i.l = xor i64 %i.k, 7811333443540968786
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i64
  %i.p = xor i64 %i.o, 101
  %i.q = or i64 %i.l, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = ptrtoint ptr %i.d to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp eq i64 %i.w, 96
  %or.cond41 = and i1 %i.t, %i.x
  br i1 %or.cond41, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread26

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.y = load atomic i8, ptr @_ZGVZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21rectangle_memory_pool acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.g, !prof !103

bb.d:                                             ; preds = %bb.c
  %i.aa = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21rectangle_memory_pool) #25
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt3pmr28unsynchronized_pool_resourceC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21rectangle_memory_pool)
          to label %bb.f unwind label %bb.y

bb.f:                                             ; preds = %bb.e
  %i.ab = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3pmr28unsynchronized_pool_resourceD1Ev, ptr nonnull @_ZZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21rectangle_memory_pool, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21rectangle_memory_pool) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.ac = load ptr, ptr %2, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.af = tail call ptr @__errno_location() #28   ; 11 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !104 ; 3 uses
  store i32 0, ptr %i.af, align 4, !tbaa !104
  %i.ah = call noundef double @strtod(ptr noundef %i.ae, ptr noundef nonnull %i.c)
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.aj = icmp eq ptr %i.ai, %i.ae
  br i1 %i.aj, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.36) #29
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.critedge.i.i, %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load i32, ptr %i.af, align 4, !tbaa !104
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.k, label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.k:                                             ; preds = %bb.j
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !104
  br label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %.body

bb.l:                                             ; preds = %bb.g
  %i.an = load i32, ptr %i.af, align 4, !tbaa !104 ; 2 uses
  switch i32 %i.an, label %bb.o [
    i32 34, label %.critedge.i.i
    i32 0, label %bb.n
  ]

.critedge.i.i:                                    ; preds = %bb.l
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.36) #29
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %.critedge.i.i
  unreachable

bb.n:                                             ; preds = %bb.l
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !104
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n
  %i.ao = phi i32 [ %i.an, %bb.l ], [ %i.ag, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.ap = load ptr, ptr %2, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.af, align 4, !tbaa !104
  %i.as = call noundef double @strtod(ptr noundef %i.ar, ptr noundef nonnull %i.b)
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.au = icmp eq ptr %i.at, %i.ar
  br i1 %i.au, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.36) #29
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %.critedge.i.i7, %bb.p
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load i32, ptr %i.af, align 4, !tbaa !104
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i8

bb.s:                                             ; preds = %bb.r
  store i32 %i.ao, ptr %i.af, align 4, !tbaa !104
  br label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i8

_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i8: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.body

bb.t:                                             ; preds = %bb.o
  %i.ay = load i32, ptr %i.af, align 4, !tbaa !104
  switch i32 %i.ay, label %bb.w [
    i32 34, label %.critedge.i.i7
    i32 0, label %bb.v
  ]

.critedge.i.i7:                                   ; preds = %bb.t
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.36) #29
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %.critedge.i.i7
  unreachable

bb.v:                                             ; preds = %bb.t
  store i32 %i.ao, ptr %i.af, align 4, !tbaa !104
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 ptrtoint (ptr @_ZZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21rectangle_memory_pool to i64), ptr %i.az, align 8, !tbaa !107, !alias.scope !108
  %i.ba = load ptr, ptr @_ZZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21rectangle_memory_pool, align 8, !tbaa !12, !noalias !108
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !108
  %i.bd = invoke noundef nonnull align 8 ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21rectangle_memory_pool, i64 noundef 16, i64 noundef 8)
          to label %bb.x unwind label %bb.z, !inline_history !98 ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ah, ptr %i.bd, align 8, !tbaa !50, !noalias !108
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store double %i.as, ptr %i.bf, align 8, !tbaa !51, !noalias !108
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !54, !alias.scope !108
  br label %bb.am

bb.y:                                             ; preds = %bb.e
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21rectangle_memory_pool) #25
  br label %.body

bb.z:                                             ; preds = %bb.ak, %bb.w
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13: ; preds = %bb.b
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %3 = load i32, ptr %.pre, align 1
  %4 = xor i32 %3, 1668442435
  %5 = getelementptr i8, ptr %.pre, i64 4
  %6 = load i16, ptr %5, align 1
  %7 = zext i16 %6 to i32
  %8 = xor i32 %7, 25964
  %9 = or i32 %4, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %i.bi = icmp eq i32 %11, 0
  %i.bj = ptrtoint ptr %i.f to i64
  %i.bk = ptrtoint ptr %i.d to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = icmp eq i64 %i.bl, 64
  %or.cond45 = and i1 %i.bi, %i.bm
  br i1 %or.cond45, label %bb.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread26

bb.aa:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bp = tail call ptr @__errno_location() #28   ; 6 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !104 ; 2 uses
  store i32 0, ptr %i.bp, align 4, !tbaa !104
  %i.br = call noundef double @strtod(ptr noundef %i.bo, ptr noundef nonnull %i.a)
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.bt = icmp eq ptr %i.bs, %i.bo
  br i1 %i.bt, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.36) #29
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %.critedge.i.i14, %bb.ab
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load i32, ptr %i.bp, align 4, !tbaa !104
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ae, label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i15

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !104
  br label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i15

_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i15: ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.body

bb.af:                                            ; preds = %bb.aa
  %i.bx = load i32, ptr %i.bp, align 4, !tbaa !104
  switch i32 %i.bx, label %bb.ai [
    i32 34, label %.critedge.i.i14
    i32 0, label %bb.ah
  ]

.critedge.i.i14:                                  ; preds = %bb.af
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.36) #29
          to label %bb.ag unwind label %bb.ad

bb.ag:                                            ; preds = %.critedge.i.i14
  unreachable

bb.ah:                                            ; preds = %bb.af
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !104
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.br, ptr %i.by, align 8, !tbaa !109, !alias.scope !110
  br label %bb.am

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %bb.b
  %.pre30 = load ptr, ptr %i.d, align 8, !tbaa !34 ; 2 uses
  %12 = load i32, ptr %.pre30, align 1
  %13 = xor i32 %12, 1852403536
  %14 = getelementptr i8, ptr %.pre30, i64 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = xor i32 %16, 116
  %18 = or i32 %13, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %i.bz = icmp eq i32 %20, 0
  %i.ca = ptrtoint ptr %i.f to i64
  %i.cb = ptrtoint ptr %i.d to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp eq i64 %i.cc, 32
  %or.cond = and i1 %i.cd, %i.bz
  br i1 %or.cond, label %bb.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread26

bb.aj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZZN30proxy_integration_tests_detail23MakeDrawableFromCommandERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8instance, ptr %i.ce, align 8, !tbaa !112
  br label %bb.am

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread26: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, %bb.a
  %i.cf = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.5)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread26
  invoke void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
          to label %bb.ao unwind label %bb.z

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread26
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cf) #25
  br label %.body

bb.am:                                            ; preds = %bb.aj, %bb.ai, %bb.x
  %.sink = phi i64 [ ptrtoint (ptr @_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS6_7MemDrawEFvRSoEEENS4_ISD_NS6_7MemAreaEDoFdvEEEEEEE7storageIPNS6_5PointEEE to i64), %bb.aj ], [ ptrtoint (ptr @_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS6_7MemDrawEFvRSoEEENS4_ISD_NS6_7MemAreaEDoFdvEEEEEEE7storageINS1_11inplace_ptrINS6_6CircleEEEEE to i64), %bb.ai ], [ ptrtoint (ptr @_ZN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIN30proxy_integration_tests_detail8DrawableEEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS6_7MemDrawEFvRSoEEENS4_ISD_NS6_7MemAreaEDoFdvEEEEEEE7storageINS1_13allocated_ptrINS6_9RectangleENSt3pmr21polymorphic_allocatorISt4byteEEEEEE to i64), %bb.x ]
  store i64 %.sink, ptr %0, align 8, !tbaa !55
  %i.ch = load ptr, ptr %2, align 8, !tbaa !41    ; 3 uses
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !43  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ch, %i.ci
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.am, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.co, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ch, %bb.am ] ; 3 uses
  %i.cj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !35
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.co, %i.ci
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.am
  %i.cp = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ch, %bb.am ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !42
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.body:                                            ; preds = %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i15, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i8, %bb.z, %bb.al, %bb.y
  %.pn5 = phi { ptr, i32 } [ %i.bh, %bb.z ], [ %i.cg, %bb.al ], [ %i.av, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i8 ], [ %i.bg, %bb.y ], [ %i.ak, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i ], [ %i.bu, %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i15 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn5

bb.ao:                                            ; preds = %bb.ak
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3pmr28unsynchronized_pool_resourceC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::pmr::pool_options", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #25
  call void @_ZNSt3pmr28unsynchronized_pool_resourceC2ERKNS_12pool_optionsEPNS_15memory_resourceE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3pmr28unsynchronized_pool_resourceD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr nofree noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef, ptr nofree noundef align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN7testing8internal13GetTestTypeIdEv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.49, i32 noundef 505)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.50, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.51, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !12
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.52, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.49, i32 noundef 526)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.50, i64 noundef 50)
end_hunk_1
