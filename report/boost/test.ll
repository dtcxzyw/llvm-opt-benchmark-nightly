Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/test?download=true
inline.NumInlined: 1190
inline.NumDeleted: 318
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.boost::detail::test_result" = type { i8, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.boost::stacktrace::basic_stacktrace" = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<boost::stacktrace::frame, std::allocator<boost::stacktrace::frame>>::_Vector_impl" }
%"struct.std::_Vector_base<boost::stacktrace::frame, std::allocator<boost::stacktrace::frame>>::_Vector_impl" = type { %"struct.std::_Vector_base<boost::stacktrace::frame, std::allocator<boost::stacktrace::frame>>::_Vector_impl_data" }
%"struct.std::_Vector_base<boost::stacktrace::frame, std::allocator<boost::stacktrace::frame>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::stacktrace::frame" = type { ptr }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.3 }
%union.anon.3 = type { i32 }
%"struct.std::pair" = type { %"class.boost::stacktrace::basic_stacktrace", %"class.boost::stacktrace::basic_stacktrace" }

$_ZN5boost6detail9test_implEPKcS2_iS2_b = comdat any

$_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmiEEbT_PKcS5_S5_iS5_RKT0_RKT1_ = comdat any

$_Z21test_comparisons_baseIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEEEvT_S6_ = comdat any

$_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_ = comdat any

$_Z11test_nestedILm15EEvb = comdat any

$_Z27test_empty_basic_stacktraceILb1EEvv = comdat any

$_Z27test_empty_basic_stacktraceILb0EEvv = comdat any

$_Z11test_nestedILm260EEvb = comdat any

$_ZN5boost13report_errorsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN5boost6detail11test_resultD2Ev = comdat any

$_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4initEmm = comdat any

$_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEE4fillEPPKvm = comdat any

$_Z35function_from_main_translation_uniti = comdat any

$_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_ED2Ev = comdat any

$_ZNSt4pairIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEES5_EC2IS5_S5_TnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES9_IT0_EEE5valueEbE4typeELb1EEEv = comdat any

$_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEaSEOS4_ = comdat any

$_ZZN5boost6detail12test_resultsEvE8instance = comdat any

$_ZGVZN5boost6detail12test_resultsEvE8instance = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [43 x i8] c"ss.str().find(\22main\22) != std::string::npos\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"/opt-bench/work/boost/boost/libs/stacktrace/test/test.cpp\00", align 1
@__PRETTY_FUNCTION__._Z29test_deeply_nested_namespacesv = private unnamed_addr constant [37 x i8] c"void test_deeply_nested_namespaces()\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.3 = private unnamed_addr constant [149 x i8] c"ss.str().find(\22get_backtrace_from_nested_namespaces\22) != std::string::npos || ss.str().find(\221# return_from_nested_namespaces\22) != std::string::npos\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"get_backtrace_from_nested_namespaces\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"1# return_from_nested_namespaces\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"ss.str().find(\22return_from_nested_namespaces\22) != std::string::npos\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"return_from_nested_namespaces\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"ns1 != return_from_nested_namespaces()\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"count_unprintable_chars(trace[i].source_file())\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__PRETTY_FUNCTION__._Z32test_frames_string_data_validityv = private unnamed_addr constant [40 x i8] c"void test_frames_string_data_validity()\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"count_unprintable_chars(trace[i].name())\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"to_string(trace).find('\\0') == std::string::npos\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"st.begin() == st.begin()\00", align 1
@__PRETTY_FUNCTION__._Z14test_iteratorsv = private unnamed_addr constant [22 x i8] c"void test_iterators()\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"st.cbegin() == st.cbegin()\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"st.crbegin() == st.crbegin()\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"st.rbegin() == st.rbegin()\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"st.begin() + 1 == st.begin() + 1\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"st.cbegin() + 1 == st.cbegin() + 1\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"st.crbegin() + 1 == st.crbegin() + 1\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"st.rbegin() + 1 == st.rbegin() + 1\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"st.end() == st.end()\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"st.cend() == st.cend()\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"st.crend() == st.crend()\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"st.rend() == st.rend()\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"st.end() > st.begin()\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"st.end() > st.cbegin()\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"st.cend() > st.cbegin()\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"st.cend() > st.begin()\00", align 1
@.str.29 = private unnamed_addr constant [61 x i8] c"st.size() == static_cast<std::size_t>(st.end() - st.begin())\00", align 1
@.str.30 = private unnamed_addr constant [62 x i8] c"st.size() == static_cast<std::size_t>(st.end() - st.cbegin())\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"st.size() == static_cast<std::size_t>(st.cend() - st.cbegin())\00", align 1
@.str.32 = private unnamed_addr constant [62 x i8] c"st.size() == static_cast<std::size_t>(st.cend() - st.begin())\00", align 1
@.str.33 = private unnamed_addr constant [77 x i8] c"st.size() == static_cast<std::size_t>(std::distance(st.rbegin(), st.rend()))\00", align 1
@.str.34 = private unnamed_addr constant [78 x i8] c"st.size() == static_cast<std::size_t>(std::distance(st.crbegin(), st.rend()))\00", align 1
@.str.35 = private unnamed_addr constant [79 x i8] c"st.size() == static_cast<std::size_t>(std::distance(st.crbegin(), st.crend()))\00", align 1
@.str.36 = private unnamed_addr constant [78 x i8] c"st.size() == static_cast<std::size_t>(std::distance(st.rbegin(), st.crend()))\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"it == st.begin() + 1\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"min_size > 2\00", align 1
@__PRETTY_FUNCTION__._Z10test_framev = private unnamed_addr constant [18 x i8] c"void test_frame()\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"st[i] == st[i]\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"st[i].source_file() == st[i].source_file()\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"st[i].source_line() == st[i].source_line()\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"st[i] <= st[i]\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"st[i] >= st[i]\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"fv\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"st[i] != fv\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"st[i].name() != fv.name()\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"st[i] < fv || st[i] > fv\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"hash_value(st[i]) != hash_value(fv)\00", align 1
@.str.49 = private unnamed_addr constant [83 x i8] c"st[i].source_file() != fv.source_file() || st[i].source_line() != fv.source_line()\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"st[i]\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"hash_value(st[i]) == hash_value(fv)\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"!empty_frame\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"empty_frame.source_file()\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"empty_frame.name()\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"empty_frame.source_line()\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c"boost::stacktrace::stacktrace(0, 1).size()\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@__PRETTY_FUNCTION__._Z22test_stacktrace_limitsv = private unnamed_addr constant [30 x i8] c"void test_stacktrace_limits()\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"boost::stacktrace::stacktrace(1, 1).size()\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"file_size > 0\00", align 1
@__PRETTY_FUNCTION__._Z13get_file_sizePKc = private unnamed_addr constant [40 x i8] c"std::size_t get_file_size(const char *)\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@__PRETTY_FUNCTION__._Z29test_relative_virtual_addressPKc = private unnamed_addr constant [49 x i8] c"void test_relative_virtual_address(const char *)\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"address > 0\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"address <= file_size\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [35 x i8] c"int main(const int, const char **)\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"b1.size() == 4\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"b2.size() == 4\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.68 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"): test '\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"' failed in function '\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@_ZZN5boost6detail12test_resultsEvE8instance = linkonce_odr hidden global %"class.boost::detail::test_result" zeroinitializer, comdat, align 4
@_ZGVZN5boost6detail12test_resultsEvE8instance = linkonce_odr hidden global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.72 = private unnamed_addr constant [37 x i8] c"main() should return report_errors()\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"No errors detected.\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c" error\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c" detected.\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.82 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"' ('\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"' \00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c" '\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"') failed in function '\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"nst\00", align 1
@__PRETTY_FUNCTION__._Z21test_comparisons_baseIN5boost10stacktrace16basic_stacktraceISaINS1_5frameEEEEEvT_S6_ = private unnamed_addr constant [80 x i8] c"void test_comparisons_base(Bt, Bt) [Bt = boost::stacktrace::basic_stacktrace<>]\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"nst[0] != st[0]\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"nst != st\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"st != nst\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"st == st\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"nst == nst\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"nst != cst\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"cst != nst\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"cst == st\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"cst == cst\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"nst < st || nst > st\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"st < nst || nst < st\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"st <= st\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"nst <= nst\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"st >= st\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"nst >= nst\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"nst < cst || cst < nst\00", align 1
@.str.107 = private unnamed_addr constant [23 x i8] c"nst > cst || cst > nst\00", align 1
@.str.108 = private unnamed_addr constant [35 x i8] c"hash_value(nst) == hash_value(nst)\00", align 1
@.str.109 = private unnamed_addr constant [34 x i8] c"hash_value(cst) == hash_value(st)\00", align 1
@.str.110 = private unnamed_addr constant [35 x i8] c"hash_value(nst) != hash_value(cst)\00", align 1
@.str.111 = private unnamed_addr constant [34 x i8] c"hash_value(st) != hash_value(nst)\00", align 1
@.str.112 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"'\0A\0A\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"!ss1.str().empty()\00", align 1
@__PRETTY_FUNCTION__._Z11test_nestedILm15EEvb = private unnamed_addr constant [38 x i8] c"void test_nested(bool) [Depth = 15UL]\00", align 1
@.str.116 = private unnamed_addr constant [19 x i8] c"!ss2.str().empty()\00", align 1
@.str.117 = private unnamed_addr constant [44 x i8] c"ss1.str().find(\22 0# \22) != std::string::npos\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c" 0# \00", align 1
@.str.119 = private unnamed_addr constant [44 x i8] c"ss2.str().find(\22 0# \22) != std::string::npos\00", align 1
@.str.120 = private unnamed_addr constant [44 x i8] c"ss1.str().find(\22 1# \22) != std::string::npos\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c" 1# \00", align 1
@.str.122 = private unnamed_addr constant [44 x i8] c"ss2.str().find(\22 1# \22) != std::string::npos\00", align 1
@.str.123 = private unnamed_addr constant [44 x i8] c"ss1.str().find(\22 in \22) != std::string::npos\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.125 = private unnamed_addr constant [44 x i8] c"ss2.str().find(\22 in \22) != std::string::npos\00", align 1
@.str.126 = private unnamed_addr constant [44 x i8] c"ss1.str().find(\22main\22) != std::string::npos\00", align 1
@.str.127 = private unnamed_addr constant [44 x i8] c"ss2.str().find(\22main\22) != std::string::npos\00", align 1
@.str.128 = private unnamed_addr constant [61 x i8] c"ss1.str().find(\22function_from_library\22) != std::string::npos\00", align 1
@.str.129 = private unnamed_addr constant [22 x i8] c"function_from_library\00", align 1
@.str.130 = private unnamed_addr constant [61 x i8] c"ss2.str().find(\22function_from_library\22) != std::string::npos\00", align 1
@.str.131 = private unnamed_addr constant [75 x i8] c"ss1.str().find(\22function_from_main_translation_unit\22) != std::string::npos\00", align 1
@.str.132 = private unnamed_addr constant [36 x i8] c"function_from_main_translation_unit\00", align 1
@.str.133 = private unnamed_addr constant [75 x i8] c"ss2.str().find(\22function_from_main_translation_unit\22) != std::string::npos\00", align 1
@_ZTISt11logic_error = external constant ptr
@.str.134 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"!st\00", align 1
@__PRETTY_FUNCTION__._Z27test_empty_basic_stacktraceILb1EEvv = private unnamed_addr constant [51 x i8] c"void test_empty_basic_stacktrace() [BySkip = true]\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"st.empty()\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"st.size() == 0\00", align 1
@.str.138 = private unnamed_addr constant [23 x i8] c"st.begin() == st.end()\00", align 1
@.str.139 = private unnamed_addr constant [24 x i8] c"st.cbegin() == st.end()\00", align 1
@.str.140 = private unnamed_addr constant [25 x i8] c"st.cbegin() == st.cend()\00", align 1
@.str.141 = private unnamed_addr constant [24 x i8] c"st.begin() == st.cend()\00", align 1
@.str.142 = private unnamed_addr constant [25 x i8] c"st.rbegin() == st.rend()\00", align 1
@.str.143 = private unnamed_addr constant [26 x i8] c"st.crbegin() == st.rend()\00", align 1
@.str.144 = private unnamed_addr constant [27 x i8] c"st.crbegin() == st.crend()\00", align 1
@.str.145 = private unnamed_addr constant [26 x i8] c"st.rbegin() == st.crend()\00", align 1
@.str.146 = private unnamed_addr constant [41 x i8] c"hash_value(st) == hash_value(st_t(0, 0))\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"st == st_t(0, 0)\00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c"!(st < st_t(0, 0))\00", align 1
@.str.149 = private unnamed_addr constant [19 x i8] c"!(st > st_t(0, 0))\00", align 1
@__PRETTY_FUNCTION__._Z27test_empty_basic_stacktraceILb0EEvv = private unnamed_addr constant [52 x i8] c"void test_empty_basic_stacktrace() [BySkip = false]\00", align 1
@__PRETTY_FUNCTION__._Z11test_nestedILm260EEvb = private unnamed_addr constant [39 x i8] c"void test_nested(bool) [Depth = 260UL]\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_Z29test_deeply_nested_namespacesv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 28 uses
  %2 = alloca %"class.boost::stacktrace::basic_stacktrace", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.boost::stacktrace::basic_stacktrace", align 8 ; 10 uses
  %9 = alloca %"class.boost::stacktrace::basic_stacktrace", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_Z29return_from_nested_namespacesv(ptr dead_on_unwind nonnull writable sret(%"class.boost::stacktrace::basic_stacktrace") align 8 %2)
          to label %bb.b unwind label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19, !noalias !94 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !20, !noalias !94 ; 3 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !23, !alias.scope !94
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !26, !alias.scope !94
  store i8 0, ptr %i.f, align 8, !tbaa !27, !alias.scope !94
  br label %_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  invoke void @_ZN5boost10stacktrace6detail9to_stringB5cxx11EPKNS0_5frameEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %i.e, i64 noundef %i.k)
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.d
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !28
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre6.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !26
  br label %_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE.exit.i

_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE.exit.i: ; preds = %.noexc, %bb.c
  %i.l = phi i64 [ 0, %bb.c ], [ %.pre6.i, %.noexc ]
  %i.m = phi ptr [ %i.f, %bb.c ], [ %.pre.i, %.noexc ]
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.m, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE.exit.i
  %i.o = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !27
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.e:                                             ; preds = %_ZN5boost10stacktrace9to_stringISaINS0_5frameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_16basic_stacktraceIT_EE.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.v, align 8, !tbaa !27
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_0
begin_hunk_1_@_Z14test_iteratorsv:bb.a
  %i.h = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.ac      ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.i = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 167, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.ac      ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.j = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 168, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.ac      ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.k = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 169, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.ac      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.l = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 171, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.ac      ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.m = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.ac      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.n = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 173, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.ac      ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.o = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 174, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.n unwind label %bb.ac      ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.q = load ptr, ptr %0, align 8, !tbaa !70
  %i.r = icmp ugt ptr %i.p, %i.q
  %i.s = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 176, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext %i.r)
          to label %bb.o unwind label %bb.ac      ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.u = load ptr, ptr %0, align 8, !tbaa !70
  %i.v = icmp ugt ptr %i.t, %i.u
  %i.w = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 177, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext %i.v)
          to label %bb.p unwind label %bb.ac      ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.y = load ptr, ptr %0, align 8, !tbaa !70
  %i.z = icmp ugt ptr %i.x, %i.y
  %i.aa = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, i32 noundef 178, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext %i.z)
          to label %bb.q unwind label %bb.ac      ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ac = load ptr, ptr %0, align 8, !tbaa !70
  %i.ad = icmp ugt ptr %i.ab, %i.ac
  %i.ae = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 179, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext %i.ad)
          to label %bb.r unwind label %bb.ac      ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.af = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 181, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.ac      ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.t unwind label %bb.ac      ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ah = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 183, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.u unwind label %bb.ac      ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ai = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef 184, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.v unwind label %bb.ac      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.aj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 186, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.w unwind label %bb.ac      ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.ak = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 187, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.x unwind label %bb.ac      ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.al = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 188, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.y unwind label %bb.ac      ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.am = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 189, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.z unwind label %bb.ac      ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.an = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 194, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_iteratorsv, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.ac     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.ao = load ptr, ptr %0, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !29
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #27
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void

bb.ac:                                            ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEEC2Ev.exit, %bb.z
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %0, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i24, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit25, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #27
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit25

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit25: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z10test_framev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.boost::stacktrace::basic_stacktrace", align 8 ; 11 uses
  %1 = alloca %"class.boost::stacktrace::basic_stacktrace", align 8 ; 24 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.boost::stacktrace::frame", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.boost::stacktrace::frame", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  call void @_Z29return_from_nested_namespacesv(ptr dead_on_unwind nonnull writable sret(%"class.boost::stacktrace::basic_stacktrace") align 8 %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_Z21make_some_stacktrace1v(ptr dead_on_unwind nonnull writable sret(%"class.boost::stacktrace::basic_stacktrace") align 8 %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = load ptr, ptr %0, align 8, !tbaa !20
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = load ptr, ptr %1, align 8, !tbaa !20
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %spec.select = call i64 @llvm.umin.i64(i64 %i.i, i64 %i.p) ; 4 uses
  %i.q = icmp ugt i64 %spec.select, 2
  %i.r = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext %i.q)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.preheader:                                       ; preds = %bb.b
  %.not139 = icmp eq i64 %spec.select, 0
  br i1 %.not139, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.w = add nsw i64 %spec.select, -3
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.au, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr null, ptr %9, align 8, !tbaa !44
  %12 = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.1, i32 noundef 235, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext true)
          to label %bb.aw unwind label %13        ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit120

bb.d:                                             ; preds = %.lr.ph, %bb.au
  %.0138 = phi i64 [ 0, %.lr.ph ], [ %i.fy, %bb.au ] ; 18 uses
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, i32 noundef 205, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext true)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ah = load ptr, ptr %1, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.0138
  invoke void @_ZNK5boost10stacktrace5frame11source_fileB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %bb.f unwind label %bb.ai

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.aj = load ptr, ptr %1, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.0138
  invoke void @_ZNK5boost10stacktrace5frame11source_fileB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %bb.g unwind label %bb.aj

bb.g:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.s, align 8, !tbaa !26  ; 3 uses
  %i.am = load i64, ptr %i.t, align 8, !tbaa !26
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %3, align 8, !tbaa !28
  %i.aq = load ptr, ptr %2, align 8, !tbaa !28
  %bcmp.i = call i32 @bcmp(ptr %i.aq, ptr %i.ap, i64 %i.al)
  %i.ar = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.as = phi i1 [ false, %bb.g ], [ %i.ar, %bb.i ], [ true, %bb.h ]
  %i.at = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 206, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext %i.as)
          to label %bb.j unwind label %bb.ak      ; 0 uses

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.au = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.u
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.aw = load i64, ptr %i.u, align 8, !tbaa !27
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ay = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.v
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load i64, ptr %i.v, align 8, !tbaa !27
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bc = load ptr, ptr %1, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.0138
  %i.be = invoke noundef i64 @_ZNK5boost10stacktrace5frame11source_lineEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.bf = load ptr, ptr %1, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.0138
  %i.bh = invoke noundef i64 @_ZNK5boost10stacktrace5frame11source_lineEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp eq i64 %i.be, %i.bh
  %i.bj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef 207, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext %i.bi)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 208, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext true)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.bl = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef 209, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext true)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bm = load ptr, ptr %0, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.0138
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !71 ; 2 uses
  store i64 %i.bo, ptr %4, align 8, !tbaa !71
  %.not.i.i71 = icmp ne i64 %i.bo, 0
  %i.bp = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext %.not.i.i71)
          to label %bb.p unwind label %bb.al      ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bq = icmp ugt i64 %.0138, 1
  %i.br = icmp ult i64 %.0138, %i.w
  %or.cond = and i1 %i.bq, %i.br
  br i1 %or.cond, label %bb.q, label %bb.at

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %1, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.0138
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !44
  %i.bv = load ptr, ptr %4, align 8, !tbaa !44
  %i.bw = icmp ne ptr %i.bu, %i.bv
  %i.bx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 214, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext %i.bw)
          to label %bb.r unwind label %bb.al      ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.by = load ptr, ptr %1, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.0138
  invoke void @_ZNK5boost10stacktrace5frame4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bz)
          to label %bb.s unwind label %bb.am

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZNK5boost10stacktrace5frame4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.t unwind label %bb.an

bb.t:                                             ; preds = %bb.s
  %i.ca = load i64, ptr %i.x, align 8, !tbaa !26  ; 3 uses
  %i.cb = load i64, ptr %i.y, align 8, !tbaa !26
  %i.cc = icmp eq i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.u, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.u:                                             ; preds = %bb.t
  %i.cd = icmp eq i64 %i.ca, 0
  br i1 %i.cd, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = load ptr, ptr %6, align 8, !tbaa !28
  %i.cf = load ptr, ptr %5, align 8, !tbaa !28
  %bcmp.i.i = call i32 @bcmp(ptr %i.cf, ptr %i.ce, i64 %i.ca)
  %i.cg = icmp ne i32 %bcmp.i.i, 0
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.t, %bb.u, %bb.v
  %i.ch = phi i1 [ true, %bb.t ], [ %i.cg, %bb.v ], [ false, %bb.u ]
  %i.ci = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1, i32 noundef 218, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext %i.ch)
          to label %bb.w unwind label %bb.ao      ; 0 uses

bb.w:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.cj = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.z
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.w
  %i.cl = load i64, ptr %i.z, align 8, !tbaa !27
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.cn = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.aa
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.cp = load i64, ptr %i.aa, align 8, !tbaa !27
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.cr = load ptr, ptr %1, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.0138
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !44
  %i.cu = load ptr, ptr %4, align 8, !tbaa !44
  %i.cv = icmp ne ptr %i.ct, %i.cu
  %i.cw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext %i.cv)
          to label %bb.x unwind label %bb.al      ; 0 uses

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.cx = load ptr, ptr %1, align 8, !tbaa !20
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.0138
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !44
  %i.da = load ptr, ptr %4, align 8, !tbaa !44
  %spec.select124 = icmp ne ptr %i.da, %i.cz
  %i.db = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, i32 noundef 220, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext %spec.select124)
          to label %bb.y unwind label %bb.al      ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.dc = load ptr, ptr %1, align 8, !tbaa !20
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.0138
end_hunk_1
begin_hunk_2_@_Z10test_framev:bb.a
bb.af:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit79.thread123
  %i.dw = invoke noundef i64 @_ZNK5boost10stacktrace5frame11source_lineEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ag unwind label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %i.dx = icmp ne i64 %i.dv, %i.dw
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit79.thread: ; preds = %bb.ad, %bb.ag, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit79
  %i.dy = phi i1 [ true, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit79 ], [ %i.dx, %bb.ag ], [ true, %bb.ad ]
  %i.dz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.1, i32 noundef 225, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext %i.dy)
          to label %bb.ah unwind label %bb.ar     ; 0 uses

bb.ah:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit79.thread
  %i.ea = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ad
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ah
  %i.ec = load i64, ptr %i.ad, align 8, !tbaa !27
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ee = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.ae
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.eg = load i64, ptr %i.ae, align 8, !tbaa !27
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.as

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %bb.d, %bb.b
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ai:                                            ; preds = %bb.e
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.aj:                                            ; preds = %bb.f
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.ak:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.u
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.ak
  %i.en = load i64, ptr %i.u, align 8, !tbaa !27
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.aj
  %.pn53 = phi { ptr, i32 } [ %i.ej, %bb.aj ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.ek, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ep = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.v
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.er = load i64, ptr %i.v, align 8, !tbaa !27
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.ai
  %.pn53.pn = phi { ptr, i32 } [ %i.ei, %bb.ai ], [ %.pn53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.loopexit.split-lp

bb.al:                                            ; preds = %bb.at, %bb.as, %bb.z, %bb.y, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %bb.q, %bb.o
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.am:                                            ; preds = %bb.r
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.an:                                            ; preds = %bb.s
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.ao:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.z
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.ao
  %i.ez = load i64, ptr %i.z, align 8, !tbaa !27
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.an
  %.pn56 = phi { ptr, i32 } [ %i.ev, %bb.an ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %i.ew, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.fb = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.aa
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.fd = load i64, ptr %i.aa, align 8, !tbaa !27
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.am
  %.pn56.pn = phi { ptr, i32 } [ %i.eu, %bb.am ], [ %.pn56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.av

bb.ap:                                            ; preds = %bb.ab
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.aq:                                            ; preds = %bb.ac
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.ar:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit79.thread, %bb.af, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit79.thread123
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.ad
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.ar
  %i.fk = load i64, ptr %i.ad, align 8, !tbaa !27
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.aq
  %.pn59 = phi { ptr, i32 } [ %i.fg, %bb.aq ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %i.fh, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.fm = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ae
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.fo = load i64, ptr %i.ae, align 8, !tbaa !27
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ap
  %.pn59.pn = phi { ptr, i32 } [ %i.ff, %bb.ap ], [ %.pn59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.av

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.aa
  %i.fq = load ptr, ptr %1, align 8, !tbaa !20
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.0138
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !44
  %.not.i.i104 = icmp ne ptr %i.fs, null
  %i.ft = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, i32 noundef 227, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext %.not.i.i104)
          to label %bb.at unwind label %bb.al     ; 0 uses

bb.at:                                            ; preds = %bb.as, %bb.p
  %i.fu = load ptr, ptr %1, align 8, !tbaa !20
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %.0138
  %i.fw = load i64, ptr %i.fv, align 8
  store i64 %i.fw, ptr %4, align 8, !tbaa !71
  %i.fx = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 231, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, i1 noundef zeroext true)
          to label %bb.au unwind label %bb.al     ; 0 uses

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.fy = add nuw i64 %.0138, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.fy, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !115

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %bb.al
  %.pn62 = phi { ptr, i32 } [ %i.et, %bb.al ], [ %.pn59.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn56.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.loopexit.split-lp

bb.aw:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZNK5boost10stacktrace5frame11source_fileB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ax unwind label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  %i.fz = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 236, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 1 dereferenceable(1) @.str.55)
          to label %bb.ay unwind label %bb.bg     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.ga = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.ay
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !27
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNK5boost10stacktrace5frame4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.az unwind label %bb.bh

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.gf = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.1, i32 noundef 237, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 1 dereferenceable(1) @.str.55)
          to label %bb.ba unwind label %bb.bi     ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.gg = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.ba
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !27
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.gl = invoke noundef i64 @_ZNK5boost10stacktrace5frame11source_lineEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bb unwind label %bb.bj

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  store i64 %i.gl, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !67
  %i.gm = invoke noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqEmiEEbT_PKcS5_S5_iS5_RKT0_RKT1_(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 238, ptr noundef nonnull @__PRETTY_FUNCTION__._Z10test_framev, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.bc unwind label %bb.bk     ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.gn = load ptr, ptr %1, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !29
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.gn to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gs) #27
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.gt = load ptr, ptr %0, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i.i111 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i111, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit112, label %bb.be

bb.be:                                            ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !29
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #27
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit112

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit112: ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void

13:                                               ; preds = %._crit_edge
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bf:                                            ; preds = %bb.aw
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

bb.bg:                                            ; preds = %bb.ax
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hb = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.bg
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !27
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.gz, %bb.bf ], [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %i.ha, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.bm

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.bi:                                            ; preds = %bb.az
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.bi
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !27
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.bh
  %.pn48 = phi { ptr, i32 } [ %i.hg, %bb.bh ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %i.hh, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bm

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bb
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn50 = phi { ptr, i32 } [ %i.ho, %bb.bk ], [ %i.hn, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %13
  %.pn50.pn = phi { ptr, i32 } [ %.pn50, %bb.bl ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.av, %bb.bm
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn53.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn50.pn, %bb.bm ], [ %.pn62, %bb.av ], [ %lpad.loopexit.split-lp179, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.hp = load ptr, ptr %1, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i.i119 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i.i119, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit120, label %bb.bn

bb.bn:                                            ; preds = %.loopexit.split-lp
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !29
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hp to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.hu) #27
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit120

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit120: ; preds = %bb.bn, %.loopexit.split-lp, %bb.c
  %.pn62.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.c ], [ %.pn62.pn.pn, %.loopexit.split-lp ], [ %.pn62.pn.pn, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.hv = load ptr, ptr %0, align 8, !tbaa !20    ; 3 uses
  %.not.i.i.i.i121 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i121, label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit122, label %bb.bo

bb.bo:                                            ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit120
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !29
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = sub i64 %i.hy, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.ia) #27
  br label %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit122

_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit122: ; preds = %_ZN5boost10stacktrace16basic_stacktraceISaINS0_5frameEEED2Ev.exit120, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  resume { ptr, i32 } %.pn62.pn.pn.pn
}

declare void @_Z21make_some_stacktrace1v(ptr dead_on_unwind writable sret(%"class.boost::stacktrace::basic_stacktrace") align 8) local_unnamed_addr #2

declare noundef i64 @_ZNK5boost10stacktrace5frame11source_lineEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail14test_with_implINS0_10lw_test_eqENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbT_PKcSC_SC_iSC_RKT0_RKT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(1) %6) #26
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbRKT_RKT0_.exit.thread19

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbRKT_RKT0_.exit.thread, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbRKT_RKT0_.exit

_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbRKT_RKT0_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %5, align 8, !tbaa !28
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.f, ptr nonnull align 1 dereferenceable(1) %6, i64 %i.b)
  %i.g = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.g, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbRKT_RKT0_.exit.thread, label %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbRKT_RKT0_.exit.thread19

_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbRKT_RKT0_.exit.thread: ; preds = %bb.b, %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbRKT_RKT0_.exit
  %i.h = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !48

bb.c:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbRKT_RKT0_.exit.thread
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !51
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !52
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #26 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #26
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbRKT_RKT0_.exit.thread19: ; preds = %bb.a, %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbRKT_RKT0_.exit
  %.not.i9 = icmp eq ptr %2, null
  br i1 %.not.i9, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbRKT_RKT0_.exit.thread19
  %i.l = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !36
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !53
  %i.r = or i32 %i.q, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i32 noundef %i.r)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.f:                                             ; preds = %_ZNK5boost6detail10lw_test_eqclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEEbRKT_RKT0_.exit.thread19
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %2, i64 noundef %i.s) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e, %bb.f
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.68, i64 noundef 1) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %3) ; 12 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.69, i64 noundef 9) ; 0 uses
  %.not.i10 = icmp eq ptr %0, null
  br i1 %.not.i10, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !53
  %i.ad = or i32 %i.ac, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.aa, i32 noundef %i.ad)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ae = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #26
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %0, i64 noundef %i.ae) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.g, %bb.h
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.83, i64 noundef 1) ; 0 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.88, i64 noundef 2) ; 0 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.83, i64 noundef 1) ; 0 uses
  %.not.i12 = icmp eq ptr %1, null
  br i1 %.not.i12, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.v, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !53
  %i.ap = or i32 %i.ao, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.am, i32 noundef %i.ap)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.aq = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %1, i64 noundef %i.aq) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %bb.i, %bb.j
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.84, i64 noundef 4) ; 0 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !28
  %i.au = load i64, ptr %i.a, align 8, !tbaa !26
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.at, i64 noundef %i.au) ; 12 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.85, i64 noundef 2) ; 0 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.88, i64 noundef 2) ; 0 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.86, i64 noundef 2) ; 0 uses
  %i.az = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #26
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %6, i64 noundef %i.az) ; 0 uses
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.87, i64 noundef 23) ; 0 uses
  %.not.i15 = icmp eq ptr %4, null
  br i1 %.not.i15, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.av, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !53
  %i.bi = or i32 %i.bh, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bf, i32 noundef %i.bi)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.bj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #26
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %4, i64 noundef %i.bj) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %bb.k, %bb.l
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.71, i64 noundef 1) ; 0 uses
  %i.bm = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.av, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 240
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !60 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !66
  %.not.i1.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i1.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
end_hunk_2
