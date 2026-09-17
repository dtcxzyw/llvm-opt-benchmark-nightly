Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_mesh_compare?download=true
inline.NumInlined: 448
inline.NumDeleted: 208
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%class.TestMeshCompare = type { %class.TestBase }
%class.TestBase = type { ptr, i32, i32, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<TestBase *, std::allocator<TestBase *>>::_Vector_impl" }
%"struct.std::_Vector_base<TestBase *, std::allocator<TestBase *>>::_Vector_impl" = type { %"struct.std::_Vector_base<TestBase *, std::allocator<TestBase *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<TestBase *, std::allocator<TestBase *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.core::vector3d" = type { float, float, float }
%"class.video::SColor" = type { i32 }
%"class.core::vector2d" = type { float, float }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::vector.4" = type { %"struct.std::_Vector_base.5" }
%"struct.std::_Vector_base.5" = type { %"struct.std::_Vector_base<video::S3DVertex, std::allocator<video::S3DVertex>>::_Vector_impl" }
%"struct.std::_Vector_base<video::S3DVertex, std::allocator<video::S3DVertex>>::_Vector_impl" = type { %"struct.std::_Vector_base<video::S3DVertex, std::allocator<video::S3DVertex>>::_Vector_impl_data" }
%"struct.std::_Vector_base<video::S3DVertex, std::allocator<video::S3DVertex>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.9" = type { %"struct.std::_Vector_base.10" }
%"struct.std::_Vector_base.10" = type { %"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned short, std::allocator<unsigned short>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<std::array<video::S3DVertex, 3>, std::allocator<std::array<video::S3DVertex, 3>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::array<video::S3DVertex, 3>, std::allocator<std::array<video::S3DVertex, 3>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::array<video::S3DVertex, 3>, std::allocator<std::array<video::S3DVertex, 3>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::array<video::S3DVertex, 3>, std::allocator<std::array<video::S3DVertex, 3>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }
%"class.std::vector.21" = type { %"struct.std::_Vector_base.22" }
%"struct.std::_Vector_base.22" = type { %"struct.std::_Vector_base<std::array<video::S3DVertex, 4>, std::allocator<std::array<video::S3DVertex, 4>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::array<video::S3DVertex, 4>, std::allocator<std::array<video::S3DVertex, 4>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::array<video::S3DVertex, 4>, std::allocator<std::array<video::S3DVertex, 4>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::array<video::S3DVertex, 4>, std::allocator<std::array<video::S3DVertex, 4>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN8TestBaseD2Ev = comdat any

$_ZN11TestManager18registerTestModuleEP8TestBase = comdat any

$_ZN15TestMeshCompare8runTestsEP8IGameDef = comdat any

$_ZN15TestMeshCompare7getNameEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIP8TestBaseSaIS1_EED2Ev = comdat any

$_ZNSt17_Function_handlerIFvvEZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_E9_M_invokeERKSt9_Any_data = comdat any

$_ZNSt17_Function_handlerIFvvEZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation = comdat any

$_ZN15TestMeshCompare12testTriangleEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci = comdat any

$_ZN19TestFailedExceptionD2Ev = comdat any

$_ZNSt17_Function_handlerIFvvEZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_E9_M_invokeERKSt9_Any_data = comdat any

$_ZNSt17_Function_handlerIFvvEZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation = comdat any

$_ZN15TestMeshCompare8testQuadEv = comdat any

$_ZTV15TestMeshCompare = comdat any

$_ZTI15TestMeshCompare = comdat any

$_ZTS15TestMeshCompare = comdat any

$_ZTI8TestBase = comdat any

$_ZTS8TestBase = comdat any

$_ZTV8TestBase = comdat any

$_ZZN11TestManager14getTestModulesEvE17m_modules_to_test = comdat any

$_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test = comdat any

$_ZTI19TestFailedException = comdat any

$_ZTS19TestFailedException = comdat any

$_ZTIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_ = comdat any

$_ZTSZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_ = comdat any

$_ZTIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_ = comdat any

$_ZTSZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_ = comdat any

@_ZL17mesh_compare_test = internal global %class.TestMeshCompare zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTV15TestMeshCompare = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI15TestMeshCompare, ptr @_ZN15TestMeshCompare8runTestsEP8IGameDef, ptr @_ZN15TestMeshCompare7getNameEv] }, comdat, align 8
@_ZTI15TestMeshCompare = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15TestMeshCompare, ptr @_ZTI8TestBase }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS15TestMeshCompare = linkonce_odr dso_local constant [18 x i8] c"15TestMeshCompare\00", comdat, align 1
@_ZTI8TestBase = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS8TestBase }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS8TestBase = linkonce_odr dso_local constant [10 x i8] c"8TestBase\00", comdat, align 1
@_ZTV8TestBase = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI8TestBase, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZZN11TestManager14getTestModulesEvE17m_modules_to_test = linkonce_odr dso_local global %"class.std::vector" zeroinitializer, comdat, align 8
@_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test = linkonce_odr dso_local global i64 0, comdat, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"testTriangle\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"testQuad\00", align 1
@.str.4 = private unnamed_addr constant [309 x i8] c"checkMeshEqual({ {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, }, {0, 1, 2}, { Triangle{{ {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, }}, })\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"/opt-bench/work/luanti/luanti/src/unittest/test_mesh_compare.cpp\00", align 1
@_ZTI19TestFailedException = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS19TestFailedException }, comdat, align 8
@_ZTS19TestFailedException = linkonce_odr dso_local constant [22 x i8] c"19TestFailedException\00", comdat, align 1
@.str.8 = private unnamed_addr constant [309 x i8] c"checkMeshEqual({ {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, }, {2, 0, 1}, { Triangle{{ {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, }}, })\00", align 1
@constinit.10 = private unnamed_addr constant [1 x { [3 x { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 }] }] [{ [3 x { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 }] } { [3 x { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 }] [{ %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 0.000000e+00, float 0.000000e+00, float 1.000000e+00 }, %"class.core::vector3d" { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 3 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.core::vector3d" { float 3.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 1 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 0.000000e+00, float 1.000000e+00, float 0.000000e+00 }, %"class.core::vector3d" { float 2.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 2 }, %"class.core::vector2d" zeroinitializer, i16 0 }] }], align 8
@.str.11 = private unnamed_addr constant [310 x i8] c"!checkMeshEqual({ {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, }, {0, 2, 1}, { Triangle{{ {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, }}, })\00", align 1
@constinit.12 = private unnamed_addr constant [3 x { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 }] [{ %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 0.000000e+00, float 0.000000e+00, float 1.000000e+00 }, %"class.core::vector3d" { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 3 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 0.000000e+00, float 1.000000e+00, float 0.000000e+00 }, %"class.core::vector3d" { float 2.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 2 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.core::vector3d" { float 3.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 1 }, %"class.core::vector2d" zeroinitializer, i16 0 }], align 4
@.str.14 = private unnamed_addr constant [309 x i8] c"checkMeshEqual({ {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, }, {0, 1, 2}, { Triangle{{ {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, }}, })\00", align 1
@constinit.15 = private unnamed_addr constant [3 x { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 }] [{ %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.core::vector3d" { float 3.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 1 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 0.000000e+00, float 1.000000e+00, float 0.000000e+00 }, %"class.core::vector3d" { float 2.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 2 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 0.000000e+00, float 0.000000e+00, float 1.000000e+00 }, %"class.core::vector3d" { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 3 }, %"class.core::vector2d" zeroinitializer, i16 0 }], align 4
@constinit.16 = private unnamed_addr constant [1 x { [3 x { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 }] }] [{ [3 x { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 }] } { [3 x { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 }] [{ %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 0.000000e+00, float 0.000000e+00, float 1.000000e+00 }, %"class.core::vector3d" { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 3 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 0.000000e+00, float 1.000000e+00, float 0.000000e+00 }, %"class.core::vector3d" { float 2.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 2 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.core::vector3d" { float 3.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 1 }, %"class.core::vector2d" zeroinitializer, i16 0 }] }], align 8
@.str.17 = private unnamed_addr constant [310 x i8] c"!checkMeshEqual({ {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, }, {0, 1, 2}, { Triangle{{ {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, }}, })\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_ }, comdat, align 8
@_ZTSZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_ = linkonce_odr dso_local constant [46 x i8] c"ZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_\00", comdat, align 1
@.str.22 = private unnamed_addr constant [402 x i8] c"checkMeshEqual({ {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{1., -1., 1.}, {4., 0., 0.}, 4, {0., 0.}}, }, {0, 1, 2, 0, 2, 3}, { Quad{{ {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{1., -1., 1.}, {4., 0., 0.}, 4, {0., 0.}}, }}, })\00", align 1
@.str.25 = private unnamed_addr constant [402 x i8] c"checkMeshEqual({ {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{1., -1., 1.}, {4., 0., 0.}, 4, {0., 0.}}, }, {2, 3, 0, 1, 2, 0}, { Quad{{ {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{1., -1., 1.}, {4., 0., 0.}, 4, {0., 0.}}, }}, })\00", align 1
@.str.28 = private unnamed_addr constant [402 x i8] c"checkMeshEqual({ {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{1., -1., 1.}, {4., 0., 0.}, 4, {0., 0.}}, }, {2, 3, 1, 0, 1, 3}, { Quad{{ {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{1., -1., 1.}, {4., 0., 0.}, 4, {0., 0.}}, }}, })\00", align 1
@constinit.29 = private unnamed_addr constant [4 x { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 }] [{ %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.core::vector3d" { float 3.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 1 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 0.000000e+00, float 1.000000e+00, float 0.000000e+00 }, %"class.core::vector3d" { float 2.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 2 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 0.000000e+00, float 0.000000e+00, float 1.000000e+00 }, %"class.core::vector3d" { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 3 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 1.000000e+00, float -1.000000e+00, float 1.000000e+00 }, %"class.core::vector3d" { float 4.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 4 }, %"class.core::vector2d" zeroinitializer, i16 0 }], align 4
@constinit.30 = private unnamed_addr constant [1 x { [4 x { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 }] }] [{ [4 x { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 }] } { [4 x { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 }] [{ %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.core::vector3d" { float 3.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 1 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 0.000000e+00, float 1.000000e+00, float 0.000000e+00 }, %"class.core::vector3d" { float 2.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 2 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 0.000000e+00, float 0.000000e+00, float 1.000000e+00 }, %"class.core::vector3d" { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 3 }, %"class.core::vector2d" zeroinitializer, i16 0 }, { %"class.core::vector3d", %"class.core::vector3d", %"class.video::SColor", %"class.core::vector2d", i16 } { %"class.core::vector3d" { float 1.000000e+00, float -1.000000e+00, float 1.000000e+00 }, %"class.core::vector3d" { float 4.000000e+00, float 0.000000e+00, float 0.000000e+00 }, %"class.video::SColor" { i32 4 }, %"class.core::vector2d" zeroinitializer, i16 0 }] }], align 8
@.str.31 = private unnamed_addr constant [402 x i8] c"checkMeshEqual({ {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{1., -1., 1.}, {4., 0., 0.}, 4, {0., 0.}}, }, {3, 0, 1, 1, 2, 3}, { Quad{{ {{1., 0., 0.}, {3., 0., 0.}, 1, {0., 0.}}, {{0., 1., 0.}, {2., 0., 0.}, 2, {0., 0.}}, {{0., 0., 1.}, {1., 0., 0.}, 3, {0., 0.}}, {{1., -1., 1.}, {4., 0., 0.}, 4, {0., 0.}}, }}, })\00", align 1
@_ZTIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_ = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_ }, comdat, align 8
@_ZTSZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_ = linkonce_odr dso_local constant [47 x i8] c"ZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_\00", comdat, align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"TestMeshCompare\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_test_mesh_compare.cpp, ptr null }]

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8TestBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV8TestBase, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !17
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11TestManager18registerTestModuleEP8TestBase(ptr noundef %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11TestManager14getTestModulesEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test) #18
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11TestManager14getTestModulesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i8 0, i64 24, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIP8TestBaseSaIS1_EED2Ev, ptr nonnull @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, ptr nonnull @__dso_handle) #18 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test) #18
  br label %_ZN11TestManager14getTestModulesEv.exit

_ZN11TestManager14getTestModulesEv.exit:          ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !42 ; 4 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 16), align 8, !tbaa !21
  %.not.i1 = icmp eq ptr %i.e, %i.f
  br i1 %.not.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN11TestManager14getTestModulesEv.exit
  store ptr %0, ptr %i.e, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !42
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %_ZN11TestManager14getTestModulesEv.exit
  %i.h = load ptr, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, align 8, !tbaa !22 ; 4 uses
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.f, label %_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
  unreachable

_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #20 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %0, ptr %i.t, align 8, !tbaa !44
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.g, label %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 16), align 8, !tbaa !21
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.y) #17
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.s, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, align 8, !tbaa !22
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 16), align 8, !tbaa !21
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP8TestBaseSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15TestMeshCompare8runTestsEP8IGameDef(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 12 uses
  %3 = alloca %"class.std::function", align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  store i64 %i.d, ptr %2, align 8, !tbaa !24
  store ptr @_ZNSt17_Function_handlerIFvvEZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.b, align 8, !tbaa !47
  store ptr @_ZNSt17_Function_handlerIFvvEZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.a, align 8, !tbaa !48
  invoke void @_ZN8TestBase7runTestEPKcOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.k, align 8
  store i64 %i.d, ptr %3, align 8, !tbaa !24
  store ptr @_ZNSt17_Function_handlerIFvvEZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.j, align 8, !tbaa !47
  store ptr @_ZNSt17_Function_handlerIFvvEZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.i, align 8, !tbaa !48
  invoke void @_ZN8TestBase7runTestEPKcOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %.not.i4 = icmp eq ptr %i.l, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.h:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %.not.i6 = icmp eq ptr %i.q, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = invoke noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #21
  unreachable

end_hunk_0
begin_hunk_1_@__clang_call_terminate:bb.a
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP8TestBaseSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIP8TestBaseSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #17
  br label %_ZNSt12_Vector_baseIP8TestBaseSaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIP8TestBaseSaIS1_EED2Ev.exit:  ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

declare void @_ZN8TestBase7runTestEPKcOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvvEZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @_ZN15TestMeshCompare12testTriangleEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_, ptr %0, align 8, !tbaa !26
  br label %_ZNSt14_Function_base13_Base_managerIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !24
  store i64 %i.a, ptr %0, align 8, !tbaa !24
  br label %_ZNSt14_Function_base13_Base_managerIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15TestMeshCompare12testTriangleEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.4", align 8     ; 9 uses
  %2 = alloca %"class.std::vector.9", align 8     ; 12 uses
  %3 = alloca %"class.std::vector.15", align 8    ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::vector.4", align 8     ; 12 uses
  %7 = alloca %"class.std::vector.9", align 8     ; 12 uses
  %8 = alloca %"class.std::vector.15", align 8    ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %11 = alloca %"class.std::vector.4", align 8    ; 12 uses
  %12 = alloca %"class.std::vector.9", align 8    ; 12 uses
  %13 = alloca %"class.std::vector.15", align 8   ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %15 = alloca %"class.std::allocator", align 1   ; 5 uses
  %16 = alloca %"class.std::vector.4", align 8    ; 12 uses
  %17 = alloca %"class.std::vector.9", align 8    ; 12 uses
  %18 = alloca %"class.std::vector.15", align 8   ; 12 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %20 = alloca %"class.std::allocator", align 1   ; 5 uses
  %21 = alloca %"class.std::vector.4", align 8    ; 9 uses
  %22 = alloca %"class.std::vector.9", align 8    ; 9 uses
  %23 = alloca %"class.std::vector.15", align 8   ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %25 = alloca %"class.std::allocator", align 1   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #20
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.a, ptr noundef nonnull align 4 dereferenceable(120) @constinit.15, i64 120, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #20
          to label %bb.f unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !35     ; 3 uses
  %.not.i.i4.i95 = icmp eq ptr %i.h, null
  br i1 %.not.i.i4.i95, label %.body96, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #17
  br label %.body96

bb.f:                                             ; preds = %bb.c
  store ptr %i.f, ptr %2, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 6 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !36
  store i16 0, ptr %i.f, align 2
  %.sroa.5297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i16 1, ptr %.sroa.5297.0..sroa_idx, align 2
  %.sroa.6298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i16 2, ptr %.sroa.6298.0..sroa_idx, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #20
          to label %bb.i unwind label %bb.g       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !53     ; 3 uses
  %.not.i.i4.i98 = icmp eq ptr %i.s, null
  br i1 %.not.i.i4.i98, label %.body100, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !54
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #17
  br label %.body100

bb.i:                                             ; preds = %bb.f
  store ptr %i.q, ptr %3, align 8, !tbaa !53
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.q, ptr noundef nonnull align 8 dereferenceable(120) @constinit.10, i64 120, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !55
  %i.ab = invoke noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm3EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %3, align 8, !tbaa !53    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #17
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ah = load ptr, ptr %2, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i103 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.am = load ptr, ptr %1, align 8, !tbaa !30    ; 3 uses
  %.not.i.i.i105 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #17
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br i1 %i.ab, label %bb.w, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit
  %i.ar = call ptr @__cxa_allocate_exception(i64 72) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ar, ptr noundef nonnull align 8 %4, ptr noundef nonnull @.str.5, i32 noundef 33)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #19
          to label %bb.dj unwind label %bb.u

bb.q:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !53    ; 3 uses
  %.not.i.i.i107 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i107, label %.body100, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !54
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #17
  br label %.body100

.body100:                                         ; preds = %bb.r, %bb.q, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.as, %bb.r ], [ %i.r, %bb.h ], [ %i.as, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ay = load ptr, ptr %2, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i110 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i110, label %.body96, label %bb.s

bb.s:                                             ; preds = %.body100
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #17
  br label %.body96

.body96:                                          ; preds = %bb.s, %.body100, %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %.pn, %bb.s ], [ %i.g, %bb.e ], [ %.pn, %.body100 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.bd = load ptr, ptr %1, align 8, !tbaa !30    ; 3 uses
  %.not.i.i.i113 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i113, label %.body, label %bb.t

bb.t:                                             ; preds = %.body96
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #17
  br label %.body

.body:                                            ; preds = %bb.b, %bb.t, %.body96
  %.pn.pn.pn = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn.pn, %bb.t ], [ %.pn.pn, %.body96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.v

bb.u:                                             ; preds = %bb.p, %bb.o
  %.057 = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !17
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %.057, label %bb.v, label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %.057, label %bb.v, label %bb.di

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn92302 = phi { ptr, i32 } [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ar) #18
  br label %bb.di

bb.w:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bp = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #20
          to label %bb.z unwind label %bb.x       ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %.not.i.i4.i116 = icmp eq ptr %i.br, null
  br i1 %.not.i.i4.i116, label %.body119, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !31
  br label %.body119.sink.split

bb.z:                                             ; preds = %bb.w
  store ptr %i.bp, ptr %6, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 120 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.bp, ptr noundef nonnull align 4 dereferenceable(120) @constinit.15, i64 120, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.bx = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #20
          to label %bb.ac unwind label %bb.aa     ; 5 uses

bb.aa:                                            ; preds = %bb.z
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %.not.i.i4.i122 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i4.i122, label %.body124, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !36
  br label %.body124.sink.split

bb.ac:                                            ; preds = %bb.z
  store ptr %i.bx, ptr %7, align 8, !tbaa !35
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 6 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !36
  store i16 2, ptr %i.bx, align 2
  %.sroa.5290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store i16 0, ptr %.sroa.5290.0..sroa_idx, align 2
  %.sroa.6291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i16 1, ptr %.sroa.6291.0..sroa_idx, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.cf = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #20
          to label %bb.af unwind label %bb.ad     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %.not.i.i4.i127 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i4.i127, label %.body130, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !54
  br label %.body130.sink.split

bb.af:                                            ; preds = %bb.ac
  store ptr %i.cf, ptr %8, align 8, !tbaa !53
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 120 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.cf, ptr noundef nonnull align 8 dereferenceable(120) @constinit.10, i64 120, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !55
  %i.cn = invoke noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm3EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.co = load ptr, ptr %8, align 8, !tbaa !53    ; 3 uses
  %.not.i.i.i133 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i133, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit135, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !54
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #17
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit135

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit135: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ct = load ptr, ptr %7, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i136 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorItSaItEED2Ev.exit138, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit135
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !36
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit138

_ZNSt6vectorItSaItEED2Ev.exit138:                 ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit135, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.cy = load ptr, ptr %6, align 8, !tbaa !30    ; 3 uses
  %.not.i.i.i139 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit141, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit138
  %i.cz = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #17
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit141

_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit141: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit138, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %i.cn, label %bb.at, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit141
  %i.dd = call ptr @__cxa_allocate_exception(i64 72) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.dd, ptr noundef nonnull align 8 %9, ptr noundef nonnull @.str.5, i32 noundef 44)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.dd, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #19
          to label %bb.dj unwind label %bb.ar

bb.an:                                            ; preds = %bb.af
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i142, label %.body130, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dg = load ptr, ptr %i.cl, align 8, !tbaa !54
  br label %.body130.sink.split

.body130.sink.split:                              ; preds = %bb.ae, %bb.ao
  %.sink370 = phi ptr [ %i.dg, %bb.ao ], [ %i.cj, %bb.ae ]
  %.sink369 = phi ptr [ %i.df, %bb.ao ], [ %i.ch, %bb.ae ] ; 2 uses
  %.pn68.ph = phi { ptr, i32 } [ %i.de, %bb.ao ], [ %i.cg, %bb.ae ]
  %i.dh = ptrtoint ptr %.sink370 to i64
  %i.di = ptrtoint ptr %.sink369 to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %.sink369, i64 noundef %i.dj) #17
  br label %.body130

.body130:                                         ; preds = %.body130.sink.split, %bb.an, %bb.ad
  %.pn68 = phi { ptr, i32 } [ %i.cg, %bb.ad ], [ %i.de, %bb.an ], [ %.pn68.ph, %.body130.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.dk = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i145, label %.body124, label %bb.ap

bb.ap:                                            ; preds = %.body130
  %i.dl = load ptr, ptr %i.cd, align 8, !tbaa !36
  br label %.body124.sink.split

.body124.sink.split:                              ; preds = %bb.ab, %bb.ap
  %.sink376 = phi ptr [ %i.dl, %bb.ap ], [ %i.cb, %bb.ab ]
  %.sink375 = phi ptr [ %i.dk, %bb.ap ], [ %i.bz, %bb.ab ] ; 2 uses
  %.pn68.pn.ph = phi { ptr, i32 } [ %.pn68, %bb.ap ], [ %i.by, %bb.ab ]
  %i.dm = ptrtoint ptr %.sink376 to i64
  %i.dn = ptrtoint ptr %.sink375 to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %.sink375, i64 noundef %i.do) #17
  br label %.body124

.body124:                                         ; preds = %.body124.sink.split, %.body130, %bb.aa
  %.pn68.pn = phi { ptr, i32 } [ %i.by, %bb.aa ], [ %.pn68, %.body130 ], [ %.pn68.pn.ph, %.body124.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.dp = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i148, label %.body119, label %bb.aq

bb.aq:                                            ; preds = %.body124
  %i.dq = load ptr, ptr %i.bv, align 8, !tbaa !31
  br label %.body119.sink.split

.body119.sink.split:                              ; preds = %bb.y, %bb.aq
  %.sink382 = phi ptr [ %i.dq, %bb.aq ], [ %i.bt, %bb.y ]
  %.sink381 = phi ptr [ %i.dp, %bb.aq ], [ %i.br, %bb.y ] ; 2 uses
  %.pn68.pn.pn.ph = phi { ptr, i32 } [ %.pn68.pn, %bb.aq ], [ %i.bq, %bb.y ]
  %i.dr = ptrtoint ptr %.sink382 to i64
  %i.ds = ptrtoint ptr %.sink381 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %.sink381, i64 noundef %i.dt) #17
  br label %.body119

.body119:                                         ; preds = %.body119.sink.split, %.body124, %bb.x
  %.pn68.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.x ], [ %.pn68.pn, %.body124 ], [ %.pn68.pn.pn.ph, %.body119.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.thread: ; preds = %bb.ak
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.as

bb.ar:                                            ; preds = %bb.am, %bb.al
  %.059 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dw = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.ar
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !17
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br i1 %.059, label %bb.as, label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br i1 %.059, label %bb.as, label %bb.di

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %.pn90305 = phi { ptr, i32 } [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153.thread ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ]
  call void @__cxa_free_exception(ptr %i.dd) #18
  br label %bb.di

bb.at:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.eb = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #20
          to label %bb.aw unwind label %bb.au     ; 3 uses

bb.au:                                            ; preds = %bb.at
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %.not.i.i4.i154 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i4.i154, label %.body157, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !31
  br label %.body157.sink.split

bb.aw:                                            ; preds = %bb.at
  store ptr %i.eb, ptr %11, align 8, !tbaa !30
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 120 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.eb, ptr noundef nonnull align 4 dereferenceable(120) @constinit.15, i64 120, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ej = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #20
          to label %bb.az unwind label %bb.ax     ; 5 uses

bb.ax:                                            ; preds = %bb.aw
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %12, align 8, !tbaa !35   ; 2 uses
  %.not.i.i4.i160 = icmp eq ptr %i.el, null
  br i1 %.not.i.i4.i160, label %.body162, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !36
  br label %.body162.sink.split

bb.az:                                            ; preds = %bb.aw
  store ptr %i.ej, ptr %12, align 8, !tbaa !35
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 6 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !36
  store i16 0, ptr %i.ej, align 2
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  store i16 2, ptr %.sroa.5283.0..sroa_idx, align 2
  %.sroa.6284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i16 1, ptr %.sroa.6284.0..sroa_idx, align 2
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.er = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #20
          to label %bb.bc unwind label %bb.ba     ; 3 uses

bb.ba:                                            ; preds = %bb.az
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %13, align 8, !tbaa !53   ; 2 uses
  %.not.i.i4.i165 = icmp eq ptr %i.et, null
  br i1 %.not.i.i4.i165, label %.body168, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !54
  br label %.body168.sink.split

bb.bc:                                            ; preds = %bb.az
  store ptr %i.er, ptr %13, align 8, !tbaa !53
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 120 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.er, ptr noundef nonnull align 8 dereferenceable(120) @constinit.10, i64 120, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !55
  %i.ez = invoke noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm3EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.bd unwind label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.fa = load ptr, ptr %13, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i171 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i171, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit173, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fb = load ptr, ptr %i.ex, align 8, !tbaa !54
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fe) #17
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit173

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit173: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.ff = load ptr, ptr %12, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i174 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i174, label %_ZNSt6vectorItSaItEED2Ev.exit176, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit173
  %i.fg = load ptr, ptr %i.ep, align 8, !tbaa !36
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fj) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit176

_ZNSt6vectorItSaItEED2Ev.exit176:                 ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit173, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.fk = load ptr, ptr %11, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i177 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i177, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit179, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit176
  %i.fl = load ptr, ptr %i.eh, align 8, !tbaa !31
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fo) #17
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit179

_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit179: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit176, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br i1 %i.ez, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit179
  %i.fp = call ptr @__cxa_allocate_exception(i64 72) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bi unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191.thread

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.fp, ptr noundef nonnull align 8 %14, ptr noundef nonnull @.str.5, i32 noundef 55)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  invoke void @__cxa_throw(ptr nonnull %i.fp, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #19
          to label %bb.dj unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bc
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %13, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i180, label %.body168, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fs = load ptr, ptr %i.ex, align 8, !tbaa !54
  br label %.body168.sink.split

.body168.sink.split:                              ; preds = %bb.bb, %bb.bl
  %.sink388 = phi ptr [ %i.fs, %bb.bl ], [ %i.ev, %bb.bb ]
  %.sink387 = phi ptr [ %i.fr, %bb.bl ], [ %i.et, %bb.bb ] ; 2 uses
  %.pn72.ph = phi { ptr, i32 } [ %i.fq, %bb.bl ], [ %i.es, %bb.bb ]
  %i.ft = ptrtoint ptr %.sink388 to i64
  %i.fu = ptrtoint ptr %.sink387 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.sink387, i64 noundef %i.fv) #17
  br label %.body168

.body168:                                         ; preds = %.body168.sink.split, %bb.bk, %bb.ba
  %.pn72 = phi { ptr, i32 } [ %i.es, %bb.ba ], [ %i.fq, %bb.bk ], [ %.pn72.ph, %.body168.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.fw = load ptr, ptr %12, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i183 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i183, label %.body162, label %bb.bm

bb.bm:                                            ; preds = %.body168
  %i.fx = load ptr, ptr %i.ep, align 8, !tbaa !36
  br label %.body162.sink.split

.body162.sink.split:                              ; preds = %bb.ay, %bb.bm
  %.sink394 = phi ptr [ %i.fx, %bb.bm ], [ %i.en, %bb.ay ]
  %.sink393 = phi ptr [ %i.fw, %bb.bm ], [ %i.el, %bb.ay ] ; 2 uses
  %.pn72.pn.ph = phi { ptr, i32 } [ %.pn72, %bb.bm ], [ %i.ek, %bb.ay ]
  %i.fy = ptrtoint ptr %.sink394 to i64
  %i.fz = ptrtoint ptr %.sink393 to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %.sink393, i64 noundef %i.ga) #17
  br label %.body162

.body162:                                         ; preds = %.body162.sink.split, %.body168, %bb.ax
  %.pn72.pn = phi { ptr, i32 } [ %i.ek, %bb.ax ], [ %.pn72, %.body168 ], [ %.pn72.pn.ph, %.body162.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.gb = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %.not.i.i.i186 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i186, label %.body157, label %bb.bn

bb.bn:                                            ; preds = %.body162
  %i.gc = load ptr, ptr %i.eh, align 8, !tbaa !31
  br label %.body157.sink.split

.body157.sink.split:                              ; preds = %bb.av, %bb.bn
  %.sink400 = phi ptr [ %i.gc, %bb.bn ], [ %i.ef, %bb.av ]
  %.sink399 = phi ptr [ %i.gb, %bb.bn ], [ %i.ed, %bb.av ] ; 2 uses
  %.pn72.pn.pn.ph = phi { ptr, i32 } [ %.pn72.pn, %bb.bn ], [ %i.ec, %bb.av ]
  %i.gd = ptrtoint ptr %.sink400 to i64
  %i.ge = ptrtoint ptr %.sink399 to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %.sink399, i64 noundef %i.gf) #17
  br label %.body157

.body157:                                         ; preds = %.body157.sink.split, %.body162, %bb.au
  %.pn72.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.au ], [ %.pn72.pn, %.body162 ], [ %.pn72.pn.pn.ph, %.body157.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191.thread: ; preds = %bb.bh
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bj, %bb.bi
  %.061 = phi i1 [ false, %bb.bj ], [ true, %bb.bi ] ; 2 uses
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gi = load ptr, ptr %14, align 8, !tbaa !16   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.bo
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !17
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br i1 %.061, label %bb.bp, label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br i1 %.061, label %bb.bp, label %bb.di

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %.pn88308 = phi { ptr, i32 } [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191.thread ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ]
  call void @__cxa_free_exception(ptr %i.fp) #18
  br label %bb.di

bb.bq:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit179
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.gn = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #20
          to label %bb.bt unwind label %bb.br     ; 3 uses

bb.br:                                            ; preds = %bb.bq
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %.not.i.i4.i192 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i4.i192, label %.body195, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gq = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !31
  br label %.body195.sink.split

bb.bt:                                            ; preds = %bb.bq
  store ptr %i.gn, ptr %16, align 8, !tbaa !30
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 120 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.gn, ptr noundef nonnull align 4 dereferenceable(120) @constinit.12, i64 120, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.gs, ptr %i.gu, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.gv = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #20
          to label %bb.bw unwind label %bb.bu     ; 5 uses

bb.bu:                                            ; preds = %bb.bt
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gx = load ptr, ptr %17, align 8, !tbaa !35   ; 2 uses
  %.not.i.i4.i198 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i4.i198, label %.body200, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gy = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !36
  br label %.body200.sink.split

bb.bw:                                            ; preds = %bb.bt
  store ptr %i.gv, ptr %17, align 8, !tbaa !35
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 6 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !36
  store i16 0, ptr %i.gv, align 2
  %.sroa.5276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  store i16 1, ptr %.sroa.5276.0..sroa_idx, align 2
  %.sroa.6277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store i16 2, ptr %.sroa.6277.0..sroa_idx, align 2
  %i.hc = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ha, ptr %i.hc, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.hd = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #20
          to label %bb.bz unwind label %bb.bx     ; 3 uses

bb.bx:                                            ; preds = %bb.bw
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %18, align 8, !tbaa !53   ; 2 uses
  %.not.i.i4.i203 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i4.i203, label %.body206, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hg = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !54
  br label %.body206.sink.split

bb.bz:                                            ; preds = %bb.bw
  store ptr %i.hd, ptr %18, align 8, !tbaa !53
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 120 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.hd, ptr noundef nonnull align 8 dereferenceable(120) @constinit.16, i64 120, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.hi, ptr %i.hk, align 8, !tbaa !55
  %i.hl = invoke noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm3EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.ca unwind label %bb.ch

bb.ca:                                            ; preds = %bb.bz
  %i.hm = load ptr, ptr %18, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i209 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i209, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit211, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hn = load ptr, ptr %i.hj, align 8, !tbaa !54
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hq) #17
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit211

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit211: ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.hr = load ptr, ptr %17, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i212 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i212, label %_ZNSt6vectorItSaItEED2Ev.exit214, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit211
  %i.hs = load ptr, ptr %i.hb, align 8, !tbaa !36
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %i.hr, i64 noundef %i.hv) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit214

_ZNSt6vectorItSaItEED2Ev.exit214:                 ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit211, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.hw = load ptr, ptr %16, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i215 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i215, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit217, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit214
  %i.hx = load ptr, ptr %i.gt, align 8, !tbaa !31
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hw to i64
  %i.ia = sub i64 %i.hy, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.ia) #17
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit217

_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit217: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit214, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br i1 %i.hl, label %bb.cn, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit217
  %i.ib = call ptr @__cxa_allocate_exception(i64 72) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.cf unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ib, ptr noundef nonnull align 8 %19, ptr noundef nonnull @.str.5, i32 noundef 67)
          to label %bb.cg unwind label %bb.cl

bb.cg:                                            ; preds = %bb.cf
  invoke void @__cxa_throw(ptr nonnull %i.ib, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #19
          to label %bb.dj unwind label %bb.cl

bb.ch:                                            ; preds = %bb.bz
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %18, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i218 = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i218, label %.body206, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ie = load ptr, ptr %i.hj, align 8, !tbaa !54
  br label %.body206.sink.split

.body206.sink.split:                              ; preds = %bb.by, %bb.ci
  %.sink406 = phi ptr [ %i.ie, %bb.ci ], [ %i.hh, %bb.by ]
  %.sink405 = phi ptr [ %i.id, %bb.ci ], [ %i.hf, %bb.by ] ; 2 uses
  %.pn76.ph = phi { ptr, i32 } [ %i.ic, %bb.ci ], [ %i.he, %bb.by ]
  %i.if = ptrtoint ptr %.sink406 to i64
  %i.ig = ptrtoint ptr %.sink405 to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %.sink405, i64 noundef %i.ih) #17
  br label %.body206

.body206:                                         ; preds = %.body206.sink.split, %bb.ch, %bb.bx
  %.pn76 = phi { ptr, i32 } [ %i.he, %bb.bx ], [ %i.ic, %bb.ch ], [ %.pn76.ph, %.body206.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.ii = load ptr, ptr %17, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i221 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i221, label %.body200, label %bb.cj

bb.cj:                                            ; preds = %.body206
  %i.ij = load ptr, ptr %i.hb, align 8, !tbaa !36
  br label %.body200.sink.split

.body200.sink.split:                              ; preds = %bb.bv, %bb.cj
  %.sink412 = phi ptr [ %i.ij, %bb.cj ], [ %i.gz, %bb.bv ]
  %.sink411 = phi ptr [ %i.ii, %bb.cj ], [ %i.gx, %bb.bv ] ; 2 uses
  %.pn76.pn.ph = phi { ptr, i32 } [ %.pn76, %bb.cj ], [ %i.gw, %bb.bv ]
  %i.ik = ptrtoint ptr %.sink412 to i64
  %i.il = ptrtoint ptr %.sink411 to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %.sink411, i64 noundef %i.im) #17
  br label %.body200

.body200:                                         ; preds = %.body200.sink.split, %.body206, %bb.bu
  %.pn76.pn = phi { ptr, i32 } [ %i.gw, %bb.bu ], [ %.pn76, %.body206 ], [ %.pn76.pn.ph, %.body200.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.in = load ptr, ptr %16, align 8, !tbaa !30   ; 2 uses
  %.not.i.i.i224 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i224, label %.body195, label %bb.ck

bb.ck:                                            ; preds = %.body200
  %i.io = load ptr, ptr %i.gt, align 8, !tbaa !31
  br label %.body195.sink.split

.body195.sink.split:                              ; preds = %bb.bs, %bb.ck
  %.sink418 = phi ptr [ %i.io, %bb.ck ], [ %i.gr, %bb.bs ]
  %.sink417 = phi ptr [ %i.in, %bb.ck ], [ %i.gp, %bb.bs ] ; 2 uses
  %.pn76.pn.pn.ph = phi { ptr, i32 } [ %.pn76.pn, %bb.ck ], [ %i.go, %bb.bs ]
  %i.ip = ptrtoint ptr %.sink418 to i64
  %i.iq = ptrtoint ptr %.sink417 to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %.sink417, i64 noundef %i.ir) #17
  br label %.body195

.body195:                                         ; preds = %.body195.sink.split, %.body200, %bb.br
  %.pn76.pn.pn = phi { ptr, i32 } [ %i.go, %bb.br ], [ %.pn76.pn, %.body200 ], [ %.pn76.pn.pn.ph, %.body195.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread: ; preds = %bb.ce
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cg, %bb.cf
  %.063 = phi i1 [ false, %bb.cg ], [ true, %bb.cf ] ; 2 uses
  %i.it = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.iu = load ptr, ptr %19, align 8, !tbaa !16   ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %bb.cl
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !17
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br i1 %.063, label %bb.cm, label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br i1 %.063, label %bb.cm, label %bb.di

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %.pn86311 = phi { ptr, i32 } [ %i.is, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229.thread ], [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229 ], [ %i.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227 ]
  call void @__cxa_free_exception(ptr %i.ib) #18
  br label %bb.di

bb.cn:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit217
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.iz = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #20
          to label %bb.cp unwind label %bb.co     ; 3 uses

bb.co:                                            ; preds = %bb.cn
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %.body233

bb.cp:                                            ; preds = %bb.cn
  store ptr %i.iz, ptr %21, align 8, !tbaa !30
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 120 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.iz, ptr noundef nonnull align 4 dereferenceable(120) @constinit.15, i64 120, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.jb, ptr %i.jd, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18
  %i.je = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #20
          to label %bb.cr unwind label %bb.cq     ; 5 uses

bb.cq:                                            ; preds = %bb.cp
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.body238

bb.cr:                                            ; preds = %bb.cp
  store ptr %i.je, ptr %22, align 8, !tbaa !35
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 6 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !36
  store i16 0, ptr %i.je, align 2
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  store i16 1, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store i16 2, ptr %.sroa.6.0..sroa_idx, align 2
  %i.ji = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.jg, ptr %i.ji, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  %i.jj = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #20
          to label %bb.ct unwind label %bb.cs     ; 3 uses

bb.cs:                                            ; preds = %bb.cr
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body244

bb.ct:                                            ; preds = %bb.cr
  store ptr %i.jj, ptr %23, align 8, !tbaa !53
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 120 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.jj, ptr noundef nonnull align 8 dereferenceable(120) @constinit.16, i64 120, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.jl, ptr %i.jn, align 8, !tbaa !55
  %i.jo = invoke noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm3EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.cu unwind label %bb.db

bb.cu:                                            ; preds = %bb.ct
  %i.jp = load ptr, ptr %23, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i247 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i247, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit249, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.jq = load ptr, ptr %i.jm, align 8, !tbaa !54
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jp to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.jt) #17
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit249

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit249: ; preds = %bb.cu, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  %i.ju = load ptr, ptr %22, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i250 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i250, label %_ZNSt6vectorItSaItEED2Ev.exit252, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit249
  %i.jv = load ptr, ptr %i.jh, align 8, !tbaa !36
  %i.jw = ptrtoint ptr %i.jv to i64
  %i.jx = ptrtoint ptr %i.ju to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jy) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit252

_ZNSt6vectorItSaItEED2Ev.exit252:                 ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm3EESaIS3_EED2Ev.exit249, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.jz = load ptr, ptr %21, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i253 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i253, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit255, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit252
  %i.ka = load ptr, ptr %i.jc, align 8, !tbaa !31
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jz to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kd) #17
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit255

_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit255: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit252, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br i1 %i.jo, label %bb.cy, label %bb.dh

bb.cy:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit255
  %i.ke = call ptr @__cxa_allocate_exception(i64 72) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.cz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.thread

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ke, ptr noundef nonnull align 8 %24, ptr noundef nonnull @.str.5, i32 noundef 78)
          to label %bb.da unwind label %bb.df

bb.da:                                            ; preds = %bb.cz
  invoke void @__cxa_throw(ptr nonnull %i.ke, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #19
          to label %bb.dj unwind label %bb.df

bb.db:                                            ; preds = %bb.ct
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kg = load ptr, ptr %23, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i256 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i256, label %.body244, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.kh = load ptr, ptr %i.jm, align 8, !tbaa !54
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.kg to i64
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kk) #17
  br label %.body244

.body244:                                         ; preds = %bb.cs, %bb.dc, %bb.db
  %.pn80 = phi { ptr, i32 } [ %i.jk, %bb.cs ], [ %i.kf, %bb.dc ], [ %i.kf, %bb.db ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  %i.kl = load ptr, ptr %22, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i259 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i259, label %.body238, label %bb.dd

bb.dd:                                            ; preds = %.body244
  %i.km = load ptr, ptr %i.jh, align 8, !tbaa !36
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = ptrtoint ptr %i.kl to i64
  %i.kp = sub i64 %i.kn, %i.ko
  call void @_ZdlPvm(ptr noundef nonnull %i.kl, i64 noundef %i.kp) #17
  br label %.body238

.body238:                                         ; preds = %bb.cq, %bb.dd, %.body244
  %.pn80.pn = phi { ptr, i32 } [ %i.jf, %bb.cq ], [ %.pn80, %bb.dd ], [ %.pn80, %.body244 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.kq = load ptr, ptr %21, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i262 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i.i262, label %.body233, label %bb.de

bb.de:                                            ; preds = %.body238
  %i.kr = load ptr, ptr %i.jc, align 8, !tbaa !31
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %i.kq to i64
  %i.ku = sub i64 %i.ks, %i.kt
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.ku) #17
  br label %.body233

.body233:                                         ; preds = %bb.co, %bb.de, %.body238
  %.pn80.pn.pn = phi { ptr, i32 } [ %i.ja, %bb.co ], [ %.pn80.pn, %bb.de ], [ %.pn80.pn, %.body238 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.thread: ; preds = %bb.cy
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %bb.dg

bb.df:                                            ; preds = %bb.da, %bb.cz
  %.0 = phi i1 [ false, %bb.da ], [ true, %bb.cz ] ; 2 uses
  %i.kw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kx = load ptr, ptr %24, align 8, !tbaa !16   ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.kz = icmp eq ptr %i.kx, %i.ky
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265: ; preds = %bb.df
  %i.la = load i64, ptr %i.ky, align 8, !tbaa !17
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.lb) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br i1 %.0, label %bb.dg, label %bb.di

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267: ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br i1 %.0, label %bb.dg, label %bb.di

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267
  %.pn84314 = phi { ptr, i32 } [ %i.kv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267.thread ], [ %i.kw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267 ], [ %i.kw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265 ]
  call void @__cxa_free_exception(ptr %i.ke) #18
  br label %bb.di

bb.dh:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit255
  ret void

bb.di:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267, %bb.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, %bb.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.v, %.body233, %.body195, %.body157, %.body119, %.body
  %.pn92.pn = phi { ptr, i32 } [ %.pn92302, %bb.v ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn90305, %bb.as ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ], [ %.pn88308, %bb.bp ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ %.pn86311, %bb.cm ], [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229 ], [ %.pn84314, %bb.dg ], [ %i.kw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit267 ], [ %.pn80.pn.pn, %.body233 ], [ %.pn76.pn.pn, %.body195 ], [ %.pn72.pn.pn, %.body157 ], [ %.pn68.pn.pn, %.body119 ], [ %.pn.pn.pn, %.body ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189 ], [ %i.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227 ], [ %i.kw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i265 ]
  resume { ptr, i32 } %.pn92.pn

bb.dj:                                            ; preds = %bb.da, %bb.cg, %bb.bj, %bb.am, %bb.p
  unreachable
}

declare noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm3EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !38
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.d, ptr %i.a, align 8, !tbaa !39
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !16
  %i.g = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.g, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
end_hunk_1
begin_hunk_2_@_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci:bb.a
bb.j:                                             ; preds = %.noexc.i, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.ac, %bb.i ]
  %i.ae = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !17
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19TestFailedExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !17
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !17
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

declare noundef ptr @_ZN2fs19GetFilenameFromPathEPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvvEZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59
  tail call void @_ZN15TestMeshCompare8testQuadEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_, ptr %0, align 8, !tbaa !26
  br label %_ZNSt14_Function_base13_Base_managerIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !27
  br label %_ZNSt14_Function_base13_Base_managerIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !24
  store i64 %i.a, ptr %0, align 8, !tbaa !24
  br label %_ZNSt14_Function_base13_Base_managerIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN15TestMeshCompare8runTestsEP8IGameDefEUlvE0_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15TestMeshCompare8testQuadEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.4", align 8     ; 9 uses
  %2 = alloca %"class.std::vector.9", align 8     ; 12 uses
  %3 = alloca %"class.std::vector.21", align 8    ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::vector.4", align 8     ; 12 uses
  %7 = alloca %"class.std::vector.9", align 8     ; 12 uses
  %8 = alloca %"class.std::vector.21", align 8    ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %11 = alloca %"class.std::vector.4", align 8    ; 12 uses
  %12 = alloca %"class.std::vector.9", align 8    ; 12 uses
  %13 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %15 = alloca %"class.std::allocator", align 1   ; 5 uses
  %16 = alloca %"class.std::vector.4", align 8    ; 9 uses
  %17 = alloca %"class.std::vector.9", align 8    ; 9 uses
  %18 = alloca %"class.std::vector.21", align 8   ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %20 = alloca %"class.std::allocator", align 1   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.a = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #20
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.a, ptr noundef nonnull align 4 dereferenceable(160) @constinit.29, i64 160, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #20
          to label %bb.f unwind label %bb.d       ; 5 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !35     ; 3 uses
  %.not.i.i4.i76 = icmp eq ptr %i.h, null
  br i1 %.not.i.i4.i76, label %.body77, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #17
  br label %.body77

bb.f:                                             ; preds = %bb.c
  store ptr %i.f, ptr %2, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !36
  store <4 x i16> <i16 0, i16 1, i16 2, i16 0>, ptr %i.f, align 2
  %.sroa.8242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i16 2, ptr %.sroa.8242.0..sroa_idx, align 2
  %.sroa.9243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  store i16 3, ptr %.sroa.9243.0..sroa_idx, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #20
          to label %bb.i unwind label %bb.g       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !62     ; 3 uses
  %.not.i.i4.i79 = icmp eq ptr %i.s, null
  br i1 %.not.i.i4.i79, label %.body81, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #17
  br label %.body81

bb.i:                                             ; preds = %bb.f
  store ptr %i.q, ptr %3, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 160 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !63
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.q, ptr noundef nonnull align 8 dereferenceable(160) @constinit.30, i64 160, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !64
  %i.ab = invoke noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm4EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %3, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #17
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ah = load ptr, ptr %2, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i84 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.am = load ptr, ptr %1, align 8, !tbaa !30    ; 3 uses
  %.not.i.i.i86 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #17
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br i1 %i.ab, label %bb.w, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit
  %i.ar = call ptr @__cxa_allocate_exception(i64 72) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ar, ptr noundef nonnull align 8 %4, ptr noundef nonnull @.str.5, i32 noundef 94)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #19
          to label %bb.cm unwind label %bb.u

bb.q:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i88, label %.body81, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #17
  br label %.body81

.body81:                                          ; preds = %bb.r, %bb.q, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.as, %bb.r ], [ %i.r, %bb.h ], [ %i.as, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.ay = load ptr, ptr %2, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i91 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i91, label %.body77, label %bb.s

bb.s:                                             ; preds = %.body81
  %i.az = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #17
  br label %.body77

.body77:                                          ; preds = %bb.s, %.body81, %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %.pn, %bb.s ], [ %i.g, %bb.e ], [ %.pn, %.body81 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.bd = load ptr, ptr %1, align 8, !tbaa !30    ; 3 uses
  %.not.i.i.i94 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i94, label %.body, label %bb.t

bb.t:                                             ; preds = %.body77
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #17
  br label %.body

.body:                                            ; preds = %bb.b, %bb.t, %.body77
  %.pn.pn.pn = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn.pn, %bb.t ], [ %.pn.pn, %.body77 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.v

bb.u:                                             ; preds = %bb.p, %bb.o
  %.046 = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bk = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !17
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %.046, label %bb.v, label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %.046, label %bb.v, label %bb.cl

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn73247 = phi { ptr, i32 } [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ar) #18
  br label %bb.cl

bb.w:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bp = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #20
          to label %bb.z unwind label %bb.x       ; 3 uses

bb.x:                                             ; preds = %bb.w
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %.not.i.i4.i97 = icmp eq ptr %i.br, null
  br i1 %.not.i.i4.i97, label %.body100, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !31
  br label %.body100.sink.split

bb.z:                                             ; preds = %bb.w
  store ptr %i.bp, ptr %6, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 160 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.bp, ptr noundef nonnull align 4 dereferenceable(160) @constinit.29, i64 160, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.bx = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #20
          to label %bb.ac unwind label %bb.aa     ; 5 uses

bb.aa:                                            ; preds = %bb.z
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %.not.i.i4.i103 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i4.i103, label %.body105, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !36
  br label %.body105.sink.split

bb.ac:                                            ; preds = %bb.z
  store ptr %i.bx, ptr %7, align 8, !tbaa !35
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !36
  store <4 x i16> <i16 2, i16 3, i16 0, i16 1>, ptr %i.bx, align 2
  %.sroa.8232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i16 2, ptr %.sroa.8232.0..sroa_idx, align 2
  %.sroa.9233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 10
  store i16 0, ptr %.sroa.9233.0..sroa_idx, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.cf = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #20
          to label %bb.af unwind label %bb.ad     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %8, align 8, !tbaa !62    ; 2 uses
  %.not.i.i4.i108 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i4.i108, label %.body111, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !63
  br label %.body111.sink.split

bb.af:                                            ; preds = %bb.ac
  store ptr %i.cf, ptr %8, align 8, !tbaa !62
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 160 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.cf, ptr noundef nonnull align 8 dereferenceable(160) @constinit.30, i64 160, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !64
  %i.cn = invoke noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm4EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.co = load ptr, ptr %8, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i114 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit116, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !63
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #17
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit116

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit116: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ct = load ptr, ptr %7, align 8, !tbaa !35    ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorItSaItEED2Ev.exit119, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit116
  %i.cu = load ptr, ptr %i.cd, align 8, !tbaa !36
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit119

_ZNSt6vectorItSaItEED2Ev.exit119:                 ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit116, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.cy = load ptr, ptr %6, align 8, !tbaa !30    ; 3 uses
  %.not.i.i.i120 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit122, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit119
  %i.cz = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #17
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit122

_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit122: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit119, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %i.cn, label %bb.at, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit122
  %i.dd = call ptr @__cxa_allocate_exception(i64 72) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.thread

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.dd, ptr noundef nonnull align 8 %9, ptr noundef nonnull @.str.5, i32 noundef 107)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr nonnull %i.dd, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #19
          to label %bb.cm unwind label %bb.ar

bb.an:                                            ; preds = %bb.af
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.df = load ptr, ptr %8, align 8, !tbaa !62    ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i123, label %.body111, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dg = load ptr, ptr %i.cl, align 8, !tbaa !63
  br label %.body111.sink.split

.body111.sink.split:                              ; preds = %bb.ae, %bb.ao
  %.sink301 = phi ptr [ %i.dg, %bb.ao ], [ %i.cj, %bb.ae ]
  %.sink300 = phi ptr [ %i.df, %bb.ao ], [ %i.ch, %bb.ae ] ; 2 uses
  %.pn55.ph = phi { ptr, i32 } [ %i.de, %bb.ao ], [ %i.cg, %bb.ae ]
  %i.dh = ptrtoint ptr %.sink301 to i64
  %i.di = ptrtoint ptr %.sink300 to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %.sink300, i64 noundef %i.dj) #17
  br label %.body111

.body111:                                         ; preds = %.body111.sink.split, %bb.an, %bb.ad
  %.pn55 = phi { ptr, i32 } [ %i.cg, %bb.ad ], [ %i.de, %bb.an ], [ %.pn55.ph, %.body111.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.dk = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %.not.i.i.i126 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i126, label %.body105, label %bb.ap

bb.ap:                                            ; preds = %.body111
  %i.dl = load ptr, ptr %i.cd, align 8, !tbaa !36
  br label %.body105.sink.split

.body105.sink.split:                              ; preds = %bb.ab, %bb.ap
  %.sink307 = phi ptr [ %i.dl, %bb.ap ], [ %i.cb, %bb.ab ]
  %.sink306 = phi ptr [ %i.dk, %bb.ap ], [ %i.bz, %bb.ab ] ; 2 uses
  %.pn55.pn.ph = phi { ptr, i32 } [ %.pn55, %bb.ap ], [ %i.by, %bb.ab ]
  %i.dm = ptrtoint ptr %.sink307 to i64
  %i.dn = ptrtoint ptr %.sink306 to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %.sink306, i64 noundef %i.do) #17
  br label %.body105

.body105:                                         ; preds = %.body105.sink.split, %.body111, %bb.aa
  %.pn55.pn = phi { ptr, i32 } [ %i.by, %bb.aa ], [ %.pn55, %.body111 ], [ %.pn55.pn.ph, %.body105.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.dp = load ptr, ptr %6, align 8, !tbaa !30    ; 2 uses
  %.not.i.i.i129 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i129, label %.body100, label %bb.aq

bb.aq:                                            ; preds = %.body105
  %i.dq = load ptr, ptr %i.bv, align 8, !tbaa !31
  br label %.body100.sink.split

.body100.sink.split:                              ; preds = %bb.y, %bb.aq
  %.sink313 = phi ptr [ %i.dq, %bb.aq ], [ %i.bt, %bb.y ]
  %.sink312 = phi ptr [ %i.dp, %bb.aq ], [ %i.br, %bb.y ] ; 2 uses
  %.pn55.pn.pn.ph = phi { ptr, i32 } [ %.pn55.pn, %bb.aq ], [ %i.bq, %bb.y ]
  %i.dr = ptrtoint ptr %.sink313 to i64
  %i.ds = ptrtoint ptr %.sink312 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %.sink312, i64 noundef %i.dt) #17
  br label %.body100

.body100:                                         ; preds = %.body100.sink.split, %.body105, %bb.x
  %.pn55.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.x ], [ %.pn55.pn, %.body105 ], [ %.pn55.pn.pn.ph, %.body100.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.thread: ; preds = %bb.ak
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.as

bb.ar:                                            ; preds = %bb.am, %bb.al
  %.048 = phi i1 [ false, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dw = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.ar
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !17
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br i1 %.048, label %bb.as, label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br i1 %.048, label %bb.as, label %bb.cl

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %.pn71250 = phi { ptr, i32 } [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134.thread ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ]
  call void @__cxa_free_exception(ptr %i.dd) #18
  br label %bb.cl

bb.at:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.eb = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #20
          to label %bb.aw unwind label %bb.au     ; 3 uses

bb.au:                                            ; preds = %bb.at
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %.not.i.i4.i135 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i4.i135, label %.body138, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !31
  br label %.body138.sink.split

bb.aw:                                            ; preds = %bb.at
  store ptr %i.eb, ptr %11, align 8, !tbaa !30
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 160 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.eb, ptr noundef nonnull align 4 dereferenceable(160) @constinit.29, i64 160, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ej = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #20
          to label %bb.az unwind label %bb.ax     ; 5 uses

bb.ax:                                            ; preds = %bb.aw
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %12, align 8, !tbaa !35   ; 2 uses
  %.not.i.i4.i141 = icmp eq ptr %i.el, null
  br i1 %.not.i.i4.i141, label %.body143, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !36
  br label %.body143.sink.split

bb.az:                                            ; preds = %bb.aw
  store ptr %i.ej, ptr %12, align 8, !tbaa !35
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 12 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !36
  store <4 x i16> <i16 2, i16 3, i16 1, i16 0>, ptr %i.ej, align 2
  %.sroa.8222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i16 1, ptr %.sroa.8222.0..sroa_idx, align 2
  %.sroa.9223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 10
  store i16 3, ptr %.sroa.9223.0..sroa_idx, align 2
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.er = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #20
          to label %bb.bc unwind label %bb.ba     ; 3 uses

bb.ba:                                            ; preds = %bb.az
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %13, align 8, !tbaa !62   ; 2 uses
  %.not.i.i4.i146 = icmp eq ptr %i.et, null
  br i1 %.not.i.i4.i146, label %.body149, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !63
  br label %.body149.sink.split

bb.bc:                                            ; preds = %bb.az
  store ptr %i.er, ptr %13, align 8, !tbaa !62
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 160 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.er, ptr noundef nonnull align 8 dereferenceable(160) @constinit.30, i64 160, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !64
  %i.ez = invoke noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm4EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.bd unwind label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.fa = load ptr, ptr %13, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i152 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i152, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit154, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fb = load ptr, ptr %i.ex, align 8, !tbaa !63
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fe) #17
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit154

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit154: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.ff = load ptr, ptr %12, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i155 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorItSaItEED2Ev.exit157, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit154
  %i.fg = load ptr, ptr %i.ep, align 8, !tbaa !36
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fj) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit157

_ZNSt6vectorItSaItEED2Ev.exit157:                 ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit154, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.fk = load ptr, ptr %11, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i158 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit160, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit157
  %i.fl = load ptr, ptr %i.eh, align 8, !tbaa !31
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fo) #17
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit160

_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit160: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit157, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br i1 %i.ez, label %bb.bq, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit160
  %i.fp = call ptr @__cxa_allocate_exception(i64 72) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bi unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.thread

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.fp, ptr noundef nonnull align 8 %14, ptr noundef nonnull @.str.5, i32 noundef 120)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  invoke void @__cxa_throw(ptr nonnull %i.fp, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #19
          to label %bb.cm unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bc
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %13, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.i161 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i161, label %.body149, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fs = load ptr, ptr %i.ex, align 8, !tbaa !63
  br label %.body149.sink.split

.body149.sink.split:                              ; preds = %bb.bb, %bb.bl
  %.sink319 = phi ptr [ %i.fs, %bb.bl ], [ %i.ev, %bb.bb ]
  %.sink318 = phi ptr [ %i.fr, %bb.bl ], [ %i.et, %bb.bb ] ; 2 uses
  %.pn59.ph = phi { ptr, i32 } [ %i.fq, %bb.bl ], [ %i.es, %bb.bb ]
  %i.ft = ptrtoint ptr %.sink319 to i64
  %i.fu = ptrtoint ptr %.sink318 to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %.sink318, i64 noundef %i.fv) #17
  br label %.body149

.body149:                                         ; preds = %.body149.sink.split, %bb.bk, %bb.ba
  %.pn59 = phi { ptr, i32 } [ %i.es, %bb.ba ], [ %i.fq, %bb.bk ], [ %.pn59.ph, %.body149.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.fw = load ptr, ptr %12, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i164 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i164, label %.body143, label %bb.bm

bb.bm:                                            ; preds = %.body149
  %i.fx = load ptr, ptr %i.ep, align 8, !tbaa !36
  br label %.body143.sink.split

.body143.sink.split:                              ; preds = %bb.ay, %bb.bm
  %.sink325 = phi ptr [ %i.fx, %bb.bm ], [ %i.en, %bb.ay ]
  %.sink324 = phi ptr [ %i.fw, %bb.bm ], [ %i.el, %bb.ay ] ; 2 uses
  %.pn59.pn.ph = phi { ptr, i32 } [ %.pn59, %bb.bm ], [ %i.ek, %bb.ay ]
  %i.fy = ptrtoint ptr %.sink325 to i64
  %i.fz = ptrtoint ptr %.sink324 to i64
  %i.ga = sub i64 %i.fy, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %.sink324, i64 noundef %i.ga) #17
  br label %.body143

.body143:                                         ; preds = %.body143.sink.split, %.body149, %bb.ax
  %.pn59.pn = phi { ptr, i32 } [ %i.ek, %bb.ax ], [ %.pn59, %.body149 ], [ %.pn59.pn.ph, %.body143.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.gb = load ptr, ptr %11, align 8, !tbaa !30   ; 2 uses
  %.not.i.i.i167 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i167, label %.body138, label %bb.bn

bb.bn:                                            ; preds = %.body143
  %i.gc = load ptr, ptr %i.eh, align 8, !tbaa !31
  br label %.body138.sink.split

.body138.sink.split:                              ; preds = %bb.av, %bb.bn
  %.sink331 = phi ptr [ %i.gc, %bb.bn ], [ %i.ef, %bb.av ]
  %.sink330 = phi ptr [ %i.gb, %bb.bn ], [ %i.ed, %bb.av ] ; 2 uses
  %.pn59.pn.pn.ph = phi { ptr, i32 } [ %.pn59.pn, %bb.bn ], [ %i.ec, %bb.av ]
  %i.gd = ptrtoint ptr %.sink331 to i64
  %i.ge = ptrtoint ptr %.sink330 to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %.sink330, i64 noundef %i.gf) #17
  br label %.body138

.body138:                                         ; preds = %.body138.sink.split, %.body143, %bb.au
  %.pn59.pn.pn = phi { ptr, i32 } [ %i.ec, %bb.au ], [ %.pn59.pn, %.body143 ], [ %.pn59.pn.pn.ph, %.body138.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.thread: ; preds = %bb.bh
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bj, %bb.bi
  %.050 = phi i1 [ false, %bb.bj ], [ true, %bb.bi ] ; 2 uses
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gi = load ptr, ptr %14, align 8, !tbaa !16   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.bo
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !17
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br i1 %.050, label %bb.bp, label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br i1 %.050, label %bb.bp, label %bb.cl

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172
  %.pn69253 = phi { ptr, i32 } [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.thread ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ]
  call void @__cxa_free_exception(ptr %i.fp) #18
  br label %bb.cl

bb.bq:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit160
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.gn = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #20
          to label %bb.bs unwind label %bb.br     ; 3 uses

bb.br:                                            ; preds = %bb.bq
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.bs:                                            ; preds = %bb.bq
  store ptr %i.gn, ptr %16, align 8, !tbaa !30
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 160 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.gn, ptr noundef nonnull align 4 dereferenceable(160) @constinit.29, i64 160, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.gs = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #20
          to label %bb.bu unwind label %bb.bt     ; 5 uses

bb.bt:                                            ; preds = %bb.bs
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body181

bb.bu:                                            ; preds = %bb.bs
  store ptr %i.gs, ptr %17, align 8, !tbaa !35
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 12 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !36
  store <4 x i16> <i16 3, i16 0, i16 1, i16 1>, ptr %i.gs, align 2
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i16 2, ptr %.sroa.8.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 10
  store i16 3, ptr %.sroa.9.0..sroa_idx, align 2
  %i.gw = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.gu, ptr %i.gw, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  %i.gx = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #20
          to label %bb.bw unwind label %bb.bv     ; 3 uses

bb.bv:                                            ; preds = %bb.bu
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body187

bb.bw:                                            ; preds = %bb.bu
  store ptr %i.gx, ptr %18, align 8, !tbaa !62
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 160 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.gx, ptr noundef nonnull align 8 dereferenceable(160) @constinit.30, i64 160, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.gz, ptr %i.hb, align 8, !tbaa !64
  %i.hc = invoke noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm4EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.bx unwind label %bb.ce

bb.bx:                                            ; preds = %bb.bw
  %i.hd = load ptr, ptr %18, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i190 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i190, label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit192, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.he = load ptr, ptr %i.ha, align 8, !tbaa !63
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hd to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hh) #17
  br label %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit192

_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit192: ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.hi = load ptr, ptr %17, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i193 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i193, label %_ZNSt6vectorItSaItEED2Ev.exit195, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit192
  %i.hj = load ptr, ptr %i.gv, align 8, !tbaa !36
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hm) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit195

_ZNSt6vectorItSaItEED2Ev.exit195:                 ; preds = %_ZNSt6vectorISt5arrayIN5video9S3DVertexELm4EESaIS3_EED2Ev.exit192, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.hn = load ptr, ptr %16, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i196 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i196, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit198, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit195
  %i.ho = load ptr, ptr %i.gq, align 8, !tbaa !31
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hr) #17
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit198

_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit198: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit195, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br i1 %i.hc, label %bb.ck, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit198
  %i.hs = call ptr @__cxa_allocate_exception(i64 72) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.cc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.thread

bb.cc:                                            ; preds = %bb.cb
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.hs, ptr noundef nonnull align 8 %19, ptr noundef nonnull @.str.5, i32 noundef 133)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  invoke void @__cxa_throw(ptr nonnull %i.hs, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #19
          to label %bb.cm unwind label %bb.ci

bb.ce:                                            ; preds = %bb.bw
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hu = load ptr, ptr %18, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i199 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i199, label %.body187, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hv = load ptr, ptr %i.ha, align 8, !tbaa !63
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.hu to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hy) #17
  br label %.body187

.body187:                                         ; preds = %bb.bv, %bb.cf, %bb.ce
  %.pn63 = phi { ptr, i32 } [ %i.gy, %bb.bv ], [ %i.ht, %bb.cf ], [ %i.ht, %bb.ce ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  %i.hz = load ptr, ptr %17, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i202 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i202, label %.body181, label %bb.cg

bb.cg:                                            ; preds = %.body187
  %i.ia = load ptr, ptr %i.gv, align 8, !tbaa !36
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hz to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.id) #17
  br label %.body181

.body181:                                         ; preds = %bb.bt, %bb.cg, %.body187
  %.pn63.pn = phi { ptr, i32 } [ %i.gt, %bb.bt ], [ %.pn63, %bb.cg ], [ %.pn63, %.body187 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.ie = load ptr, ptr %16, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i205 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i205, label %.body176, label %bb.ch

bb.ch:                                            ; preds = %.body181
  %i.if = load ptr, ptr %i.gq, align 8, !tbaa !31
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = ptrtoint ptr %i.ie to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ii) #17
  br label %.body176

.body176:                                         ; preds = %bb.br, %bb.ch, %.body181
  %.pn63.pn.pn = phi { ptr, i32 } [ %i.go, %bb.br ], [ %.pn63.pn, %bb.ch ], [ %.pn63.pn, %.body181 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.thread: ; preds = %bb.cb
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cd, %bb.cc
  %.0 = phi i1 [ false, %bb.cd ], [ true, %bb.cc ] ; 2 uses
  %i.ik = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.il = load ptr, ptr %19, align 8, !tbaa !16   ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.in = icmp eq ptr %i.il, %i.im
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.ci
  %i.io = load i64, ptr %i.im, align 8, !tbaa !17
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.ip) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br i1 %.0, label %bb.cj, label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br i1 %.0, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %.pn67256 = phi { ptr, i32 } [ %i.ij, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.thread ], [ %i.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %i.ik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208 ]
  call void @__cxa_free_exception(ptr %i.hs) #18
  br label %bb.cl

bb.ck:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit198
  ret void

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.v, %.body176, %.body138, %.body100, %.body
  %.pn73.pn = phi { ptr, i32 } [ %.pn73247, %bb.v ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn71250, %bb.as ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %.pn69253, %bb.bp ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ], [ %.pn67256, %bb.cj ], [ %i.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %.pn63.pn.pn, %.body176 ], [ %.pn59.pn.pn, %.body138 ], [ %.pn55.pn.pn, %.body100 ], [ %.pn.pn.pn, %.body ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %i.ik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208 ]
  resume { ptr, i32 } %.pn73.pn

bb.cm:                                            ; preds = %bb.cd, %bb.bj, %bb.am, %bb.p
  unreachable
}

declare noundef zeroext i1 @_Z14checkMeshEqualRKSt6vectorIN5video9S3DVertexESaIS1_EERKS_ItSaItEERKS_ISt5arrayIS1_Lm4EESaISB_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_test_mesh_compare.cpp() #14 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL17mesh_compare_test, i64 32), ptr getelementptr inbounds nuw (i8, ptr @_ZL17mesh_compare_test, i64 16), align 8, !tbaa !38
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17mesh_compare_test, i64 24), align 8, !tbaa !40
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17mesh_compare_test, i64 32), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV15TestMeshCompare, i64 16), ptr @_ZL17mesh_compare_test, align 8, !tbaa !10
  invoke void @_ZN11TestManager18registerTestModuleEP8TestBase(ptr noundef nonnull @_ZL17mesh_compare_test)
          to label %__cxx_global_var_init.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV8TestBase, i64 16), ptr @_ZL17mesh_compare_test, align 8, !tbaa !10
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL17mesh_compare_test, i64 16), align 8, !tbaa !16 ; 2 uses
  %i.c = icmp eq ptr %i.b, getelementptr inbounds nuw (i8, ptr @_ZL17mesh_compare_test, i64 32)
  br i1 %i.c, label %_ZN8TestBaseD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17mesh_compare_test, i64 32), align 8, !tbaa !17
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.e) #17
  br label %_ZN8TestBaseD2Ev.exit.i.i

_ZN8TestBaseD2Ev.exit.i.i:                        ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  resume { ptr, i32 } %i.a

__cxx_global_var_init.exit:                       ; preds = %bb.a
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8TestBaseD2Ev, ptr nonnull @_ZL17mesh_compare_test, ptr nonnull @__dso_handle) #18 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
