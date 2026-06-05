inline.NumInlined: 919
inline.NumDeleted: 288
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<(anonymous namespace)::TestCase, std::allocator<(anonymous namespace)::TestCase>>::_Vector_impl" }
%"struct.std::_Vector_base<(anonymous namespace)::TestCase, std::allocator<(anonymous namespace)::TestCase>>::_Vector_impl" = type { %"struct.std::_Vector_base<(anonymous namespace)::TestCase, std::allocator<(anonymous namespace)::TestCase>>::_Vector_impl_data" }
%"struct.std::_Vector_base<(anonymous namespace)::TestCase, std::allocator<(anonymous namespace)::TestCase>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.benchmark::internal::LogType" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.(anonymous namespace)::TestCase" = type { %"class.std::__cxx11::basic_string", i8, %"class.std::__cxx11::basic_string" }
%"class.benchmark::internal::CheckHandler" = type { ptr }
%"class.(anonymous namespace)::TestReporter" = type { %"class.benchmark::ConsoleReporter.base", %"class.std::vector.31" }
%"class.benchmark::ConsoleReporter.base" = type <{ %"class.benchmark::BenchmarkReporter", i32, [4 x i8], i64, %"class.std::map", i8 }>
%"class.benchmark::BenchmarkReporter" = type { ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector.31" = type { %"struct.std::_Vector_base.32" }
%"struct.std::_Vector_base.32" = type { %"struct.std::_Vector_base<benchmark::BenchmarkReporter::Run, std::allocator<benchmark::BenchmarkReporter::Run>>::_Vector_impl" }
%"struct.std::_Vector_base<benchmark::BenchmarkReporter::Run, std::allocator<benchmark::BenchmarkReporter::Run>>::_Vector_impl" = type { %"struct.std::_Vector_base<benchmark::BenchmarkReporter::Run, std::allocator<benchmark::BenchmarkReporter::Run>>::_Vector_impl_data" }
%"struct.std::_Vector_base<benchmark::BenchmarkReporter::Run, std::allocator<benchmark::BenchmarkReporter::Run>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }

$__clang_call_terminate = comdat any

$_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl = comdat any

$_ZN9benchmark17BenchmarkReporter8FinalizeEv = comdat any

$_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag = comdat any

$_ZN9benchmark17BenchmarkReporter3RunC2EOS1_ = comdat any

$_ZN9benchmark13BenchmarkNameC2EOS0_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_ = comdat any

$_ZN9benchmark13BenchmarkNameD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZN9benchmark17BenchmarkReporter3RunaSEOS1_ = comdat any

$_ZN9benchmark13BenchmarkNameaSEOS0_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN9benchmark17BenchmarkReporter3RunEPS5_EET0_T_SA_S9_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_ = comdat any

$_ZN9benchmark13BenchmarkNameC2ERKS0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i = comdat any

$_ZN9benchmark8internal12CheckHandlerD2Ev = comdat any

$_ZN9benchmark8internal16CallAbortHandlerEv = comdat any

$_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log = comdat any

$_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log = comdat any

$_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log = comdat any

$_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log = comdat any

@_ZN12_GLOBAL__N_115ExpectedResultsE = internal global %"class.std::vector" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [14 x i8] c"error message\00", align 1
@_ZL27benchmark_uniq_2_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"BM_error_no_running\00", align 1
@dummy70 = hidden local_unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/skip_with_error_test.cc\00", align 1
@__PRETTY_FUNCTION__._Z23BM_error_before_runningRN9benchmark5StateE = private unnamed_addr constant [49 x i8] c"void BM_error_before_running(benchmark::State &)\00", align 1
@_ZL27benchmark_uniq_3_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"BM_error_before_running\00", align 1
@dummy79 = hidden local_unnamed_addr global i32 0, align 4
@__PRETTY_FUNCTION__._Z29BM_error_before_running_batchRN9benchmark5StateE = private unnamed_addr constant [55 x i8] c"void BM_error_before_running_batch(benchmark::State &)\00", align 1
@_ZL27benchmark_uniq_4_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.12 = private unnamed_addr constant [30 x i8] c"BM_error_before_running_batch\00", align 1
@dummy88 = hidden local_unnamed_addr global i32 0, align 4
@__PRETTY_FUNCTION__._Z33BM_error_before_running_range_forRN9benchmark5StateE = private unnamed_addr constant [59 x i8] c"void BM_error_before_running_range_for(benchmark::State &)\00", align 1
@_ZL27benchmark_uniq_5_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.15 = private unnamed_addr constant [34 x i8] c"BM_error_before_running_range_for\00", align 1
@dummy97 = hidden local_unnamed_addr global i32 0, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"first_iter\00", align 1
@__PRETTY_FUNCTION__._Z23BM_error_during_runningRN9benchmark5StateE = private unnamed_addr constant [49 x i8] c"void BM_error_during_running(benchmark::State &)\00", align 1
@_ZL27benchmark_uniq_6_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.19 = private unnamed_addr constant [24 x i8] c"BM_error_during_running\00", align 1
@dummy120 = hidden local_unnamed_addr global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"/1/threads:1\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"/1/threads:2\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"/1/threads:4\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"/1/threads:8\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"/2/threads:1\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"/2/threads:2\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"/2/threads:4\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"/2/threads:8\00", align 1
@.str.30 = private unnamed_addr constant [70 x i8] c"state.max_iterations > 3 && \22test requires at least a few iterations\22\00", align 1
@__PRETTY_FUNCTION__._Z34BM_error_during_running_ranged_forRN9benchmark5StateE = private unnamed_addr constant [60 x i8] c"void BM_error_during_running_ranged_for(benchmark::State &)\00", align 1
@_ZL27benchmark_uniq_7_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.33 = private unnamed_addr constant [35 x i8] c"BM_error_during_running_ranged_for\00", align 1
@dummy142 = hidden local_unnamed_addr global i32 0, align 4
@.str.35 = private unnamed_addr constant [16 x i8] c"/1/iterations:5\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"/2/iterations:5\00", align 1
@_ZL27benchmark_uniq_8_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.38 = private unnamed_addr constant [23 x i8] c"BM_error_after_running\00", align 1
@dummy156 = hidden local_unnamed_addr global i32 0, align 4
@.str.40 = private unnamed_addr constant [11 x i8] c"/threads:1\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"/threads:2\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"/threads:4\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"/threads:8\00", align 1
@__PRETTY_FUNCTION__._Z21BM_error_while_pausedRN9benchmark5StateE = private unnamed_addr constant [47 x i8] c"void BM_error_while_paused(benchmark::State &)\00", align 1
@_ZL27benchmark_uniq_9_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.45 = private unnamed_addr constant [22 x i8] c"BM_error_while_paused\00", align 1
@dummy180 = hidden local_unnamed_addr global i32 0, align 4
@.str.47 = private unnamed_addr constant [28 x i8] c"EB != ExpectedResults.end()\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"EB == ExpectedResults.end()\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.49 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.52 = private unnamed_addr constant [109 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"cached_ > 0\00", align 1
@__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv = private unnamed_addr constant [61 x i8] c"StateIterator &benchmark::State::StateIterator::operator++()\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"range_.size() > pos\00", align 1
@__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm = private unnamed_addr constant [51 x i8] c"int64_t benchmark::State::range(std::size_t) const\00", align 1
@_ZTVN12_GLOBAL__N_112TestReporterE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_112TestReporterE, ptr @_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE, ptr @_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl, ptr @_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE, ptr @_ZN9benchmark17BenchmarkReporter8FinalizeEv, ptr @_ZN12_GLOBAL__N_112TestReporterD2Ev, ptr @_ZN12_GLOBAL__N_112TestReporterD0Ev, ptr @_ZN9benchmark15ConsoleReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE, ptr @_ZN9benchmark15ConsoleReporter11PrintHeaderERKNS_17BenchmarkReporter3RunE] }, align 8
@_ZTIN12_GLOBAL__N_112TestReporterE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_112TestReporterE, ptr @_ZTIN9benchmark15ConsoleReporterE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12_GLOBAL__N_112TestReporterE = internal constant [31 x i8] c"N12_GLOBAL__N_112TestReporterE\00", align 1
@_ZTIN9benchmark15ConsoleReporterE = external constant ptr
@_ZTVN9benchmark15ConsoleReporterE = external unnamed_addr constant { [10 x ptr] }, align 8
@.str.56 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.57 = private unnamed_addr constant [29 x i8] c"name == run.benchmark_name()\00", align 1
@__func__._ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE = private unnamed_addr constant [9 x i8] c"CheckRun\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"expected \00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c" got \00", align 1
@.str.60 = private unnamed_addr constant [75 x i8] c"(error_occurred) == (benchmark::internal::SkippedWithError == run.skipped)\00", align 1
@.str.61 = private unnamed_addr constant [34 x i8] c"error_message == run.skip_message\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"run.iterations != 0\00", align 1
@_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log = linkonce_odr hidden local_unnamed_addr global %"class.benchmark::internal::LogType" zeroinitializer, comdat, align 8
@_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log = linkonce_odr hidden global i64 0, comdat, align 8
@.str.63 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c": Check `\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"' failed. \00", align 1
@_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log = linkonce_odr hidden global %"class.benchmark::internal::LogType" zeroinitializer, comdat, align 8
@_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log = linkonce_odr hidden global i64 0, comdat, align 8
@_ZSt4clog = external global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_skip_with_error_test.cc, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EED2Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_18TestCaseES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN12_GLOBAL__N_18TestCaseEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN12_GLOBAL__N_18TestCaseEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !18
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyIN12_GLOBAL__N_18TestCaseEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !18
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZSt8_DestroyIN12_GLOBAL__N_18TestCaseEEvPT_.exit.i.i

_ZSt8_DestroyIN12_GLOBAL__N_18TestCaseEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_18TestCaseES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !19

_ZSt8_DestroyIPN12_GLOBAL__N_18TestCaseES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_18TestCaseEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_18TestCaseES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN12_GLOBAL__N_18TestCaseES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_18TestCaseES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN12_GLOBAL__N_18TestCaseES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_18TestCaseES1_EvT_S3_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.q = ptrtoint ptr %.val1 to i64
  %i.r = ptrtoint ptr %.val to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.s) #25
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_18TestCaseES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_Z19BM_error_no_runningRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.c, align 1, !tbaa !18
  invoke void @_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 64 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !tbaa !18
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.h
}

declare void @_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 64 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"struct.(anonymous namespace)::TestCase", align 8 ; 25 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %.idx = mul nuw nsw i64 %.8.val, 72
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx
  %.not24 = icmp eq i64 %.8.val, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit
  %.01025 = phi ptr [ %.0.val, %.lr.ph ], [ %i.fv, %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.d, ptr %1, align 8, !tbaa !22
  %i.m = load ptr, ptr %.01025, align 8, !tbaa !13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01025, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.o, ptr %i.b, align 8, !tbaa !24
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %1, align 8, !tbaa !13
  %i.r = load i64, ptr %i.b, align 8, !tbaa !24
  store i64 %i.r, ptr %i.d, align 8, !tbaa !18
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.s = phi ptr [ %i.q, %.noexc.i.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.o, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.t = load i8, ptr %i.m, align 1, !tbaa !18
  store i8 %i.t, ptr %i.s, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.u = load i64, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  store i64 %i.u, ptr %i.e, align 8, !tbaa !23
  %i.v = load ptr, ptr %1, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  store i8 0, ptr %i.w, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.x = getelementptr inbounds nuw i8, ptr %.01025, i64 32
  %i.y = load i8, ptr %i.x, align 8, !tbaa !25, !range !28, !noundef !29
  store i8 %i.y, ptr %i.f, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %.01025, i64 40
  store ptr %i.h, ptr %i.g, align 8, !tbaa !22
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01025, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !24
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i6.i, label %._crit_edge.i.i5.i

.noexc.i6.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %bb.g   ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i6.i
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !13
  %i.af = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.af, ptr %i.h, align 8, !tbaa !18
  br label %._crit_edge.i.i5.i

._crit_edge.i.i5.i:                               ; preds = %.noexc.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ag = phi ptr [ %i.ae, %.noexc.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  switch i64 %i.ac, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN12_GLOBAL__N_18TestCaseC2ERKS0_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i5.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !18
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !18
  br label %_ZN12_GLOBAL__N_18TestCaseC2ERKS0_.exit

bb.f:                                             ; preds = %._crit_edge.i.i5.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %_ZN12_GLOBAL__N_18TestCaseC2ERKS0_.exit

bb.g:                                             ; preds = %.noexc.i6.i
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.d
  br i1 %i.ak, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.al = load i64, ptr %i.d, align 8, !tbaa !18
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.y ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ai, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_ZN12_GLOBAL__N_18TestCaseC2ERKS0_.exit:          ; preds = %._crit_edge.i.i5.i, %bb.e, %bb.f
  %i.an = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  store i64 %i.an, ptr %i.i, align 8, !tbaa !23
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !13, !noalias !30
  %i.ar = load i64, ptr %i.j, align 8, !tbaa !23, !noalias !30 ; 3 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !13, !noalias !30
  %i.at = load i64, ptr %i.e, align 8, !tbaa !23, !noalias !30 ; 3 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !22, !alias.scope !33
  store i64 0, ptr %i.l, align 8, !tbaa !23, !alias.scope !33
  store i8 0, ptr %i.k, align 8, !tbaa !18, !alias.scope !33
  %i.au = add i64 %i.at, %i.ar
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.au)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_18TestCaseC2ERKS0_.exit
  %i.av = load i64, ptr %i.l, align 8, !tbaa !23, !alias.scope !33
  %i.aw = sub i64 4611686018427387903, %i.av
  %i.ax = icmp ult i64 %i.aw, %i.ar
  br i1 %i.ax, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.aq, i64 noundef %i.ar)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.az = load i64, ptr %i.l, align 8, !tbaa !23, !alias.scope !33
  %i.ba = sub i64 4611686018427387903, %i.az
  %i.bb = icmp ult i64 %i.ba, %i.at
  br i1 %i.bb, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #27
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.as, i64 noundef %i.at)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZN12_GLOBAL__N_18TestCaseC2ERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bd = load ptr, ptr %2, align 8, !tbaa !13, !alias.scope !33 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.k
  br i1 %i.be, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bf = load i64, ptr %i.k, align 8, !tbaa !18, !alias.scope !33
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #25
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.bh = load ptr, ptr %1, align 8, !tbaa !13    ; 6 uses
  %i.bi = icmp eq ptr %i.bh, %i.d
  %i.bj = load ptr, ptr %2, align 8, !tbaa !13    ; 5 uses
  %i.bk = icmp eq ptr %i.bj, %i.k                 ; 2 uses
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  br i1 %i.bk, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  br i1 %i.bk, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bl = load i64, ptr %i.l, align 8, !tbaa !23  ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  switch i64 %i.bl, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !18
  store i8 %i.bn, ptr %i.bh, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bj, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.bo = load i64, ptr %i.l, align 8, !tbaa !23  ; 2 uses
  store i64 %i.bo, ptr %i.e, align 8, !tbaa !23
  %i.bp = load ptr, ptr %1, align 8, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 0, ptr %i.bq, align 1, !tbaa !18
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bj, ptr %1, align 8, !tbaa !13
  %i.br = load <2 x i64>, ptr %i.l, align 8, !tbaa !18
  store <2 x i64> %i.br, ptr %i.e, align 8, !tbaa !18
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bs = load i64, ptr %i.d, align 8, !tbaa !18
  store ptr %i.bj, ptr %1, align 8, !tbaa !13
  %i.bt = load <2 x i64>, ptr %i.l, align 8, !tbaa !18
  store <2 x i64> %i.bt, ptr %i.e, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bh, ptr %2, align 8, !tbaa !13
  store i64 %i.bs, ptr %i.k, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %2, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.bu = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bh, %bb.m ], [ %i.k, %bb.n ]
  store i64 0, ptr %i.l, align 8, !tbaa !23
  store i8 0, ptr %i.bu, align 1, !tbaa !18
  %i.bv = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.k
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bx = load i64, ptr %i.k, align 8, !tbaa !18
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, i64 8), align 8, !tbaa !12 ; 13 uses
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, i64 16), align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 3 uses
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !22
  %i.cc = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.d
  br i1 %i.cd, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14

bb.p:                                             ; preds = %bb.o
  %i.ce = load i64, ptr %i.e, align 8, !tbaa !23  ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cb, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.cg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14: ; preds = %bb.o
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !13
  %i.ch = load i64, ptr %i.d, align 8, !tbaa !18
  store i64 %i.ch, ptr %i.cb, align 8, !tbaa !18
  %.pre = load i64, ptr %i.e, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14, %bb.p
  %i.ci = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14 ], [ %i.ce, %bb.p ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !23
  store ptr %i.d, ptr %1, align 8, !tbaa !13
  store i64 0, ptr %i.e, align 8, !tbaa !23
  store i8 0, ptr %i.d, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cl = load i8, ptr %i.f, align 8, !tbaa !25, !range !28, !noundef !29
  store i8 %i.cl, ptr %i.ck, align 8, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 40 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 56 ; 3 uses
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !22
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.h
  br i1 %i.cp, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.cq = load i64, ptr %i.i, align 8, !tbaa !23  ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cr)
  %i.cs = add nuw nsw i64 %i.cq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.cs, i1 false)
  br label %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !13
  %i.ct = load i64, ptr %i.h, align 8, !tbaa !18
  store i64 %i.ct, ptr %i.cn, align 8, !tbaa !18
  %.pre26 = load i64, ptr %i.i, align 8, !tbaa !23
  br label %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i
  %i.cu = phi i64 [ %.pre26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i ], [ %i.cq, %bb.q ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !23
  store ptr %i.h, ptr %i.g, align 8, !tbaa !13
  store i64 0, ptr %i.i, align 8, !tbaa !23
  store i8 0, ptr %i.h, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  store ptr %i.cw, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, i64 8), align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load ptr, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, align 8, !tbaa !8 ; 5 uses
  %i.cy = ptrtoint ptr %i.bz to i64
  %i.cz = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.da = sub i64 %i.cy, %i.cz                    ; 3 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.s, label %_ZNKSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #27
          to label %.noexc unwind label %.loopexit.split-lp2

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.dc = sdiv exact i64 %i.da, 72                ; 3 uses
  %i.dd = icmp eq ptr %i.bz, %i.cx                ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.dd, i64 1, i64 %i.dc
  %i.de = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dc ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dc
  %i.dg = call i64 @llvm.umin.i64(i64 %i.de, i64 128102389400760775)
  %i.dh = select i1 %i.df, i64 128102389400760775, i64 %i.dg ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EE11_M_allocateEm.exit.i.i.i, label %3

3:                                                ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %4 = mul nuw nsw i64 %i.dh, 72
  %5 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #28
          to label %_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EE11_M_allocateEm.exit.i.i.i unwind label %.loopexit1

_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EE11_M_allocateEm.exit.i.i.i: ; preds = %3, %_ZNKSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %6 = phi ptr [ null, %_ZNKSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %5, %3 ] ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 %i.da ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 3 uses
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !22
  %i.dk = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.d
  br i1 %i.dl, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EE11_M_allocateEm.exit.i.i.i
  %i.dm = load i64, ptr %i.e, align 8, !tbaa !23  ; 3 uses
  %i.dn = icmp ult i64 %i.dm, 16
  call void @llvm.assume(i1 %i.dn)
  %i.do = add nuw nsw i64 %i.dm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dj, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.do, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EE11_M_allocateEm.exit.i.i.i
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !13
  %i.dp = load i64, ptr %i.d, align 8, !tbaa !18
  store i64 %i.dp, ptr %i.dj, align 8, !tbaa !18
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.t
  %i.dq = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.dm, %bb.t ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !23
  store ptr %i.d, ptr %1, align 8, !tbaa !13
  store i64 0, ptr %i.e, align 8, !tbaa !23
  store i8 0, ptr %i.d, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dt = load i8, ptr %i.f, align 8, !tbaa !25, !range !28, !noundef !29
  store i8 %i.dt, ptr %i.ds, align 8, !tbaa !25
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 40 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 56 ; 3 uses
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !22
  %i.dw = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.h
  br i1 %i.dx, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.dy = load i64, ptr %i.i, align 8, !tbaa !23  ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 16
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i64 %i.dy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dv, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.ea, i1 false)
  br label %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !13
  %i.eb = load i64, ptr %i.h, align 8, !tbaa !18
  store i64 %i.eb, ptr %i.dv, align 8, !tbaa !18
  %.pre6.i.i.i = load i64, ptr %i.i, align 8, !tbaa !23
  br label %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i

_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i, %bb.u
  %i.ec = phi i64 [ %i.dy, %bb.u ], [ %.pre6.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !23
  store ptr %i.h, ptr %i.g, align 8, !tbaa !13
  store i64 0, ptr %i.i, align 8, !tbaa !23
  store i8 0, ptr %i.h, align 8, !tbaa !18
  br i1 %i.dd, label %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i, %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.fi, %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %6, %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i ] ; 9 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.fh, %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ], [ %i.cx, %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i ] ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.ee = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ee, ptr %.03.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !36, !noalias !39
  %i.ef = load ptr, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !39, !noalias !36 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 16 ; 5 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !23, !alias.scope !39, !noalias !36 ; 3 uses
  %i.ek = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.ek)
  %i.el = add nuw nsw i64 %i.ej, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ee, ptr noundef nonnull align 8 dereferenceable(1) %i.eg, i64 %i.el, i1 false), !alias.scope !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.ef, ptr %.03.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !36, !noalias !39
  %i.em = load i64, ptr %i.eg, align 8, !tbaa !18, !alias.scope !39, !noalias !36
  store i64 %i.em, ptr %i.ee, align 8, !tbaa !18, !alias.scope !36, !noalias !39
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !23, !alias.scope !39, !noalias !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.v
  %i.en = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.ej, %bb.v ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 8
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !23, !alias.scope !36, !noalias !39
  store ptr %i.eg, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !39, !noalias !36
  store i64 0, ptr %i.eo, align 8, !tbaa !23, !alias.scope !39, !noalias !36
  store i8 0, ptr %i.eg, align 8, !tbaa !18, !alias.scope !39, !noalias !36
  %i.eq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 32
  %i.es = load i8, ptr %i.er, align 8, !tbaa !25, !range !28, !alias.scope !39, !noalias !36, !noundef !29
  store i8 %i.es, ptr %i.eq, align 8, !tbaa !25, !alias.scope !36, !noalias !39
  %i.et = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 56 ; 3 uses
  store ptr %i.ev, ptr %i.et, align 8, !tbaa !22, !alias.scope !36, !noalias !39
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !13, !alias.scope !39, !noalias !36 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 56 ; 5 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !23, !alias.scope !39, !noalias !36 ; 3 uses
  %i.fb = icmp ult i64 %i.fa, 16
  call void @llvm.assume(i1 %i.fb)
  %i.fc = add nuw nsw i64 %i.fa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ev, ptr noundef nonnull align 8 dereferenceable(1) %i.ex, i64 %i.fc, i1 false), !alias.scope !41
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  store ptr %i.ew, ptr %i.et, align 8, !tbaa !13, !alias.scope !36, !noalias !39
  %i.fd = load i64, ptr %i.ex, align 8, !tbaa !18, !alias.scope !39, !noalias !36
  store i64 %i.fd, ptr %i.ev, align 8, !tbaa !18, !alias.scope !36, !noalias !39
  %.phi.trans.insert1.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48
  %.pre2.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert1.i.i.i.i.i.i.i, align 8, !tbaa !23, !alias.scope !39, !noalias !36
  br label %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i

_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i.i.i, %bb.w
  %i.fe = phi i64 [ %i.fa, %bb.w ], [ %.pre2.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i.i.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48
  %i.fg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 48
  store i64 %i.fe, ptr %i.fg, align 8, !tbaa !23, !alias.scope !36, !noalias !39
  store ptr %i.ex, ptr %i.eu, align 8, !tbaa !13, !alias.scope !39, !noalias !36
  store i64 0, ptr %i.ff, align 8, !tbaa !23, !alias.scope !39, !noalias !36
  store i8 0, ptr %i.ex, align 8, !tbaa !18, !alias.scope !39, !noalias !36
  %i.fh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fh, %i.bz
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i: ; preds = %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i, %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %6, %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i ], [ %i.fi, %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 72
  %.not.i32.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i32.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, i64 16), align 8, !tbaa !21
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = sub i64 %i.fl, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.fm) #25
  br label %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i, %bb.x
  store ptr %6, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, align 8, !tbaa !8
  store ptr %i.fj, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, i64 8), align 8, !tbaa !12
  %i.fn = getelementptr inbounds nuw [72 x i8], ptr %6, i64 %i.dh
  store ptr %i.fn, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_115ExpectedResultsE, i64 16), align 8, !tbaa !21
  %.pre27 = load ptr, ptr %i.g, align 8, !tbaa !13 ; 2 uses
  %i.fo = icmp eq ptr %.pre27, %i.h
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit
  %i.fp = load i64, ptr %i.h, align 8, !tbaa !18
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %.pre27, i64 noundef %i.fq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  %i.fr = load ptr, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.d
  br i1 %i.fs, label %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17
  %i.ft = load i64, ptr %i.d, align 8, !tbaa !18
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #25
  br label %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit

_ZN12_GLOBAL__N_18TestCaseD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.fv = getelementptr inbounds nuw i8, ptr %.01025, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.fv, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.y

.loopexit1:                                       ; preds = %3
  %lpad.loopexit3 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp2:                              ; preds = %bb.s
  %lpad.loopexit.split-lp4 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit1, %.loopexit.split-lp2, %.body
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.body ], [ %lpad.loopexit3, %.loopexit1 ], [ %lpad.loopexit.split-lp4, %.loopexit.split-lp2 ]
  call fastcc void @_ZN12_GLOBAL__N_18TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_18TestCaseD2Ev(ptr noundef nonnull readonly align 8 captures(address) dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !18
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z23BM_error_before_runningRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.c, align 1, !tbaa !18
  invoke void @_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 64 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.h = load i64, ptr %0, align 64, !tbaa !43    ; 2 uses
  %.not.i = icmp slt i64 %i.h, 1
  br i1 %.not.i, label %bb.b, label %bb.d, !prof !64

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !65, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !66
  %.not = icmp ne i32 %i.m, 0
  %i.n = load i64, ptr %0, align 64               ; 2 uses
  %.not14.i = icmp slt i64 %i.n, 1
  %or.cond = select i1 %.not, i1 true, i1 %.not14.i
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %storemerge.in = phi i64 [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %bb.c ]
  %storemerge = add nsw i64 %storemerge.in, -1
  store i64 %storemerge, ptr %0, align 64, !tbaa !43
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 75, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23BM_error_before_runningRN9benchmark5StateE) #29
  unreachable

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.r = load i64, ptr %i.a, align 8, !tbaa !18
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.c, %bb.b
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_Z29BM_error_before_running_batchRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.c, align 1, !tbaa !18
  invoke void @_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 64 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.h = load i64, ptr %0, align 64, !tbaa !43    ; 3 uses
  %.not.i = icmp slt i64 %i.h, 17
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !64

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = add nsw i64 %i.h, -17
  br label %bb.g

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !65, !range !28, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %thread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !66
  %.not = icmp ne i32 %i.n, 0
  %.pr.pre = load i64, ptr %0, align 64, !tbaa !43 ; 3 uses
  %.not14.i = icmp slt i64 %.pr.pre, 17
  %or.cond = select i1 %.not, i1 true, i1 %.not14.i
  br i1 %or.cond, label %thread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i64 %.pr.pre, -17
  br label %bb.g

thread-pre-split:                                 ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %.pr.pre, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %.not15.i = icmp eq i64 %i.p, 0
  br i1 %.not15.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %thread-pre-split
  %i.q = sub nsw i64 17, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.e
  %.sink = phi i64 [ %i.i, %bb.b ], [ 0, %bb.f ], [ %i.o, %bb.e ]
  store i64 %.sink, ptr %0, align 64, !tbaa !43
  call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 84, ptr noundef nonnull @__PRETTY_FUNCTION__._Z29BM_error_before_running_batchRN9benchmark5StateE) #29
  unreachable

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.h
  %i.v = load i64, ptr %i.a, align 8, !tbaa !18
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.s

bb.i:                                             ; preds = %thread-pre-split
end_hunk_0
