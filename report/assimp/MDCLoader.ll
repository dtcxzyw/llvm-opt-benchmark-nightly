Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/MDCLoader?download=true
inline.NumInlined: 403
inline.NumDeleted: 202
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.aiImporterDesc = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.aiColor3D = type { float, float, float }
%struct.aiString = type { i32, [1024 x i8] }

$_Z18ai_str_toprintableB5cxx11PKcic = comdat any

$_ZN17DeadlyImportErrorC2IJRA46_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_ = comdat any

$_ZN17DeadlyImportErrorC2EPKc = comdat any

$_ZN17DeadlyImportErrorC2IJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZN6Assimp12BaseImporterD2Ev = comdat any

$_ZN6Assimp11MDCImporterD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN17DeadlyImportErrorD0Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA46_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA25_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJRA2_KcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_ = comdat any

$_ZN15DeadlyErrorBaseC2IJERA2_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA64_KcmEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZTI17DeadlyImportError = comdat any

$_ZTS17DeadlyImportError = comdat any

$_ZTI15DeadlyErrorBase = comdat any

$_ZTS15DeadlyErrorBase = comdat any

$_ZTV17DeadlyImportError = comdat any

@_ZL10mdcNormals = internal unnamed_addr constant [256 x [3 x float]] [[3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 9.807850e-01, float 1.950900e-01, float 0.000000e+00], [3 x float] [float f0x3F6C8366, float 3.826830e-01, float 0.000000e+00], [3 x float] [float 8.314700e-01, float 5.555700e-01, float 0.000000e+00], [3 x float] [float 7.071070e-01, float 7.071070e-01, float 0.000000e+00], [3 x float] [float 5.555700e-01, float 8.314700e-01, float 0.000000e+00], [3 x float] [float 3.826830e-01, float f0x3F6C8366, float 0.000000e+00], [3 x float] [float 1.950900e-01, float 9.807850e-01, float 0.000000e+00], [3 x float] [float -0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float -1.950900e-01, float 9.807850e-01, float 0.000000e+00], [3 x float] [float -3.826830e-01, float f0x3F6C8366, float 0.000000e+00], [3 x float] [float -5.555700e-01, float 8.314700e-01, float 0.000000e+00], [3 x float] [float -7.071070e-01, float 7.071070e-01, float 0.000000e+00], [3 x float] [float -8.314700e-01, float 5.555700e-01, float 0.000000e+00], [3 x float] [float f0xBF6C8366, float 3.826830e-01, float 0.000000e+00], [3 x float] [float -9.807850e-01, float 1.950900e-01, float 0.000000e+00], [3 x float] [float -1.000000e+00, float -0.000000e+00, float 0.000000e+00], [3 x float] [float -9.807850e-01, float -1.950900e-01, float 0.000000e+00], [3 x float] [float f0xBF6C8366, float -3.826830e-01, float 0.000000e+00], [3 x float] [float -8.314700e-01, float -5.555700e-01, float 0.000000e+00], [3 x float] [float -7.071070e-01, float -7.071070e-01, float 0.000000e+00], [3 x float] [float -5.555700e-01, float f0xBF54DB27, float 0.000000e+00], [3 x float] [float -3.826840e-01, float f0xBF6C8366, float 0.000000e+00], [3 x float] [float -1.950900e-01, float -9.807850e-01, float 0.000000e+00], [3 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00], [3 x float] [float 1.950900e-01, float -9.807850e-01, float 0.000000e+00], [3 x float] [float 3.826840e-01, float -9.238790e-01, float 0.000000e+00], [3 x float] [float 5.555700e-01, float -8.314700e-01, float 0.000000e+00], [3 x float] [float 7.071070e-01, float -7.071070e-01, float 0.000000e+00], [3 x float] [float 8.314700e-01, float -5.555700e-01, float 0.000000e+00], [3 x float] [float f0x3F6C8366, float -3.826830e-01, float 0.000000e+00], [3 x float] [float 9.807850e-01, float -1.950900e-01, float 0.000000e+00], [3 x float] [float 9.807850e-01, float 0.000000e+00, float -1.950900e-01], [3 x float] [float f0x3F74C932, float 2.182450e-01, float -1.950900e-01], [3 x float] [float f0x3F623758, float 4.255470e-01, float -1.950900e-01], [3 x float] [float f0x3F444D98, float f0x3F1C8BEB, float -1.950900e-01], [3 x float] [float f0x3F1C8BEB, float f0x3F444D98, float -1.950900e-01], [3 x float] [float 4.255470e-01, float f0x3F623758, float -1.950900e-01], [3 x float] [float 2.182450e-01, float f0x3F74C932, float -1.950900e-01], [3 x float] [float -0.000000e+00, float 9.807850e-01, float -1.950900e-01], [3 x float] [float -2.182450e-01, float f0x3F74C932, float -1.950900e-01], [3 x float] [float -4.255470e-01, float f0x3F623758, float -1.950900e-01], [3 x float] [float f0xBF1C8BEB, float f0x3F444D98, float -1.950900e-01], [3 x float] [float f0xBF444D98, float f0x3F1C8BEB, float -1.950900e-01], [3 x float] [float f0xBF623758, float 4.255470e-01, float -1.950900e-01], [3 x float] [float f0xBF74C932, float 2.182450e-01, float -1.950900e-01], [3 x float] [float -9.807850e-01, float -0.000000e+00, float -1.950900e-01], [3 x float] [float f0xBF74C932, float -2.182450e-01, float -1.950900e-01], [3 x float] [float f0xBF623758, float -4.255470e-01, float -1.950900e-01], [3 x float] [float f0xBF444D98, float f0xBF1C8BEB, float -1.950900e-01], [3 x float] [float f0xBF1C8BEB, float f0xBF444D98, float -1.950900e-01], [3 x float] [float -4.255470e-01, float f0xBF623758, float -1.950900e-01], [3 x float] [float -2.182450e-01, float f0xBF74C932, float -1.950900e-01], [3 x float] [float 0.000000e+00, float -9.807850e-01, float -1.950900e-01], [3 x float] [float 2.182450e-01, float f0xBF74C932, float -1.950900e-01], [3 x float] [float 4.255470e-01, float f0xBF623758, float -1.950900e-01], [3 x float] [float f0x3F1C8BEB, float f0xBF444D98, float -1.950900e-01], [3 x float] [float f0x3F444D98, float f0xBF1C8BEB, float -1.950900e-01], [3 x float] [float f0x3F623758, float -4.255470e-01, float -1.950900e-01], [3 x float] [float f0x3F74C932, float -2.182450e-01, float -1.950900e-01], [3 x float] [float f0x3F6C8366, float 0.000000e+00, float -3.826830e-01], [3 x float] [float 8.923990e-01, float 2.391180e-01, float -3.826830e-01], [3 x float] [float 8.001030e-01, float 4.619400e-01, float -3.826830e-01], [3 x float] [float 6.532810e-01, float 6.532810e-01, float -3.826830e-01], [3 x float] [float 4.619400e-01, float 8.001030e-01, float -3.826830e-01], [3 x float] [float 2.391180e-01, float 8.923990e-01, float -3.826830e-01], [3 x float] [float -0.000000e+00, float f0x3F6C8366, float -3.826830e-01], [3 x float] [float -2.391180e-01, float 8.923990e-01, float -3.826830e-01], [3 x float] [float -4.619400e-01, float 8.001030e-01, float -3.826830e-01], [3 x float] [float -6.532810e-01, float 6.532810e-01, float -3.826830e-01], [3 x float] [float -8.001030e-01, float 4.619400e-01, float -3.826830e-01], [3 x float] [float -8.923990e-01, float 2.391180e-01, float -3.826830e-01], [3 x float] [float f0xBF6C8366, float -0.000000e+00, float -3.826830e-01], [3 x float] [float -8.923990e-01, float -2.391180e-01, float -3.826830e-01], [3 x float] [float -8.001030e-01, float -4.619400e-01, float -3.826830e-01], [3 x float] [float f0xBF273D7D, float -6.532810e-01, float -3.826830e-01], [3 x float] [float -4.619400e-01, float -8.001030e-01, float -3.826830e-01], [3 x float] [float -2.391180e-01, float -8.923990e-01, float -3.826830e-01], [3 x float] [float 0.000000e+00, float f0xBF6C8366, float -3.826830e-01], [3 x float] [float 2.391180e-01, float -8.923990e-01, float -3.826830e-01], [3 x float] [float 4.619400e-01, float -8.001030e-01, float -3.826830e-01], [3 x float] [float 6.532810e-01, float f0xBF273D7D, float -3.826830e-01], [3 x float] [float 8.001030e-01, float -4.619400e-01, float -3.826830e-01], [3 x float] [float 8.923990e-01, float -2.391170e-01, float -3.826830e-01], [3 x float] [float 8.314700e-01, float 0.000000e+00, float -5.555700e-01], [3 x float] [float 7.907750e-01, float 2.569380e-01, float -5.555700e-01], [3 x float] [float 6.726730e-01, float 4.887260e-01, float -5.555700e-01], [3 x float] [float 4.887260e-01, float 6.726730e-01, float -5.555700e-01], [3 x float] [float 2.569380e-01, float 7.907750e-01, float -5.555700e-01], [3 x float] [float -0.000000e+00, float 8.314700e-01, float -5.555700e-01], [3 x float] [float -2.569380e-01, float 7.907750e-01, float -5.555700e-01], [3 x float] [float -4.887260e-01, float 6.726730e-01, float -5.555700e-01], [3 x float] [float -6.726730e-01, float 4.887260e-01, float -5.555700e-01], [3 x float] [float -7.907750e-01, float 2.569380e-01, float -5.555700e-01], [3 x float] [float -8.314700e-01, float -0.000000e+00, float -5.555700e-01], [3 x float] [float -7.907750e-01, float -2.569380e-01, float -5.555700e-01], [3 x float] [float -6.726730e-01, float -4.887260e-01, float -5.555700e-01], [3 x float] [float -4.887250e-01, float -6.726730e-01, float -5.555700e-01], [3 x float] [float -2.569380e-01, float -7.907750e-01, float -5.555700e-01], [3 x float] [float 0.000000e+00, float -8.314700e-01, float -5.555700e-01], [3 x float] [float 2.569380e-01, float -7.907750e-01, float -5.555700e-01], [3 x float] [float 4.887250e-01, float -6.726730e-01, float -5.555700e-01], [3 x float] [float 6.726730e-01, float -4.887260e-01, float -5.555700e-01], [3 x float] [float 7.907750e-01, float -2.569380e-01, float -5.555700e-01], [3 x float] [float 7.071070e-01, float 0.000000e+00, float -7.071070e-01], [3 x float] [float 6.532810e-01, float 2.705980e-01, float -7.071070e-01], [3 x float] [float 5.000000e-01, float 5.000000e-01, float -7.071070e-01], [3 x float] [float 2.705980e-01, float 6.532810e-01, float -7.071070e-01], [3 x float] [float -0.000000e+00, float 7.071070e-01, float -7.071070e-01], [3 x float] [float -2.705980e-01, float f0x3F273D7D, float -7.071070e-01], [3 x float] [float -5.000000e-01, float 5.000000e-01, float -7.071070e-01], [3 x float] [float -6.532810e-01, float 2.705980e-01, float -7.071070e-01], [3 x float] [float -7.071070e-01, float -0.000000e+00, float -7.071070e-01], [3 x float] [float -6.532810e-01, float -2.705980e-01, float -7.071070e-01], [3 x float] [float -5.000000e-01, float -5.000000e-01, float -7.071070e-01], [3 x float] [float -2.705980e-01, float -6.532810e-01, float -7.071070e-01], [3 x float] [float 0.000000e+00, float -7.071070e-01, float -7.071070e-01], [3 x float] [float 2.705980e-01, float -6.532810e-01, float -7.071070e-01], [3 x float] [float 5.000000e-01, float -5.000000e-01, float -7.071070e-01], [3 x float] [float f0x3F273D7D, float -2.705980e-01, float -7.071070e-01], [3 x float] [float 5.555700e-01, float 0.000000e+00, float -8.314700e-01], [3 x float] [float 4.811380e-01, float 2.777850e-01, float -8.314700e-01], [3 x float] [float 2.777850e-01, float 4.811380e-01, float -8.314700e-01], [3 x float] [float -0.000000e+00, float 5.555700e-01, float -8.314700e-01], [3 x float] [float -2.777850e-01, float 4.811380e-01, float -8.314700e-01], [3 x float] [float -4.811380e-01, float 2.777850e-01, float -8.314700e-01], [3 x float] [float -5.555700e-01, float -0.000000e+00, float -8.314700e-01], [3 x float] [float -4.811380e-01, float -2.777850e-01, float -8.314700e-01], [3 x float] [float -2.777850e-01, float -4.811380e-01, float -8.314700e-01], [3 x float] [float 0.000000e+00, float -5.555700e-01, float -8.314700e-01], [3 x float] [float 2.777850e-01, float -4.811380e-01, float -8.314700e-01], [3 x float] [float 4.811380e-01, float -2.777850e-01, float -8.314700e-01], [3 x float] [float 3.826830e-01, float 0.000000e+00, float f0xBF6C8366], [3 x float] [float 2.705980e-01, float 2.705980e-01, float f0xBF6C8366], [3 x float] [float -0.000000e+00, float 3.826830e-01, float f0xBF6C8366], [3 x float] [float -2.705980e-01, float 2.705980e-01, float f0xBF6C8366], [3 x float] [float -3.826830e-01, float -0.000000e+00, float f0xBF6C8366], [3 x float] [float -2.705980e-01, float -2.705980e-01, float f0xBF6C8366], [3 x float] [float 0.000000e+00, float -3.826830e-01, float f0xBF6C8366], [3 x float] [float 2.705980e-01, float -2.705980e-01, float f0xBF6C8366], [3 x float] [float 1.950900e-01, float 0.000000e+00, float -9.807850e-01], [3 x float] [float -0.000000e+00, float 1.950900e-01, float -9.807850e-01], [3 x float] [float -1.950900e-01, float -0.000000e+00, float -9.807850e-01], [3 x float] [float 0.000000e+00, float -1.950900e-01, float -9.807850e-01], [3 x float] [float 9.807850e-01, float 0.000000e+00, float 1.950900e-01], [3 x float] [float f0x3F74C932, float 2.182450e-01, float 1.950900e-01], [3 x float] [float f0x3F623758, float 4.255470e-01, float 1.950900e-01], [3 x float] [float f0x3F444D98, float f0x3F1C8BEB, float 1.950900e-01], [3 x float] [float f0x3F1C8BEB, float f0x3F444D98, float 1.950900e-01], [3 x float] [float 4.255470e-01, float f0x3F623758, float 1.950900e-01], [3 x float] [float 2.182450e-01, float f0x3F74C932, float 1.950900e-01], [3 x float] [float -0.000000e+00, float 9.807850e-01, float 1.950900e-01], [3 x float] [float -2.182450e-01, float f0x3F74C932, float 1.950900e-01], [3 x float] [float -4.255470e-01, float f0x3F623758, float 1.950900e-01], [3 x float] [float f0xBF1C8BEB, float f0x3F444D98, float 1.950900e-01], [3 x float] [float f0xBF444D98, float f0x3F1C8BEB, float 1.950900e-01], [3 x float] [float f0xBF623758, float 4.255470e-01, float 1.950900e-01], [3 x float] [float f0xBF74C932, float 2.182450e-01, float 1.950900e-01], [3 x float] [float -9.807850e-01, float -0.000000e+00, float 1.950900e-01], [3 x float] [float f0xBF74C932, float -2.182450e-01, float 1.950900e-01], [3 x float] [float f0xBF623758, float -4.255470e-01, float 1.950900e-01], [3 x float] [float f0xBF444D98, float f0xBF1C8BEB, float 1.950900e-01], [3 x float] [float f0xBF1C8BEB, float f0xBF444D98, float 1.950900e-01], [3 x float] [float -4.255470e-01, float f0xBF623758, float 1.950900e-01], [3 x float] [float -2.182450e-01, float f0xBF74C932, float 1.950900e-01], [3 x float] [float 0.000000e+00, float -9.807850e-01, float 1.950900e-01], [3 x float] [float 2.182450e-01, float f0xBF74C932, float 1.950900e-01], [3 x float] [float 4.255470e-01, float f0xBF623758, float 1.950900e-01], [3 x float] [float f0x3F1C8BEB, float f0xBF444D98, float 1.950900e-01], [3 x float] [float f0x3F444D98, float f0xBF1C8BEB, float 1.950900e-01], [3 x float] [float f0x3F623758, float -4.255470e-01, float 1.950900e-01], [3 x float] [float f0x3F74C932, float -2.182450e-01, float 1.950900e-01], [3 x float] [float f0x3F6C8366, float 0.000000e+00, float 3.826830e-01], [3 x float] [float 8.923990e-01, float 2.391180e-01, float 3.826830e-01], [3 x float] [float 8.001030e-01, float 4.619400e-01, float 3.826830e-01], [3 x float] [float 6.532810e-01, float 6.532810e-01, float 3.826830e-01], [3 x float] [float 4.619400e-01, float 8.001030e-01, float 3.826830e-01], [3 x float] [float 2.391180e-01, float 8.923990e-01, float 3.826830e-01], [3 x float] [float -0.000000e+00, float f0x3F6C8366, float 3.826830e-01], [3 x float] [float -2.391180e-01, float 8.923990e-01, float 3.826830e-01], [3 x float] [float -4.619400e-01, float 8.001030e-01, float 3.826830e-01], [3 x float] [float -6.532810e-01, float 6.532810e-01, float 3.826830e-01], [3 x float] [float -8.001030e-01, float 4.619400e-01, float 3.826830e-01], [3 x float] [float -8.923990e-01, float 2.391180e-01, float 3.826830e-01], [3 x float] [float f0xBF6C8366, float -0.000000e+00, float 3.826830e-01], [3 x float] [float -8.923990e-01, float -2.391180e-01, float 3.826830e-01], [3 x float] [float -8.001030e-01, float -4.619400e-01, float 3.826830e-01], [3 x float] [float f0xBF273D7D, float -6.532810e-01, float 3.826830e-01], [3 x float] [float -4.619400e-01, float -8.001030e-01, float 3.826830e-01], [3 x float] [float -2.391180e-01, float -8.923990e-01, float 3.826830e-01], [3 x float] [float 0.000000e+00, float f0xBF6C8366, float 3.826830e-01], [3 x float] [float 2.391180e-01, float -8.923990e-01, float 3.826830e-01], [3 x float] [float 4.619400e-01, float -8.001030e-01, float 3.826830e-01], [3 x float] [float 6.532810e-01, float f0xBF273D7D, float 3.826830e-01], [3 x float] [float 8.001030e-01, float -4.619400e-01, float 3.826830e-01], [3 x float] [float 8.923990e-01, float -2.391170e-01, float 3.826830e-01], [3 x float] [float 8.314700e-01, float 0.000000e+00, float 5.555700e-01], [3 x float] [float 7.907750e-01, float 2.569380e-01, float 5.555700e-01], [3 x float] [float 6.726730e-01, float 4.887260e-01, float 5.555700e-01], [3 x float] [float 4.887260e-01, float 6.726730e-01, float 5.555700e-01], [3 x float] [float 2.569380e-01, float 7.907750e-01, float 5.555700e-01], [3 x float] [float -0.000000e+00, float 8.314700e-01, float 5.555700e-01], [3 x float] [float -2.569380e-01, float 7.907750e-01, float 5.555700e-01], [3 x float] [float -4.887260e-01, float 6.726730e-01, float 5.555700e-01], [3 x float] [float -6.726730e-01, float 4.887260e-01, float 5.555700e-01], [3 x float] [float -7.907750e-01, float 2.569380e-01, float 5.555700e-01], [3 x float] [float -8.314700e-01, float -0.000000e+00, float 5.555700e-01], [3 x float] [float -7.907750e-01, float -2.569380e-01, float 5.555700e-01], [3 x float] [float -6.726730e-01, float -4.887260e-01, float 5.555700e-01], [3 x float] [float -4.887250e-01, float -6.726730e-01, float 5.555700e-01], [3 x float] [float -2.569380e-01, float -7.907750e-01, float 5.555700e-01], [3 x float] [float 0.000000e+00, float -8.314700e-01, float 5.555700e-01], [3 x float] [float 2.569380e-01, float -7.907750e-01, float 5.555700e-01], [3 x float] [float 4.887250e-01, float -6.726730e-01, float 5.555700e-01], [3 x float] [float 6.726730e-01, float -4.887260e-01, float 5.555700e-01], [3 x float] [float 7.907750e-01, float -2.569380e-01, float 5.555700e-01], [3 x float] [float 7.071070e-01, float 0.000000e+00, float 7.071070e-01], [3 x float] [float 6.532810e-01, float 2.705980e-01, float 7.071070e-01], [3 x float] [float 5.000000e-01, float 5.000000e-01, float 7.071070e-01], [3 x float] [float 2.705980e-01, float 6.532810e-01, float 7.071070e-01], [3 x float] [float -0.000000e+00, float 7.071070e-01, float 7.071070e-01], [3 x float] [float -2.705980e-01, float f0x3F273D7D, float 7.071070e-01], [3 x float] [float -5.000000e-01, float 5.000000e-01, float 7.071070e-01], [3 x float] [float -6.532810e-01, float 2.705980e-01, float 7.071070e-01], [3 x float] [float -7.071070e-01, float -0.000000e+00, float 7.071070e-01], [3 x float] [float -6.532810e-01, float -2.705980e-01, float 7.071070e-01], [3 x float] [float -5.000000e-01, float -5.000000e-01, float 7.071070e-01], [3 x float] [float -2.705980e-01, float -6.532810e-01, float 7.071070e-01], [3 x float] [float 0.000000e+00, float -7.071070e-01, float 7.071070e-01], [3 x float] [float 2.705980e-01, float -6.532810e-01, float 7.071070e-01], [3 x float] [float 5.000000e-01, float -5.000000e-01, float 7.071070e-01], [3 x float] [float f0x3F273D7D, float -2.705980e-01, float 7.071070e-01], [3 x float] [float 5.555700e-01, float 0.000000e+00, float 8.314700e-01], [3 x float] [float 4.811380e-01, float 2.777850e-01, float 8.314700e-01], [3 x float] [float 2.777850e-01, float 4.811380e-01, float 8.314700e-01], [3 x float] [float -0.000000e+00, float 5.555700e-01, float 8.314700e-01], [3 x float] [float -2.777850e-01, float 4.811380e-01, float 8.314700e-01], [3 x float] [float -4.811380e-01, float 2.777850e-01, float 8.314700e-01], [3 x float] [float -5.555700e-01, float -0.000000e+00, float 8.314700e-01], [3 x float] [float -4.811380e-01, float -2.777850e-01, float 8.314700e-01], [3 x float] [float -2.777850e-01, float -4.811380e-01, float 8.314700e-01], [3 x float] [float 0.000000e+00, float -5.555700e-01, float 8.314700e-01], [3 x float] [float 2.777850e-01, float -4.811380e-01, float 8.314700e-01], [3 x float] [float 4.811380e-01, float -2.777850e-01, float 8.314700e-01], [3 x float] [float 3.826830e-01, float 0.000000e+00, float f0x3F6C8366], [3 x float] [float 2.705980e-01, float 2.705980e-01, float f0x3F6C8366], [3 x float] [float -0.000000e+00, float 3.826830e-01, float f0x3F6C8366], [3 x float] [float -2.705980e-01, float 2.705980e-01, float f0x3F6C8366], [3 x float] [float -3.826830e-01, float -0.000000e+00, float f0x3F6C8366], [3 x float] [float -2.705980e-01, float -2.705980e-01, float f0x3F6C8366], [3 x float] [float 0.000000e+00, float -3.826830e-01, float f0x3F6C8366], [3 x float] [float 2.705980e-01, float -2.705980e-01, float f0x3F6C8366], [3 x float] [float 1.950900e-01, float 0.000000e+00, float 9.807850e-01], [3 x float] [float -0.000000e+00, float 1.950900e-01, float 9.807850e-01], [3 x float] [float -1.950900e-01, float -0.000000e+00, float 9.807850e-01], [3 x float] [float 0.000000e+00, float -1.950900e-01, float 9.807850e-01]], align 16, !guid !5
@_ZTVN6Assimp11MDCImporterE = hidden unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN6Assimp11MDCImporterE, ptr @_ZN6Assimp12BaseImporterD2Ev, ptr @_ZN6Assimp11MDCImporterD0Ev, ptr @_ZNK6Assimp11MDCImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEb, ptr @_ZN6Assimp11MDCImporter15SetupPropertiesEPKNS_8ImporterE, ptr @_ZNK6Assimp11MDCImporter7GetInfoEv, ptr @_ZN6Assimp11MDCImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE] }, align 8, !guid !6
@_ZZNK6Assimp11MDCImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEbE6tokens = internal constant [1 x i32] [i32 1229213763], align 4, !guid !7
@_ZL4desc = internal constant %struct.aiImporterDesc { ptr @.str.23, ptr @.str.24, ptr @.str.24, ptr @.str.24, i32 2, i32 0, i32 0, i32 0, i32 0, ptr @.str.25 }, align 8, !guid !8
@.str.2 = private unnamed_addr constant [46 x i8] c"Invalid MDC magic word: expected IDPC, found \00", align 1, !guid !9
@_ZTI17DeadlyImportError = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17DeadlyImportError, ptr @_ZTI15DeadlyErrorBase }, comdat, align 8, !guid !10
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17DeadlyImportError = linkonce_odr constant [20 x i8] c"17DeadlyImportError\00", comdat, align 1, !guid !11
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8, !guid !12
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1, !guid !13
@_ZTISt13runtime_error = external constant ptr
@.str.3 = private unnamed_addr constant [63 x i8] c"Unsupported MDC file version (2 (AI_MDC_VERSION) was expected)\00", align 1, !guid !14
@.str.4 = private unnamed_addr constant [96 x i8] c"Some of the offset values in the MDC header are invalid and point to something behind the file.\00", align 1, !guid !15
@.str.5 = private unnamed_addr constant [37 x i8] c"The requested frame is not available\00", align 1, !guid !16
@.str.6 = private unnamed_addr constant [101 x i8] c"Some of the offset values in the MDC surface header are invalid and point somewhere behind the file.\00", align 1, !guid !17
@.str.7 = private unnamed_addr constant [20 x i8] c"IMPORT_MDC_KEYFRAME\00", align 1, !guid !18
@.str.8 = private unnamed_addr constant [23 x i8] c"IMPORT_GLOBAL_KEYFRAME\00", align 1, !guid !19
@.str.10 = private unnamed_addr constant [25 x i8] c"Failed to open MDC file \00", align 1, !guid !20
@.str.11 = private unnamed_addr constant [2 x i8] c".\00", align 1, !guid !21
@.str.12 = private unnamed_addr constant [23 x i8] c"MDC File is too small.\00", align 1, !guid !22
@.str.13 = private unnamed_addr constant [54 x i8] c"MDCImporter: pcVerts points outside of surface block.\00", align 1, !guid !23
@.str.14 = private unnamed_addr constant [55 x i8] c"MDCImporter: pcCVerts points outside of surface block.\00", align 1, !guid !24
@.str.15 = private unnamed_addr constant [33 x i8] c"MDC vertex index is out of range\00", align 1, !guid !25
@.str.16 = private unnamed_addr constant [46 x i8] c"Invalid MDC file: File contains no valid mesh\00", align 1, !guid !26
@.str.17 = private unnamed_addr constant [7 x i8] c"<root>\00", align 1, !guid !27
@.str.18 = private unnamed_addr constant [14 x i8] c"$mat.shadingm\00", align 1, !guid !28
@.str.19 = private unnamed_addr constant [13 x i8] c"$clr.ambient\00", align 1, !guid !29
@.str.20 = private unnamed_addr constant [13 x i8] c"$clr.diffuse\00", align 1, !guid !30
@.str.21 = private unnamed_addr constant [14 x i8] c"$clr.specular\00", align 1, !guid !31
@.str.22 = private unnamed_addr constant [10 x i8] c"$tex.file\00", align 1, !guid !32
@_ZTIN6Assimp11MDCImporterE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp11MDCImporterE, ptr @_ZTIN6Assimp12BaseImporterE }, align 8, !guid !33
@_ZTSN6Assimp11MDCImporterE = hidden constant [23 x i8] c"N6Assimp11MDCImporterE\00", align 1, !guid !34
@_ZTIN6Assimp12BaseImporterE = external constant ptr
@.str.23 = private unnamed_addr constant [43 x i8] c"Return To Castle Wolfenstein Mesh Importer\00", align 1, !guid !35
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !guid !36
@.str.25 = private unnamed_addr constant [4 x i8] c"mdc\00", align 1, !guid !37
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8, !guid !38
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVN6Assimp12BaseImporterE = external unnamed_addr constant { [8 x ptr] }, align 8
@.str.31 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1, !guid !39

@_ZN6Assimp11MDCImporterC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6Assimp11MDCImporterC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6Assimp3MDC11BuildVertexERKNS0_5FrameERKNS0_10BaseVertexERKNS0_16CompressedVertexER10aiVector3tIfESC_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %4) local_unnamed_addr #0 !guid !41 {
bb.a:
  %i.a = load i8, ptr %2, align 1
  %i.b = uitofp i8 %i.a to float
  %i.c = fadd nnan ninf float %i.b, -1.270000e+02
  %i.d = fmul nnan float %i.c, 4.000000e+00
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = load <2 x i8>, ptr %i.e, align 1
  %i.g = uitofp <2 x i8> %i.f to <2 x float>
  %i.h = fadd nnan ninf <2 x float> %i.g, splat (float -1.270000e+02)
  %i.i = fmul nnan <2 x float> %i.h, splat (float 4.000000e+00) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load float, ptr %i.j, align 4
  %i.l = load i16, ptr %1, align 1
  %i.m = sitofp i16 %i.l to float
  %i.n = fadd float %i.d, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float 1.562500e-02, float %i.k)
  store float %i.o, ptr %3, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load float, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i16, ptr %i.r, align 1
  %i.t = sitofp i16 %i.s to float
  %i.u = extractelement <2 x float> %i.i, i64 0
  %i.v = fadd float %i.u, %i.t
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 1.562500e-02, float %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load float, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load i16, ptr %i.aa, align 1
  %i.ac = sitofp i16 %i.ab to float
  %i.ad = extractelement <2 x float> %i.i, i64 1
  %i.ae = fadd float %i.ad, %i.ac
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float 1.562500e-02, float %i.z)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr @_ZL10mdcNormals, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4
  store float %i.al, ptr %4, align 4
  %i.am = load i8, ptr %i.ah, align 1
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr @_ZL10mdcNormals, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.aq, ptr %i.ar, align 4
  %i.as = load i8, ptr %i.ah, align 1
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [12 x i8], ptr @_ZL10mdcNormals, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.aw, ptr %i.ax, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp11MDCImporterC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #3 align 2 !guid !42 {
bb.a:
  tail call void @_ZN6Assimp12BaseImporterC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #22
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp11MDCImporterE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp12BaseImporterC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp11MDCImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i1 zeroext %3) unnamed_addr #5 align 2 !guid !43 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6Assimp12BaseImporter15CheckMagicTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvmjj(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZZNK6Assimp11MDCImporter7CanReadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemEbE6tokens, i64 noundef 1, i32 noundef 0, i32 noundef 4)
  ret i1 %i.a
}

declare noundef zeroext i1 @_ZN6Assimp12BaseImporter15CheckMagicTokenEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvmjj(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZNK6Assimp11MDCImporter7GetInfoEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 !guid !44 {
bb.a:
  ret ptr @_ZL4desc
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDCImporter14ValidateHeaderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !guid !45 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load i32, ptr %i.b, align 1
  switch i32 %i.c, label %bb.b [
    i32 1129333833, label %bb.g
    i32 1229213763, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.e = load ptr, ptr %i.a, align 8
  invoke void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef %i.e, i32 noundef 4, i8 noundef signext 63)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN17DeadlyImportErrorC2IJRA46_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(46) @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.t unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0, label %bb.f, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br i1 %.0, label %bb.f, label %bb.s

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #22
  br label %bb.s

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.n = load i32, ptr %i.m, align 1
  %.not10 = icmp eq i32 %i.n, 2
  br i1 %.not10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull @.str.3)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = phi ptr [ %.pre, %bb.h ], [ %i.b, %bb.g ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 92
  %i.r = load i32, ptr %i.q, align 1
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  %i.u = load i32, ptr %i.t, align 1              ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.v, 56
  %i.x = add nuw nsw i64 %i.w, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = icmp samesign ugt i64 %i.x, %i.aa
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 84
  %i.ag = load i32, ptr %i.af, align 1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw nsw i64 %i.ah, 124
  %i.aj = add nuw nsw i64 %i.ai, %i.ae
  %i.ak = icmp samesign ugt i64 %i.aj, %i.aa
  br i1 %i.ak, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull @.str.4)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MDCImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
bb.bg:                                            ; preds = %.split.us.1
  %i.ou = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ou, ptr noundef nonnull @.str.15)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %bb.bh
  %i.ov = load i32, ptr %i.er, align 1
  %i.ow = add i32 %i.ov, -1
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.bi, %.split.us.1
  %.0199.us.1 = phi i32 [ %i.ow, %bb.bi ], [ %i.os, %.split.us.1 ]
  %i.ox = zext i32 %.0199.us.1 to i64             ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.ox ; 4 uses
  %i.oz = load i16, ptr %i.oy, align 1
  %i.pa = sitofp i16 %i.oz to float
  %i.pb = fmul nnan float %i.pa, 1.562500e-02
  store float %i.pb, ptr %i.oo, align 4
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 2
  %i.pd = load i16, ptr %i.pc, align 1
  %i.pe = sitofp i16 %i.pd to float
  %i.pf = fmul nnan float %i.pe, 1.562500e-02
  %i.pg = getelementptr inbounds nuw i8, ptr %.0209411, i64 16 ; 3 uses
  store float %i.pf, ptr %i.pg, align 4
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  %i.pi = load i16, ptr %i.ph, align 1
  %i.pj = sitofp i16 %i.pi to float
  %i.pk = fmul nnan float %i.pj, 1.562500e-02
  %i.pl = getelementptr inbounds nuw i8, ptr %.0209411, i64 20 ; 3 uses
  store float %i.pk, ptr %i.pl, align 4
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oy, i64 6
  %i.pn = load i16, ptr %i.pm, align 1
  %i.po = zext i16 %i.pn to i32                   ; 2 uses
  %i.pp = lshr i32 %i.po, 8
  %i.pq = uitofp nneg i32 %i.pp to float
  %i.pr = and i32 %i.po, 255
  %i.ps = uitofp nneg i32 %i.pr to float
  %i.pt = fmul nnan float %i.pq, f0x3CC91551      ; 2 uses
  %i.pu = fmul nnan float %i.ps, f0x3CC91551      ; 3 uses
  %i.pv = call noundef float @cosf(float noundef %i.pt) #22
  %i.pw = call noundef float @sinf(float noundef %i.pu) #22
  %i.px = fmul float %i.pv, %i.pw
  store float %i.px, ptr %i.oq, align 4
  %i.py = call noundef float @sinf(float noundef %i.pt) #22
  %i.pz = call noundef float @sinf(float noundef %i.pu) #22
  %i.qa = fmul float %i.py, %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %.0207412, i64 16
  store float %i.qa, ptr %i.qb, align 4
  %i.qc = call noundef float @cosf(float noundef %i.pu) #22
  %i.qd = getelementptr inbounds nuw i8, ptr %.0207412, i64 20
  store float %i.qc, ptr %i.qd, align 4
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.ox ; 2 uses
  %i.qf = load float, ptr %i.qe, align 1
  store float %i.qf, ptr %i.op, align 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qh = load float, ptr %i.qg, align 1
  %i.qi = fsub float 1.000000e+00, %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %.0206413, i64 16
  store float %i.qi, ptr %i.qj, align 4
  %.0.i.us.1 = load float, ptr %i.eh, align 4
  %i.qk = load float, ptr %i.oo, align 4
  %i.ql = fadd float %.0.i.us.1, %i.qk
  store float %i.ql, ptr %i.oo, align 4
  %.0.i317.us.1 = load float, ptr %i.ei, align 4
  %i.qm = load float, ptr %i.pg, align 4
  %i.qn = fadd float %.0.i317.us.1, %i.qm
  store float %i.qn, ptr %i.pg, align 4
  %.0.i318.us.1 = load float, ptr %i.ej, align 4
  %i.qo = load float, ptr %i.pl, align 4
  %i.qp = fadd float %.0.i318.us.1, %i.qo
  store float %i.qp, ptr %i.pl, align 4
  %i.qq = getelementptr inbounds nuw i8, ptr %.0209411, i64 24 ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.0206413, i64 24
  %i.qs = getelementptr inbounds nuw i8, ptr %.0207412, i64 24
  %i.qt = getelementptr inbounds nuw i8, ptr %.0204415, i64 8
  %i.qu = load i32, ptr %i.qt, align 1            ; 2 uses
  %i.qv = load i32, ptr %i.er, align 1
  %.not274.us.2 = icmp ult i32 %i.qu, %i.qv
  br i1 %.not274.us.2, label %.split407.us.loopexit, label %bb.bj

bb.bj:                                            ; preds = %.split.us.2
  %i.qw = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.qw, ptr noundef nonnull @.str.15)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  %i.qx = load i32, ptr %i.er, align 1
  %i.qy = add i32 %i.qx, -1
  br label %.split407.us.loopexit

.split407.us.loopexit:                            ; preds = %bb.bl, %.split.us.2
  %.0199.us.2 = phi i32 [ %i.qy, %bb.bl ], [ %i.qu, %.split.us.2 ]
  %i.qz = zext i32 %.0199.us.2 to i64             ; 2 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.qz ; 4 uses
  %i.rb = load i16, ptr %i.ra, align 1
  %i.rc = sitofp i16 %i.rb to float
  %i.rd = fmul nnan float %i.rc, 1.562500e-02
  store float %i.rd, ptr %i.qq, align 4
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 2
  %i.rf = load i16, ptr %i.re, align 1
  %i.rg = sitofp i16 %i.rf to float
  %i.rh = fmul nnan float %i.rg, 1.562500e-02
  %i.ri = getelementptr inbounds nuw i8, ptr %.0209411, i64 28 ; 3 uses
  store float %i.rh, ptr %i.ri, align 4
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rk = load i16, ptr %i.rj, align 1
  %i.rl = sitofp i16 %i.rk to float
  %i.rm = fmul nnan float %i.rl, 1.562500e-02
  %i.rn = getelementptr inbounds nuw i8, ptr %.0209411, i64 32 ; 3 uses
  store float %i.rm, ptr %i.rn, align 4
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ra, i64 6
  %i.rp = load i16, ptr %i.ro, align 1
  %i.rq = zext i16 %i.rp to i32                   ; 2 uses
  %i.rr = lshr i32 %i.rq, 8
  %i.rs = uitofp nneg i32 %i.rr to float
  %i.rt = and i32 %i.rq, 255
  %i.ru = uitofp nneg i32 %i.rt to float
  %i.rv = fmul nnan float %i.rs, f0x3CC91551      ; 2 uses
  %i.rw = fmul nnan float %i.ru, f0x3CC91551      ; 3 uses
  %i.rx = call noundef float @cosf(float noundef %i.rv) #22
  %i.ry = call noundef float @sinf(float noundef %i.rw) #22
  %i.rz = fmul float %i.rx, %i.ry
  store float %i.rz, ptr %i.qs, align 4
  %i.sa = call noundef float @sinf(float noundef %i.rv) #22
  %i.sb = call noundef float @sinf(float noundef %i.rw) #22
  %i.sc = fmul float %i.sa, %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %.0207412, i64 28
  store float %i.sc, ptr %i.sd, align 4
  %i.se = call noundef float @cosf(float noundef %i.rw) #22
  %i.sf = getelementptr inbounds nuw i8, ptr %.0207412, i64 32
  store float %i.se, ptr %i.sf, align 4
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.qz ; 2 uses
  %i.sh = load float, ptr %i.sg, align 1
  store float %i.sh, ptr %i.qr, align 4
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  %i.sj = load float, ptr %i.si, align 1
  %i.sk = fsub float 1.000000e+00, %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %.0206413, i64 28
  store float %i.sk, ptr %i.sl, align 4
  %.0.i.us.2 = load float, ptr %i.eh, align 4
  %i.sm = load float, ptr %i.qq, align 4
  %i.sn = fadd float %.0.i.us.2, %i.sm
  store float %i.sn, ptr %i.qq, align 4
  %.0.i317.us.2 = load float, ptr %i.ei, align 4
  %i.so = load float, ptr %i.ri, align 4
  %i.sp = fadd float %.0.i317.us.2, %i.so
  store float %i.sp, ptr %i.ri, align 4
  %.0.i318.us.2 = load float, ptr %i.ej, align 4
  %i.sq = load float, ptr %i.rn, align 4
  %i.sr = fadd float %.0.i318.us.2, %i.sq
  store float %i.sr, ptr %i.rn, align 4
  br label %.split407.us

.split407.us:                                     ; preds = %.split407.us.loopexit445, %.split407.us.loopexit
  %.us-phi410 = getelementptr i8, ptr %.0206413, i64 36
  %.us-phi409 = getelementptr inbounds nuw i8, ptr %.0207412, i64 36
  %.us-phi408 = getelementptr inbounds nuw i8, ptr %.0209411, i64 36
  %i.ss = add i32 %i.mn, 2
  %i.st = load ptr, ptr %i.mp, align 8
  store i32 %i.ss, ptr %i.st, align 4
  %i.su = add i32 %i.mn, 1
  %i.sv = load ptr, ptr %i.mp, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 4
  store i32 %i.su, ptr %i.sw, align 4
  %i.sx = load ptr, ptr %i.mp, align 8
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  store i32 %i.mn, ptr %i.sy, align 4
  %i.sz = add nuw i32 %.0201416, 1                ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.0204415, i64 12
  %i.tb = getelementptr inbounds nuw i8, ptr %.0205414, i64 16
  %i.tc = load i32, ptr %i.et, align 1
  %i.td = icmp ult i32 %i.sz, %i.tc
  br i1 %i.td, label %.lr.ph418, label %._crit_edge419.loopexit, !llvm.loop !62

bb.bm:                                            ; preds = %.split.preheader
  %i.te = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.te, ptr noundef nonnull @.str.15)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  %i.tf = load i32, ptr %i.er, align 1
  %i.tg = add i32 %i.tf, -1
  br label %.split.1

.split.1:                                         ; preds = %bb.bo, %.split.preheader
  %.0199 = phi i32 [ %i.tg, %bb.bo ], [ %i.mq, %.split.preheader ]
  %i.th = zext i32 %.0199 to i64                  ; 2 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.th ; 3 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %.0203, i64 %i.th ; 3 uses
  %i.tk = load i8, ptr %i.tj, align 1
  %i.tl = uitofp i8 %i.tk to float
  %i.tm = fadd nnan ninf float %i.tl, -1.270000e+02
  %i.tn = fmul nnan float %i.tm, 4.000000e+00
  %i.to = getelementptr inbounds nuw i8, ptr %i.tj, i64 1
  %i.tp = load <2 x i8>, ptr %i.to, align 1
  %i.tq = uitofp <2 x i8> %i.tp to <2 x float>
  %i.tr = fadd nnan ninf <2 x float> %i.tq, splat (float -1.270000e+02)
  %i.ts = fmul nnan <2 x float> %i.tr, splat (float 4.000000e+00) ; 2 uses
  %i.tt = load float, ptr %i.eh, align 4
  %i.tu = load i16, ptr %i.ti, align 1
  %i.tv = sitofp i16 %i.tu to float
  %i.tw = fadd float %i.tn, %i.tv
  %i.tx = call float @llvm.fmuladd.f32(float %i.tw, float 1.562500e-02, float %i.tt) ; 2 uses
  store float %i.tx, ptr %.0209411, align 4
  %i.ty = load float, ptr %i.ei, align 4
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ti, i64 2
  %i.ua = load i16, ptr %i.tz, align 1
  %i.ub = sitofp i16 %i.ua to float
  %i.uc = extractelement <2 x float> %i.ts, i64 0
  %i.ud = fadd float %i.uc, %i.ub
  %i.ue = call float @llvm.fmuladd.f32(float %i.ud, float 1.562500e-02, float %i.ty) ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.0209411, i64 4 ; 2 uses
  store float %i.ue, ptr %i.uf, align 4
  %i.ug = load float, ptr %i.ej, align 4
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.ui = load i16, ptr %i.uh, align 1
  %i.uj = sitofp i16 %i.ui to float
  %i.uk = extractelement <2 x float> %i.ts, i64 1
  %i.ul = fadd float %i.uk, %i.uj
  %i.um = call float @llvm.fmuladd.f32(float %i.ul, float 1.562500e-02, float %i.ug) ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.0209411, i64 8 ; 2 uses
  store float %i.um, ptr %i.un, align 4
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tj, i64 3 ; 3 uses
  %i.up = load i8, ptr %i.uo, align 1
  %i.uq = zext i8 %i.up to i64
  %i.ur = getelementptr inbounds nuw [12 x i8], ptr @_ZL10mdcNormals, i64 %i.uq
  %i.us = load float, ptr %i.ur, align 4
  store float %i.us, ptr %.0207412, align 4
  %i.ut = load i8, ptr %i.uo, align 1
  %i.uu = zext i8 %i.ut to i64
  %i.uv = getelementptr inbounds nuw [12 x i8], ptr @_ZL10mdcNormals, i64 %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.ux = load float, ptr %i.uw, align 4
  %i.uy = getelementptr inbounds nuw i8, ptr %.0207412, i64 4
  store float %i.ux, ptr %i.uy, align 4
  %i.uz = load i8, ptr %i.uo, align 1
  %i.va = zext i8 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [12 x i8], ptr @_ZL10mdcNormals, i64 %i.va
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vd = load float, ptr %i.vc, align 4
  %i.ve = getelementptr inbounds nuw i8, ptr %.0207412, i64 8
  store float %i.vd, ptr %i.ve, align 4
  %.0.i = load float, ptr %i.eh, align 4
  %i.vf = fadd float %.0.i, %i.tx
  store float %i.vf, ptr %.0209411, align 4
  %.0.i317 = load float, ptr %i.ei, align 4
  %i.vg = fadd float %.0.i317, %i.ue
  store float %i.vg, ptr %i.uf, align 4
  %.0.i318 = load float, ptr %i.ej, align 4
  %i.vh = fadd float %.0.i318, %i.um
  store float %i.vh, ptr %i.un, align 4
  %i.vi = getelementptr inbounds nuw i8, ptr %.0209411, i64 12 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.0207412, i64 12
  %i.vk = getelementptr inbounds nuw i8, ptr %.0204415, i64 4
  %i.vl = load i32, ptr %i.vk, align 1            ; 2 uses
  %i.vm = load i32, ptr %i.er, align 1
  %.not274.1 = icmp ult i32 %i.vl, %i.vm
  br i1 %.not274.1, label %.split.2, label %bb.bp

bb.bp:                                            ; preds = %.split.1
  %i.vn = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.vn, ptr noundef nonnull @.str.15)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq
  %i.vo = load i32, ptr %i.er, align 1
  %i.vp = add i32 %i.vo, -1
  br label %.split.2

.split.2:                                         ; preds = %bb.br, %.split.1
  %.0199.1 = phi i32 [ %i.vp, %bb.br ], [ %i.vl, %.split.1 ]
  %i.vq = zext i32 %.0199.1 to i64                ; 2 uses
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.vq ; 3 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %.0203, i64 %i.vq ; 3 uses
  %i.vt = load i8, ptr %i.vs, align 1
  %i.vu = uitofp i8 %i.vt to float
  %i.vv = fadd nnan ninf float %i.vu, -1.270000e+02
  %i.vw = fmul nnan float %i.vv, 4.000000e+00
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vs, i64 1
  %i.vy = load <2 x i8>, ptr %i.vx, align 1
  %i.vz = uitofp <2 x i8> %i.vy to <2 x float>
  %i.wa = fadd nnan ninf <2 x float> %i.vz, splat (float -1.270000e+02)
  %i.wb = fmul nnan <2 x float> %i.wa, splat (float 4.000000e+00) ; 2 uses
  %i.wc = load float, ptr %i.eh, align 4
  %i.wd = load i16, ptr %i.vr, align 1
  %i.we = sitofp i16 %i.wd to float
  %i.wf = fadd float %i.vw, %i.we
  %i.wg = call float @llvm.fmuladd.f32(float %i.wf, float 1.562500e-02, float %i.wc) ; 2 uses
  store float %i.wg, ptr %i.vi, align 4
  %i.wh = load float, ptr %i.ei, align 4
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vr, i64 2
  %i.wj = load i16, ptr %i.wi, align 1
  %i.wk = sitofp i16 %i.wj to float
  %i.wl = extractelement <2 x float> %i.wb, i64 0
  %i.wm = fadd float %i.wl, %i.wk
  %i.wn = call float @llvm.fmuladd.f32(float %i.wm, float 1.562500e-02, float %i.wh) ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.0209411, i64 16 ; 2 uses
  store float %i.wn, ptr %i.wo, align 4
  %i.wp = load float, ptr %i.ej, align 4
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  %i.wr = load i16, ptr %i.wq, align 1
  %i.ws = sitofp i16 %i.wr to float
  %i.wt = extractelement <2 x float> %i.wb, i64 1
  %i.wu = fadd float %i.wt, %i.ws
  %i.wv = call float @llvm.fmuladd.f32(float %i.wu, float 1.562500e-02, float %i.wp) ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.0209411, i64 20 ; 2 uses
  store float %i.wv, ptr %i.ww, align 4
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vs, i64 3 ; 3 uses
  %i.wy = load i8, ptr %i.wx, align 1
  %i.wz = zext i8 %i.wy to i64
  %i.xa = getelementptr inbounds nuw [12 x i8], ptr @_ZL10mdcNormals, i64 %i.wz
  %i.xb = load float, ptr %i.xa, align 4
  store float %i.xb, ptr %i.vj, align 4
  %i.xc = load i8, ptr %i.wx, align 1
  %i.xd = zext i8 %i.xc to i64
  %i.xe = getelementptr inbounds nuw [12 x i8], ptr @_ZL10mdcNormals, i64 %i.xd
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 4
  %i.xg = load float, ptr %i.xf, align 4
  %i.xh = getelementptr inbounds nuw i8, ptr %.0207412, i64 16
  store float %i.xg, ptr %i.xh, align 4
  %i.xi = load i8, ptr %i.wx, align 1
  %i.xj = zext i8 %i.xi to i64
  %i.xk = getelementptr inbounds nuw [12 x i8], ptr @_ZL10mdcNormals, i64 %i.xj
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xm = load float, ptr %i.xl, align 4
  %i.xn = getelementptr inbounds nuw i8, ptr %.0207412, i64 20
  store float %i.xm, ptr %i.xn, align 4
  %.0.i.1 = load float, ptr %i.eh, align 4
  %i.xo = fadd float %.0.i.1, %i.wg
  store float %i.xo, ptr %i.vi, align 4
  %.0.i317.1 = load float, ptr %i.ei, align 4
  %i.xp = fadd float %.0.i317.1, %i.wn
  store float %i.xp, ptr %i.wo, align 4
  %.0.i318.1 = load float, ptr %i.ej, align 4
  %i.xq = fadd float %.0.i318.1, %i.wv
  store float %i.xq, ptr %i.ww, align 4
  %i.xr = getelementptr inbounds nuw i8, ptr %.0209411, i64 24 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.0207412, i64 24
  %i.xt = getelementptr inbounds nuw i8, ptr %.0204415, i64 8
  %i.xu = load i32, ptr %i.xt, align 1            ; 2 uses
  %i.xv = load i32, ptr %i.er, align 1
  %.not274.2 = icmp ult i32 %i.xu, %i.xv
  br i1 %.not274.2, label %.split407.us.loopexit445, label %bb.bs

bb.bs:                                            ; preds = %.split.2
  %i.xw = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.xw, ptr noundef nonnull @.str.15)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %bb.bt
  %i.xx = load i32, ptr %i.er, align 1
  %i.xy = add i32 %i.xx, -1
  br label %.split407.us.loopexit445

.split407.us.loopexit445:                         ; preds = %bb.bu, %.split.2
  %.0199.2 = phi i32 [ %i.xy, %bb.bu ], [ %i.xu, %.split.2 ]
  %i.xz = zext i32 %.0199.2 to i64                ; 2 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.xz ; 3 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.0203, i64 %i.xz ; 3 uses
  %i.yc = load i8, ptr %i.yb, align 1
  %i.yd = uitofp i8 %i.yc to float
  %i.ye = fadd nnan ninf float %i.yd, -1.270000e+02
  %i.yf = fmul nnan float %i.ye, 4.000000e+00
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 1
  %i.yh = load <2 x i8>, ptr %i.yg, align 1
  %i.yi = uitofp <2 x i8> %i.yh to <2 x float>
  %i.yj = fadd nnan ninf <2 x float> %i.yi, splat (float -1.270000e+02)
  %i.yk = fmul nnan <2 x float> %i.yj, splat (float 4.000000e+00) ; 2 uses
  %i.yl = load float, ptr %i.eh, align 4
  %i.ym = load i16, ptr %i.ya, align 1
  %i.yn = sitofp i16 %i.ym to float
  %i.yo = fadd float %i.yf, %i.yn
  %i.yp = call float @llvm.fmuladd.f32(float %i.yo, float 1.562500e-02, float %i.yl) ; 2 uses
  store float %i.yp, ptr %i.xr, align 4
  %i.yq = load float, ptr %i.ei, align 4
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ya, i64 2
  %i.ys = load i16, ptr %i.yr, align 1
  %i.yt = sitofp i16 %i.ys to float
  %i.yu = extractelement <2 x float> %i.yk, i64 0
  %i.yv = fadd float %i.yu, %i.yt
  %i.yw = call float @llvm.fmuladd.f32(float %i.yv, float 1.562500e-02, float %i.yq) ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.0209411, i64 28 ; 2 uses
  store float %i.yw, ptr %i.yx, align 4
  %i.yy = load float, ptr %i.ej, align 4
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ya, i64 4
  %i.za = load i16, ptr %i.yz, align 1
  %i.zb = sitofp i16 %i.za to float
  %i.zc = extractelement <2 x float> %i.yk, i64 1
  %i.zd = fadd float %i.zc, %i.zb
  %i.ze = call float @llvm.fmuladd.f32(float %i.zd, float 1.562500e-02, float %i.yy) ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.0209411, i64 32 ; 2 uses
  store float %i.ze, ptr %i.zf, align 4
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yb, i64 3 ; 3 uses
  %i.zh = load i8, ptr %i.zg, align 1
  %i.zi = zext i8 %i.zh to i64
  %i.zj = getelementptr inbounds nuw [12 x i8], ptr @_ZL10mdcNormals, i64 %i.zi
  %i.zk = load float, ptr %i.zj, align 4
  store float %i.zk, ptr %i.xs, align 4
  %i.zl = load i8, ptr %i.zg, align 1
  %i.zm = zext i8 %i.zl to i64
  %i.zn = getelementptr inbounds nuw [12 x i8], ptr @_ZL10mdcNormals, i64 %i.zm
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 4
  %i.zp = load float, ptr %i.zo, align 4
  %i.zq = getelementptr inbounds nuw i8, ptr %.0207412, i64 28
  store float %i.zp, ptr %i.zq, align 4
  %i.zr = load i8, ptr %i.zg, align 1
  %i.zs = zext i8 %i.zr to i64
  %i.zt = getelementptr inbounds nuw [12 x i8], ptr @_ZL10mdcNormals, i64 %i.zs
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.zv = load float, ptr %i.zu, align 4
  %i.zw = getelementptr inbounds nuw i8, ptr %.0207412, i64 32
  store float %i.zv, ptr %i.zw, align 4
  %.0.i.2 = load float, ptr %i.eh, align 4
  %i.zx = fadd float %.0.i.2, %i.yp
  store float %i.zx, ptr %i.xr, align 4
  %.0.i317.2 = load float, ptr %i.ei, align 4
  %i.zy = fadd float %.0.i317.2, %i.yw
  store float %i.zy, ptr %i.yx, align 4
  %.0.i318.2 = load float, ptr %i.ej, align 4
  %i.zz = fadd float %.0.i318.2, %i.ze
  store float %i.zz, ptr %i.zf, align 4
  br label %.split407.us

bb.bv:                                            ; preds = %bb.u, %bb.v, %._crit_edge419
  %i.aaa = phi ptr [ %.pre482, %._crit_edge419 ], [ %i.eq, %bb.v ], [ %i.eq, %bb.u ] ; 2 uses
  %.1221 = phi ptr [ %i.mm, %._crit_edge419 ], [ %.0220420, %bb.v ], [ %.0220420, %bb.u ]
  %.2 = phi i32 [ %.1215, %._crit_edge419 ], [ %.0214421, %bb.v ], [ %.0214421, %bb.u ]
  %.1212 = phi i32 [ %i.fd, %._crit_edge419 ], [ %.0211423, %bb.v ], [ %.0211423, %bb.u ]
  %i.aab = add nuw i32 %.0213422, 1               ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aaa, i64 84
  %i.aad = load i32, ptr %i.aac, align 1
  %i.aae = icmp ult i32 %i.aab, %i.aad
  br i1 %i.aae, label %bb.u, label %._crit_edge425.loopexit, !llvm.loop !63

bb.bw:                                            ; preds = %._crit_edge425
  %i.aaf = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aaf, ptr noundef nonnull @.str.16)
          to label %.invoke540 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.aag = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aaf) #22
  br label %.loopexit.split-lp

bb.by:                                            ; preds = %._crit_edge425
  %i.aah = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.aah)
          to label %bb.ca unwind label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  %i.aai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.aah, ptr %i.aai, align 8
  %i.aaj = load ptr, ptr %i.dy, align 8
  %i.aak = load ptr, ptr %i.aaj, align 8          ; 3 uses
  %.not259 = icmp eq ptr %i.aak, null
  br i1 %.not259, label %.loopexit370, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 236 ; 2 uses
  %i.aam = icmp eq ptr %i.aah, %i.aal
  br i1 %i.aam, label %_ZN8aiStringaSERKS_.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.aan = load i32, ptr %i.aal, align 4
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.aan, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.aah, align 4
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aah, i64 4 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aak, i64 240
  %i.aaq = zext nneg i32 %spec.select.i to i64    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aao, ptr nonnull align 4 %i.aap, i64 %i.aaq, i1 false)
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.aaq
  store i8 0, ptr %i.aar, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %bb.cb, %bb.cc
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aah, i64 1120
  store i32 1, ptr %i.aas, align 8
  %i.aat = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #26
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %_ZN8aiStringaSERKS_.exit
  %i.aau = load ptr, ptr %i.aai, align 8
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 1128
  store ptr %i.aat, ptr %i.aav, align 8
  %i.aaw = load ptr, ptr %i.aai, align 8
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1128
  %i.aay = load ptr, ptr %i.aax, align 8
  store i32 0, ptr %i.aay, align 4
  br label %.loopexit370

bb.ce:                                            ; preds = %bb.bz
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aah, i64 noundef 1144) #24
  br label %.loopexit.split-lp

bb.cf:                                            ; preds = %._crit_edge425
  %i.aba = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.aba)
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.abb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.aba, ptr %i.abb, align 8
  %i.abc = load i32, ptr %i.dt, align 8           ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aba, i64 1104
  store i32 %i.abc, ptr %i.abd, align 8
  %i.abe = zext i32 %i.abc to i64
  %i.abf = shl nuw nsw i64 %i.abe, 3
  %i.abg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.abf) #26
          to label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit323 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit323: ; preds = %bb.ch
  %i.abh = load ptr, ptr %i.abb, align 8
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 1112
  store ptr %i.abg, ptr %i.abi, align 8
  %i.abj = load ptr, ptr %i.abb, align 8          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.abk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.abk, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.abk, ptr noundef nonnull align 1 dereferenceable(6) @.str.17, i64 6, i1 false)
  %i.abl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 6, ptr %i.abl, align 8
  %i.abm = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i8 0, ptr %i.abm, align 2
  store i32 6, ptr %i.abj, align 4
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abj, i64 4
  %i.abo = load ptr, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.abn, ptr noundef nonnull align 1 dereferenceable(6) %i.abo, i64 6, i1 false)
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abj, i64 10
  store i8 0, ptr %i.abp, align 2
  %.pre484 = load ptr, ptr %7, align 8            ; 2 uses
  %i.abq = icmp eq ptr %.pre484, %i.abk
  br i1 %i.abq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit323
  %i.abr = load i64, ptr %i.abk, align 8
  %i.abs = add i64 %i.abr, 1
  call void @_ZdlPvm(ptr noundef %.pre484, i64 noundef %i.abs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit323, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.abt = load i32, ptr %i.dt, align 8
  %.not435 = icmp eq i32 %i.abt, 0
  br i1 %.not435, label %.loopexit370, label %.lr.ph427

bb.ci:                                            ; preds = %bb.cg
  %i.abu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aba, i64 noundef 1144) #24
  br label %.loopexit.split-lp

.lr.ph427:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %bb.cm
  %indvars.iv473 = phi i64 [ %indvars.iv.next474, %bb.cm ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326 ] ; 4 uses
  %i.abv = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

bb.cj:                                            ; preds = %.lr.ph427
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.abv)
end_hunk_1
