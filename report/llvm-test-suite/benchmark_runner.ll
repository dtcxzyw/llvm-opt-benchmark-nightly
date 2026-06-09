inline.NumInlined: 789
inline.NumDeleted: 420
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.benchmark::internal::LogType" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.benchmark::internal::BenchmarkRunner::IterationResults" = type { %"struct.benchmark::internal::ThreadManager::Result", i64, double }
%"struct.benchmark::internal::ThreadManager::Result" = type { i64, double, double, double, i64, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, %"class.std::map" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::unique_ptr.29" = type { %"struct.std::__uniq_ptr_data.30" }
%"struct.std::__uniq_ptr_data.30" = type { %"class.std::__uniq_ptr_impl.31" }
%"class.std::__uniq_ptr_impl.31" = type { %"class.std::tuple.32" }
%"class.std::tuple.32" = type { %"struct.std::_Tuple_impl.33" }
%"struct.std::_Tuple_impl.33" = type { %"struct.std::_Head_base.36" }
%"struct.std::_Head_base.36" = type { ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.18" }
%"struct.std::_Head_base.18" = type { ptr }
%"class.std::thread" = type { %"class.std::thread::id" }
%"class.std::thread::id" = type { i64 }
%"class.benchmark::internal::ThreadTimer" = type { i8, i8, double, double, double, double, double }
%"class.benchmark::State" = type { i64, i64, i64, i8, i8, i32, %"class.std::vector.19", i64, %"class.std::map", %"class.std::__cxx11::basic_string", i32, i32, ptr, ptr, ptr, ptr, [8 x i8] }
%"class.std::vector.19" = type { %"struct.std::_Vector_base.20" }
%"struct.std::_Vector_base.20" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.benchmark::MutexLock" = type { %"class.std::unique_lock" }
%"class.std::unique_lock" = type <{ ptr, i8, [7 x i8] }>
%"struct.benchmark::BenchmarkReporter::Run" = type { %"struct.benchmark::BenchmarkName", i64, i64, i32, %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::basic_string", i64, i64, i64, i64, i32, double, double, double, i8, i32, ptr, i64, ptr, i8, i8, %"class.std::map", ptr, double }
%"struct.benchmark::BenchmarkName" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<benchmark::BenchmarkReporter::Run, std::allocator<benchmark::BenchmarkReporter::Run>>::_Vector_impl" }
%"struct.std::_Vector_base<benchmark::BenchmarkReporter::Run, std::allocator<benchmark::BenchmarkReporter::Run>>::_Vector_impl" = type { %"struct.std::_Vector_base<benchmark::BenchmarkReporter::Run, std::allocator<benchmark::BenchmarkReporter::Run>>::_Vector_impl_data" }
%"struct.std::_Vector_base<benchmark::BenchmarkReporter::Run, std::allocator<benchmark::BenchmarkReporter::Run>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }

$_ZNSt6vectorISt6threadSaIS0_EED2Ev = comdat any

$_ZN9benchmark8internal10RunResultsD2Ev = comdat any

$_ZN9benchmark8internal13ThreadManager17WaitForAllThreadsEv = comdat any

$_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev = comdat any

$_ZN9benchmark17BenchmarkReporter3RunD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZN9benchmark8internal13ThreadManager20NotifyThreadCompleteEv = comdat any

$_ZN9benchmark5StateD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZN9benchmark8internal13ThreadManager6ResultaSEOS2_ = comdat any

$_ZN9benchmark17BenchmarkReporter3RunC2Ev = comdat any

$_ZN9benchmark13BenchmarkNameD2Ev = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_ = comdat any

$_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_ = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEED0Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEE6_M_runEv = comdat any

$_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_ = comdat any

$_ZN9benchmark13BenchmarkNameC2ERKS0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZN9benchmark17BenchmarkReporter3RunC2EOS1_ = comdat any

$_ZN9benchmark13BenchmarkNameC2EOS0_ = comdat any

$_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log = comdat any

$_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log = comdat any

$_ZZN9benchmark8internal8LogLevelEvE9log_level = comdat any

$_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log = comdat any

$_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log = comdat any

$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEEE = comdat any

$_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEEE = comdat any

$_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEEE = comdat any

@_ZN9benchmark8internal14memory_managerE = hidden local_unnamed_addr global ptr null, align 8
@_ZN9benchmark8internal16profiler_managerE = hidden local_unnamed_addr global ptr null, align 8
@_ZN9benchmark8internal12_GLOBAL__N_115kDefaultMinTimeE = internal global double 0.000000e+00, align 8
@_ZN9benchmarkL18kDefaultMinTimeStrE = internal constant [5 x i8] c"0.5s\00", align 1
@.str = private unnamed_addr constant [56 x i8] c"Malformed iters value passed to --benchmark_min_time: `\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"`. Expected --benchmark_min_time=<integer>x.\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"-- LOG(\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"): \00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"Value passed to --benchmark_min_time should have a suffix. Eg., `30s` for 30-seconds.\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Malformed seconds value passed to --benchmark_min_time: `\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"`. Expected --benchmark_min_time=<float>x.\00", align 1
@_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E = external global %"class.std::__cxx11::basic_string", align 8
@_ZN9benchmark23FLAGS_benchmark_dry_runE = external local_unnamed_addr global i8, align 1
@_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE = external local_unnamed_addr global double, align 8
@_ZN9benchmark27FLAGS_benchmark_repetitionsE = external local_unnamed_addr global i32, align 4
@_ZN9benchmark38FLAGS_benchmark_report_aggregates_onlyE = external local_unnamed_addr global i8, align 1
@_ZN9benchmark39FLAGS_benchmark_display_aggregates_onlyE = external local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Perf counters were requested but could not be set up.\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Running \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" for \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Ran in \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Next iters: \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log = linkonce_odr hidden local_unnamed_addr global %"class.benchmark::internal::LogType" zeroinitializer, comdat, align 8
@_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log = linkonce_odr hidden global i64 0, comdat, align 8
@_ZZN9benchmark8internal8LogLevelEvE9log_level = linkonce_odr hidden local_unnamed_addr global i32 0, comdat, align 4
@_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log = linkonce_odr hidden local_unnamed_addr global %"class.benchmark::internal::LogType" zeroinitializer, comdat, align 8
@_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log = linkonce_odr hidden global i64 0, comdat, align 8
@_ZSt4clog = external global %"class.std::basic_ostream", align 8
@.str.16 = private unnamed_addr constant [63 x i8] c"Benchmark returned before State::KeepRunning() returned false!\00", align 1
@_ZN9benchmark13MemoryManager14TombstoneValueE = external local_unnamed_addr constant i64, align 8
@.str.17 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEEE = linkonce_odr hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEEE, ptr @_ZNSt6thread6_StateD2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEE6_M_runEv] }, comdat, align 8
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEEE, ptr @_ZTINSt6thread6_StateE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEEE = linkonce_odr hidden constant [190 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external constant ptr
@.str.18 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_benchmark_runner.cc, ptr null }]

@_ZN9benchmark8internal15BenchmarkRunnerC1ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN9benchmark8internal15BenchmarkRunnerC2ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden { i32, i64 } @_ZN9benchmark8internal17ParseBenchMinTimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 %i.d
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !15
  switch i8 %i.i, label %bb.g [
    i8 120, label %bb.c
    i8 115, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.j = tail call ptr @__errno_location() #24
  store i32 0, ptr %i.j, align 4, !tbaa !4
  %i.k = call i64 @__isoc23_strtol(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef 10) #23
  %i.l = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !17
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.o = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !17 ; 2 uses
  %.not.i9 = icmp eq ptr %i.o, null
  br i1 %.not.i9, label %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA56_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA56_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str, i64 noundef 55) ; 0 uses
  %.pr = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !17 ; 2 uses
  %.not.i10 = icmp eq ptr %.pr, null
  br i1 %.not.i10, label %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit

_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA56_cEERNS0_7LogTypeES4_RKT_.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !14
  %i.r = load i64, ptr %i.c, align 8, !tbaa !8
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr, ptr noundef %i.q, i64 noundef %i.r) ; 0 uses
  %.pr24 = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !17 ; 2 uses
  %.not.i11 = icmp eq ptr %.pr24, null
  br i1 %.not.i11, label %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr24, ptr noundef nonnull @.str.2, i64 noundef 44) ; 0 uses
  br label %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %_ZN9benchmark8internallsIA56_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.r

bb.g:                                             ; preds = %bb.b
  %i.u = load i32, ptr @_ZZN9benchmark8internal8LogLevelEvE9log_level, align 4, !tbaa !4
  %.not.i12 = icmp slt i32 %i.u, 0
  br i1 %.not.i12, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #23
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !17
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.y = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.l, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i1.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i1.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !17
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i: ; preds = %bb.m, %bb.j
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.m ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.j ]
  %.0.ph.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.m ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.j ]
  tail call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i) #23
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit: ; preds = %bb.h, %bb.i, %bb.k, %bb.l, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i
  %.0.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.l ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.h ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.i ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.k ], [ %.0.ph.i, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i ] ; 4 uses
  %i.ab = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ab, null
  br i1 %.not.i13, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.3, i64 noundef 7) ; 0 uses
  %.pr26 = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i14 = icmp eq ptr %.pr26, null
  br i1 %.not.i14, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr26, i32 noundef 0) ; 0 uses
  %.pr28 = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i15 = icmp eq ptr %.pr28, null
  br i1 %.not.i15, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr28, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  %.pr30.pr = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i16 = icmp eq ptr %.pr30.pr, null
  br i1 %.not.i16, label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr30.pr, ptr noundef nonnull @.str.5, i64 noundef 85) ; 0 uses
  br label %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %bb.b, %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit, %bb.n, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ag = tail call ptr @__errno_location() #24
  store i32 0, ptr %i.ag, align 4, !tbaa !4
  %i.ah = load ptr, ptr %0, align 8, !tbaa !14
  %i.ai = call double @strtod(ptr noundef %i.ah, ptr noundef nonnull %i.b) #23
  %i.aj = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit18, !prof !16

bb.o:                                             ; preds = %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit
  %i.al = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i17 = icmp eq i32 %i.al, 0
  br i1 %.not.i17, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !17
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit18

_ZN9benchmark8internal18GetNullLogInstanceEv.exit18: ; preds = %_ZN9benchmark8internallsIA86_cEERNS0_7LogTypeES4_RKT_.exit, %bb.o, %bb.p
  %i.am = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !17 ; 2 uses
  %.not.i19 = icmp eq ptr %i.am, null
  br i1 %.not.i19, label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit18
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.6, i64 noundef 57) ; 0 uses
  %.pr32 = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !17 ; 2 uses
  %.not.i20 = icmp eq ptr %.pr32, null
  br i1 %.not.i20, label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit21

_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit21: ; preds = %_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ao = load ptr, ptr %0, align 8, !tbaa !14
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !8
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr32, ptr noundef %i.ao, i64 noundef %i.ap) ; 0 uses
  %.pr34 = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !17 ; 2 uses
  %.not.i22 = icmp eq ptr %.pr34, null
  br i1 %.not.i22, label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit21
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr34, ptr noundef nonnull @.str.7, i64 noundef 42) ; 0 uses
  br label %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit18, %_ZN9benchmark8internallsIA58_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit21, %bb.q
  %i.as = bitcast double %i.ai to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit
  %.sroa.0.0 = phi i32 [ 1, %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit ], [ 0, %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit ], [ 1, %bb.a ]
  %.sroa.4.0 = phi i64 [ %i.as, %_ZN9benchmark8internallsIA43_cEERNS0_7LogTypeES4_RKT_.exit ], [ %i.k, %_ZN9benchmark8internallsIA45_cEERNS0_7LogTypeES4_RKT_.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunnerC2ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE(ptr noundef nonnull align 8 dereferenceable(184) initializes((0, 50), (56, 72)) %0, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %0, i8 0, i64 50, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = invoke { i32, i64 } @_ZN9benchmark8internal17ParseBenchMinTimeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) @_ZN9benchmark24FLAGS_benchmark_min_timeB5cxx11E)
          to label %bb.b unwind label %bb.v       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { i32, i64 } %i.d, 0
  store i32 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = extractvalue { i32, i64 } %i.d, 1
  store i64 %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !46, !range !47, !noundef !48
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !49
  %.pre19.pre2126 = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !51
  %i.m = invoke noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef %i.l)
          to label %bb.d unwind label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 8
  %i.o = icmp eq i32 %i.n, 0
  %_ZN9benchmark8internal12_GLOBAL__N_115kDefaultMinTimeE.val.i = load double, ptr @_ZN9benchmark8internal12_GLOBAL__N_115kDefaultMinTimeE, align 8
  %.val5.i = load double, ptr %i.f, align 8
  %spec.select.val.i = select i1 %i.o, double %_ZN9benchmark8internal12_GLOBAL__N_115kDefaultMinTimeE.val.i, double %.val5.i
  %.val.i = load double, ptr %i.k, align 8
  %.0.i = select i1 %i.m, double %spec.select.val.i, double %.val.i
  %.pre = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !46, !range !47
  %i.p = trunc nuw i8 %.pre to i1
  store double %.0.i, ptr %i.h, align 8, !tbaa !49
  %.pre19.pre21 = load ptr, ptr %i.a, align 8, !tbaa !50 ; 2 uses
  br i1 %i.p, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.pre19.pre21, i64 376
  %i.r = load double, ptr %i.q, align 8, !tbaa !51
  %i.s = invoke noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef %i.r)
          to label %bb.f unwind label %bb.v

bb.f:                                             ; preds = %bb.e
  %.pre19.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !50 ; 3 uses
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.pre19.pre.pre, i64 384
  %i.u = load double, ptr %i.t, align 8, !tbaa !69 ; 2 uses
  %i.v = fcmp ogt double %i.u, 0.000000e+00
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = load double, ptr @_ZN9benchmark31FLAGS_benchmark_min_warmup_timeE, align 8, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.g, %bb.h, %bb.d
  %.pre19 = phi ptr [ %.pre19.pre21, %bb.d ], [ %.pre19.pre.pre, %bb.h ], [ %.pre19.pre.pre, %bb.g ], [ %.pre19.pre2126, %.thread ] ; 5 uses
  %i.x = phi double [ 0.000000e+00, %bb.d ], [ %i.w, %bb.h ], [ %i.u, %bb.g ], [ 0.000000e+00, %.thread ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.x, ptr %i.y, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !tbaa !46, !range !47, !noundef !48
  %i.ab = trunc nuw i8 %i.aa to i1                ; 3 uses
  %i.ac = fcmp ule double %i.x, 0.000000e+00
  %narrow = select i1 %i.ab, i1 true, i1 %i.ac
  %i.ad = zext i1 %narrow to i8
  store i8 %i.ad, ptr %i.z, align 8, !tbaa !72
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 108
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.pre19, i64 368
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !73 ; 2 uses
  %.not = icmp eq i32 %i.ag, 0
  %i.ah = load i32, ptr @_ZN9benchmark27FLAGS_benchmark_repetitionsE, align 4
  %spec.select = select i1 %.not, i32 %i.ah, i32 %i.ag
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = phi i32 [ 1, %bb.i ], [ %spec.select, %bb.j ]
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre19, i64 392
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !75
  %.not8 = icmp ne i64 %i.al, 0
  %i.am = load i32, ptr %i.c, align 8
  %i.an = icmp eq i32 %i.am, 0
  %narrow18 = select i1 %.not8, i1 true, i1 %i.an ; 2 uses
  %i.ao = zext i1 %narrow18 to i8
  store i8 %i.ao, ptr %i.aj, align 8, !tbaa !76
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.ap, align 4, !tbaa !77
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre19, i64 400
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !78 ; 2 uses
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = icmp slt i32 %i.as, 1
  br i1 %i.av, label %bb.l, label %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #25
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6threadSaIS0_EEC2EmRKS1_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt6threadSaIS0_EEC2EmRKS1_.exit.thread.i: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 16, i1 false)
  br label %bb.m

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt6threadSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.aw = shl nuw nsw i64 %i.au, 3                ; 3 uses
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #26
          to label %.noexc13 unwind label %bb.w   ; 4 uses

.noexc13:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ax, ptr %i.aq, align 8, !tbaa !79
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ax, i8 0, i64 %i.aw, i1 false), !tbaa !80
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ax, i64 %i.aw
  br label %bb.m

bb.m:                                             ; preds = %.noexc13, %_ZNSt12_Vector_baseISt6threadSaIS0_EEC2EmRKS1_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6threadSaIS0_EEC2EmRKS1_.exit.thread.i ], [ %i.ay, %.noexc13 ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6threadSaIS0_EEC2EmRKS1_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc13 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sink.i, ptr %i.ba, align 8, !tbaa !82
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.az, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.not11 = xor i1 %i.ab, true
  %or.cond = select i1 %.not11, i1 %narrow18, i1 false
  br i1 %or.cond, label %bb.n, label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val = load i64, ptr %i.bd, align 8, !tbaa !75 ; 2 uses
  %.not.i = icmp eq i64 %.val, 0
  br i1 %.not.i, label %bb.o, label %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit

bb.o:                                             ; preds = %bb.n
  %i.be = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.p, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, !prof !16

bb.p:                                             ; preds = %bb.o
  %i.bg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !17
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit.i

end_hunk_0
begin_hunk_1_@_ZN9benchmark8internal15BenchmarkRunnerC2ERKNS0_17BenchmarkInstanceEPNS0_23PerfCountersMeasurementEPNS_17BenchmarkReporter19PerFamilyRunReportsE:bb.a
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #27
  br label %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EED2Ev.exit

_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EED2Ev.exit: ; preds = %bb.x, %bb.y
  tail call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.aq) #23
  br label %bb.z

_ZN9benchmark8internallsIA54_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.u, %_ZN9benchmark8internal12_GLOBAL__N_112ComputeItersERKNS0_17BenchmarkInstanceERKNS0_13BenchTimeTypeE.exit
  ret void

bb.z:                                             ; preds = %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EED2Ev.exit, %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cf, %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EED2Ev.exit ], [ %i.ce, %bb.w ], [ %i.cd, %bb.v ]
  tail call void @_ZN9benchmark8internal10RunResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) #23
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i

bb.b:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i, !llvm.loop !91

_ZSt8_DestroyISt6threadEvPT_.exit.i.i:            ; preds = %bb.a, %bb.b
  %.05.i.i = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.05.i.i, align 8, !tbaa !93
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i
  tail call void @_ZSt9terminatev() #28
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit:  ; preds = %bb.b, %bb.a
  %.not.i.i1 = icmp eq ptr %i.a, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #27
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark8internal10RunResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.c

_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #27
  br label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #28
  unreachable

_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !95
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %i.m, ptr noundef %i.o)
          to label %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1 unwind label %bb.e

_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1: ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !94     ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #27
  br label %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit3

bb.e:                                             ; preds = %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28
  unreachable

_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit3: ; preds = %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit.i1, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunner13DoNIterationsEv(ptr dead_on_unwind noalias writable sret(%"struct.benchmark::internal::BenchmarkRunner::IterationResults") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.29", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 19 uses
  %5 = alloca %"class.std::thread", align 8       ; 6 uses
  %i.a = load i32, ptr @_ZZN9benchmark8internal8LogLevelEvE9log_level, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.a, 2
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #23
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !17
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

bb.e:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.f, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i1.i = icmp eq i32 %i.g, 0
  br i1 %.not.i1.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !17
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i: ; preds = %bb.g, %bb.d
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  %.0.ph.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  tail call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i) #23
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i
  %.0.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.f ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.b ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.c ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.e ], [ %.0.ph.i, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i ] ; 8 uses
  %i.h = load ptr, ptr %.0.i, align 8, !tbaa !17  ; 2 uses
  %.not.i21 = icmp eq ptr %i.h, null
  br i1 %.not.i21, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.3, i64 noundef 7) ; 0 uses
  %.pr = load ptr, ptr %.0.i, align 8, !tbaa !17  ; 2 uses
  %.not.i22 = icmp eq ptr %.pr, null
  br i1 %.not.i22, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i32 noundef 2) ; 0 uses
  %.pr94 = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i23 = icmp eq ptr %.pr94, null
  br i1 %.not.i23, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr94, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  %.pr96.pr = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i24 = icmp eq ptr %.pr96.pr, null
  br i1 %.not.i24, label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr96.pr, ptr noundef nonnull @.str.9, i64 noundef 8) ; 0 uses
  br label %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !48, !align !97
  call void @_ZNK9benchmark13BenchmarkName3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(256) %i.n)
  %i.o = load ptr, ptr %.0.i, align 8, !tbaa !17  ; 2 uses
  %.not.i25 = icmp eq ptr %i.o, null
  br i1 %.not.i25, label %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit
  %i.p = load ptr, ptr %3, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !8
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.p, i64 noundef %i.r)
          to label %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit unwind label %bb.o ; 0 uses

_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit: ; preds = %bb.i
  %.pr98 = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i26 = icmp eq ptr %.pr98, null
  br i1 %.not.i26, label %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr98, ptr noundef nonnull @.str.10, i64 noundef 5)
          to label %_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit unwind label %bb.o ; 0 uses

_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit.thread: ; preds = %_ZN9benchmark8internallsIA9_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 168
  br label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %bb.j
  %.pr100 = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %.not.i28 = icmp eq ptr %.pr100, null
  br i1 %.not.i28, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit
  %i.w = load i64, ptr %i.v, align 8, !tbaa !93
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr100, i64 noundef %i.w)
          to label %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit unwind label %bb.o ; 0 uses

_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit: ; preds = %bb.k
  %.pr102.pre = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i30 = icmp eq ptr %.pr102.pre, null
  br i1 %.not.i30, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr102.pre, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit unwind label %bb.o ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit.thread, %_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit, %bb.l
  %i.z = phi ptr [ %i.v, %bb.l ], [ %i.v, %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit ], [ %i.v, %_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit ], [ %i.u, %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit.thread ] ; 2 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr null, ptr %4, align 8, !tbaa !98
  %i.af = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #26
          to label %bb.m unwind label %bb.p       ; 22 uses

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !48, !align !97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 400
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !78 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.af, i8 0, i64 40, i1 false)
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !101
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i64 0, ptr %i.al, align 8, !tbaa !8
  store i8 0, ptr %i.ak, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 88 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !101
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store i64 0, ptr %i.ao, align 8, !tbaa !8
  store i8 0, ptr %i.an, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  store i32 0, ptr %i.ap, align 8, !tbaa !102
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 120 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !105
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  store ptr null, ptr %i.ar, align 8, !tbaa !106
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !107
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !108
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, i8 0, i64 48, i1 false)
  store i32 %i.ai, ptr %i.av, align 8, !tbaa !109
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.aw, i8 0, i64 40, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 248
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ax) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 296
  store i32 %i.ai, ptr %i.ay, align 8, !tbaa !111
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 300
  store i32 0, ptr %i.az, align 4, !tbaa !118
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 304
  store i32 0, ptr %i.ba, align 8, !tbaa !119
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, i8 0, i64 40, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 352
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.bc) #23
  %i.bd = load ptr, ptr %4, align 8, !tbaa !120   ; 2 uses
  store ptr %i.af, ptr %4, align 8, !tbaa !120
  %.not.i.i32 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i32, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.bd)
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.m, %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !79
  %.not145 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not145, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 176
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNSt6threadD2Ev.exit, %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !48, !align !97
  %i.bk = load i64, ptr %i.z, align 8, !tbaa !84
  %i.bl = load ptr, ptr %4, align 8, !tbaa !120
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !85
  invoke void @_ZN9benchmark8internal12_GLOBAL__N_111RunInThreadEPKNS0_17BenchmarkInstanceEliPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE(ptr noundef nonnull %i.bj, i64 noundef %i.bk, i32 noundef 0, ptr noundef %i.bl, ptr noundef %i.bn, ptr noundef null)
          to label %bb.w unwind label %bb.p

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.o
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !15
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ba

bb.p:                                             ; preds = %bb.w, %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.q:                                             ; preds = %.lr.ph, %_ZNSt6threadD2Ev.exit
  %.014139 = phi i64 [ 0, %.lr.ph ], [ %i.bw, %_ZNSt6threadD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bv = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !48, !align !97
  %i.bw = add nuw i64 %.014139, 1                 ; 3 uses
  %i.bx = load ptr, ptr %4, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %5, align 8, !tbaa !80
  %i.by = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %.noexc37 unwind label %bb.v   ; 9 uses

.noexc37:                                         ; preds = %bb.q
  %i.bz = trunc i64 %i.bw to i32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS4_13ThreadManagerEPNS4_23PerfCountersMeasurementEPNS3_15ProfilerManagerEES7_liS9_SB_DnEEEEEE, i64 16), ptr %i.by, align 8, !tbaa !121
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr null, ptr %i.ca, align 8, !tbaa !123
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cc = load ptr, ptr %i.bi, align 8, !tbaa !126
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !127
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %i.bx, ptr %i.cd, align 8, !tbaa !129
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i32 %i.bz, ptr %i.ce, align 8, !tbaa !131
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cg = load i64, ptr %i.z, align 8, !tbaa !93
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !133
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  store ptr %i.bv, ptr %i.ch, align 8, !tbaa !135
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  store ptr @_ZN9benchmark8internal12_GLOBAL__N_111RunInThreadEPKNS0_17BenchmarkInstanceEliPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE, ptr %i.ci, align 8, !tbaa !137
  store ptr %i.by, ptr %2, align 8, !tbaa !139
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %2, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc37
  %i.cj = load ptr, ptr %2, align 8, !tbaa !139   ; 3 uses
  %.not.i.i36 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i36, label %bb.t, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.r
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !121
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cj) #23, !inline_history !141
  br label %bb.t

bb.s:                                             ; preds = %.noexc37
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %2, align 8, !tbaa !139   ; 3 uses
  %.not.i11.i = icmp eq ptr %i.co, null
  br i1 %.not.i11.i, label %.body, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i12.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i12.i: ; preds = %bb.s
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !121
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.co) #23, !inline_history !141
  br label %.body

bb.t:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cs = load ptr, ptr %i.be, align 8, !tbaa !79 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.014139 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ct, align 8, !tbaa !93
  %.not.i38 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i38, label %_ZNSt6threadD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZSt9terminatev() #28
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.t
  %i.cu = load i64, ptr %5, align 8, !tbaa !93
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cv = load ptr, ptr %i.bf, align 8, !tbaa !83
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cs to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 3
  %i.da = icmp ult i64 %i.bw, %i.cz
  br i1 %i.da, label %bb.q, label %._crit_edge, !llvm.loop !142

bb.v:                                             ; preds = %bb.q
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i12.i, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.db, %bb.v ], [ %i.cn, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i12.i ], [ %i.cn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ay

bb.w:                                             ; preds = %._crit_edge
  %i.dc = load ptr, ptr %4, align 8, !tbaa !120
  invoke void @_ZN9benchmark8internal13ThreadManager17WaitForAllThreadsEv(ptr noundef nonnull align 8 dereferenceable(400) %i.dc)
          to label %bb.x unwind label %bb.p

bb.x:                                             ; preds = %bb.w
  %i.dd = load ptr, ptr %i.be, align 8, !tbaa !143 ; 2 uses
  %i.de = load ptr, ptr %i.bf, align 8, !tbaa !143 ; 2 uses
  %.not140 = icmp eq ptr %i.dd, %i.de
  br i1 %.not140, label %._crit_edge144, label %.lr.ph143

._crit_edge144:                                   ; preds = %bb.z, %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, i8 0, i64 40, i1 false)
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !101
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.dh, align 8, !tbaa !8
  store i8 0, ptr %i.dg, align 8, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !101
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.dk, align 8, !tbaa !8
  store i8 0, ptr %i.dj, align 8, !tbaa !15
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i32 0, ptr %i.dl, align 8, !tbaa !102
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i32 0, ptr %i.dm, align 8, !tbaa !105
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.dn, align 8, !tbaa !106
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.dm, ptr %i.do, align 8, !tbaa !107
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !108
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.dq, align 8, !tbaa !144
  %i.dr = load ptr, ptr %4, align 8, !tbaa !120
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 160 ; 3 uses
  %i.dt = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ds) #23 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i.i.i, label %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge144
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.dt) #25
          to label %.noexc41 unwind label %bb.ar

.noexc41:                                         ; preds = %bb.y
  unreachable

.lr.ph143:                                        ; preds = %bb.x, %bb.z
  %.sroa.086.0141 = phi ptr [ %i.du, %bb.z ], [ %i.dd, %bb.x ] ; 2 uses
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.086.0141)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %.lr.ph143
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.086.0141, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.du, %i.de
  br i1 %.not, label %._crit_edge144, label %.lr.ph143

bb.aa:                                            ; preds = %.lr.ph143
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit:       ; preds = %._crit_edge144
  %i.dw = load ptr, ptr %4, align 8, !tbaa !120   ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.dw, i64 40, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.df, ptr noundef nonnull align 8 dereferenceable(32) %i.dx)
          to label %.noexc42 unwind label %_ZN9benchmark9MutexLockD2Ev.exit79

.noexc42:                                         ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 72
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.dy)
          to label %.noexc43 unwind label %_ZN9benchmark9MutexLockD2Ev.exit79

.noexc43:                                         ; preds = %.noexc42
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 104
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !102
  store i32 %i.ea, ptr %i.dl, align 8, !tbaa !102
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 112
  %i.ed = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(48) %i.eb, ptr noundef nonnull align 8 dereferenceable(48) %i.ec)
          to label %_ZN9benchmark9MutexLockD2Ev.exit unwind label %_ZN9benchmark9MutexLockD2Ev.exit79 ; 0 uses

_ZN9benchmark9MutexLockD2Ev.exit:                 ; preds = %.noexc43
  %i.ee = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ds) #23 ; 0 uses
  %i.ef = load ptr, ptr %4, align 8, !tbaa !120   ; 2 uses
  store ptr null, ptr %4, align 8, !tbaa !120
  %.not.i.i45 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i45, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit46, label %bb.ab

bb.ab:                                            ; preds = %_ZN9benchmark9MutexLockD2Ev.exit
  call void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.ef)
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit46

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit46: ; preds = %_ZN9benchmark9MutexLockD2Ev.exit, %bb.ab
  %i.eg = load i32, ptr @_ZZN9benchmark8internal8LogLevelEvE9log_level, align 4, !tbaa !4
  %.not.i47 = icmp slt i32 %i.eg, 2
  br i1 %.not.i47, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit46
  %i.eh = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.ei = icmp eq i8 %i.eh, 0
  br i1 %i.ei, label %bb.ad, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit54, !prof !16

bb.ad:                                            ; preds = %bb.ac
  %i.ej = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #23
  %.not.i.i49 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i49, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit54, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !17
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i50

bb.af:                                            ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit46
  %i.ek = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.el = icmp eq i8 %i.ek, 0
  br i1 %i.el, label %bb.ag, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit54, !prof !16

bb.ag:                                            ; preds = %bb.af
  %i.em = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i1.i53 = icmp eq i32 %i.em, 0
  br i1 %.not.i1.i53, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit54, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !17
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i50

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i50: ; preds = %bb.ah, %bb.ae
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i51 = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.ah ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.ae ]
  %.0.ph.i52 = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.ah ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.ae ]
  call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i51) #23
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit54

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit54: ; preds = %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i50, %bb.ag, %bb.af, %bb.ad, %bb.ac
  %.0.i48 = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.ag ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.ac ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.ad ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.af ], [ %.0.ph.i52, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i50 ] ; 8 uses
  %i.en = load ptr, ptr %.0.i48, align 8, !tbaa !17 ; 2 uses
  %.not.i55 = icmp eq ptr %i.en, null
  br i1 %.not.i55, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit54
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull @.str.3, i64 noundef 7)
          to label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit57 unwind label %bb.as ; 0 uses

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit57: ; preds = %bb.ai
  %.pr104 = load ptr, ptr %.0.i48, align 8, !tbaa !17 ; 2 uses
  %.not.i58 = icmp eq ptr %.pr104, null
  br i1 %.not.i58, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit57
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr104, i32 noundef 2)
          to label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit60 unwind label %bb.at ; 0 uses

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit60: ; preds = %bb.aj
  %.pr106 = load ptr, ptr %.0.i48, align 8, !tbaa !17 ; 2 uses
  %.not.i61 = icmp eq ptr %.pr106, null
  br i1 %.not.i61, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit60
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr106, ptr noundef nonnull @.str.4, i64 noundef 3)
          to label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit63 unwind label %bb.at ; 0 uses

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit63: ; preds = %bb.ak
  %.pr109.pr = load ptr, ptr %.0.i48, align 8, !tbaa !17 ; 2 uses
  %.not.i64 = icmp eq ptr %.pr109.pr, null
  br i1 %.not.i64, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread, label %bb.al

bb.al:                                            ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit63
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr109.pr, ptr noundef nonnull @.str.12, i64 noundef 7)
          to label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit66 unwind label %bb.at ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit60, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit63, %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit54, %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit57
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit74.thread

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit66: ; preds = %bb.al
  %.pr111 = load ptr, ptr %.0.i48, align 8, !tbaa !17 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.not.i67 = icmp eq ptr %.pr111, null
  br i1 %.not.i67, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit74.thread, label %bb.am

bb.am:                                            ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit66
  %i.eu = load double, ptr %i.et, align 8, !tbaa !70
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr111, double noundef %i.eu)
          to label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit unwind label %bb.at ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit: ; preds = %bb.am
  %.pr115.pre = load ptr, ptr %.0.i48, align 8, !tbaa !17 ; 2 uses
  %.not.i69 = icmp eq ptr %.pr115.pre, null
  br i1 %.not.i69, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit74.thread, label %bb.an

bb.an:                                            ; preds = %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr115.pre, ptr noundef nonnull @.str.13, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit71 unwind label %bb.at ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit74.thread: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit66, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread
  %.ph119 = phi ptr [ %i.et, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit ], [ %i.et, %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit66 ], [ %i.es, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit.thread ]
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit77

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit71: ; preds = %bb.an
  %.pr117 = load ptr, ptr %.0.i48, align 8, !tbaa !17 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not.i72 = icmp eq ptr %.pr117, null
  br i1 %.not.i72, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit77, label %bb.ao

bb.ao:                                            ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit71
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !70
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr117, double noundef %i.ez)
          to label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit74 unwind label %bb.at ; 0 uses

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit74: ; preds = %bb.ao
  %.pr123.pre = load ptr, ptr %.0.i48, align 8, !tbaa !17 ; 2 uses
  %.not.i75 = icmp eq ptr %.pr123.pre, null
  br i1 %.not.i75, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit77, label %bb.ap

bb.ap:                                            ; preds = %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit74
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr123.pre, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit77 unwind label %bb.at ; 0 uses

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit77: ; preds = %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit74.thread, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit71, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit74, %bb.ap
  %i.fc = phi ptr [ %i.et, %bb.ap ], [ %i.et, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit74 ], [ %i.et, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit71 ], [ %.ph119, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit74.thread ]
  %i.fd = phi ptr [ %i.ey, %bb.ap ], [ %i.ey, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit74 ], [ %i.ey, %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit71 ], [ %i.ex, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit74.thread ]
  %i.fe = load i64, ptr %0, align 8, !tbaa !145
  %i.ff = load ptr, ptr %i.m, align 8, !tbaa !50, !nonnull !48, !align !97 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 400
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !78
  %i.fi = sext i32 %i.fh to i64
  %i.fj = sdiv i64 %i.fe, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !147
  %i.fl = load double, ptr %i.fc, align 8, !tbaa !148
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store double %i.fl, ptr %i.fm, align 8, !tbaa !149
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 294
  %i.fo = load i8, ptr %i.fn, align 2, !tbaa !150, !range !47, !noundef !48
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit77
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.sink.split

bb.ar:                                            ; preds = %bb.y
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZN9benchmark9MutexLockD2Ev.exit79:               ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit, %.noexc42, %.noexc43
  %i.fs = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN9benchmark8internal13ThreadManager17WaitForAllThreadsEv:bb.a

bb.c:                                             ; preds = %_ZNSt18condition_variable4waitIZN9benchmark8internal13ThreadManager17WaitForAllThreadsEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit
  %i.l = load ptr, ptr %1, align 8, !tbaa !180    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN9benchmark9MutexLockD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #23 ; 0 uses
  br label %_ZN9benchmark9MutexLockD2Ev.exit

_ZN9benchmark9MutexLockD2Ev.exit:                 ; preds = %_ZNSt18condition_variable4waitIZN9benchmark8internal13ThreadManager17WaitForAllThreadsEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.e:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i8, ptr %i.b, align 8, !tbaa !183, !range !47, !noundef !48
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %_ZN9benchmark9MutexLockD2Ev.exit3

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %1, align 8, !tbaa !180    ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i2, label %_ZN9benchmark9MutexLockD2Ev.exit3, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #23 ; 0 uses
  br label %_ZN9benchmark9MutexLockD2Ev.exit3

_ZN9benchmark9MutexLockD2Ev.exit3:                ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.n
}

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !15
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN9benchmark8internal13ThreadManager6ResultD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !15
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZN9benchmark8internal13ThreadManager6ResultD2Ev.exit

_ZN9benchmark8internal13ThreadManager6ResultD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i64 -9223372036854775808, 1000000000001) i64 @_ZNK9benchmark8internal15BenchmarkRunner21PredictNumItersNeededERKNS1_16IterationResultsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !72, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1
  %.in.v.i = select i1 %i.c, i64 88, i64 96
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.d = load double, ptr %.in.i, align 8, !tbaa !70 ; 2 uses
  %i.e = fmul double %i.d, 1.400000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = load double, ptr %i.f, align 8, !tbaa !70 ; 3 uses
  %i.h = fcmp olt double %i.g, 1.000000e-09
  %.sroa.speculated25 = select i1 %i.h, double 1.000000e-09, double %i.g
  %i.i = fdiv double %i.e, %.sroa.speculated25
  %i.j = fdiv double %i.g, %i.d
  %i.k = fcmp ogt double %i.j, 1.000000e-01
  %i.l = select i1 %i.k, double %i.i, double 1.000000e+01 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.n = load i64, ptr %i.m, align 8, !tbaa !147
  %i.o = sitofp i64 %i.n to double                ; 2 uses
  %i.p = fmul double %i.l, %i.o                   ; 2 uses
  %i.q = fadd double %i.o, 1.000000e+00           ; 2 uses
  %i.r = fcmp olt double %i.p, %i.q
  %.sroa.speculated = select i1 %i.r, double %i.q, double %i.p
  %i.s = tail call i64 @llround(double noundef %.sroa.speculated) #23, !tbaa !4
  %.sroa.speculated20 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 1000000000000) ; 2 uses
  %i.t = load i32, ptr @_ZZN9benchmark8internal8LogLevelEvE9log_level, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.t, 3
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load atomic i8, ptr @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.c, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log) #23
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @_ZSt4clog, ptr @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, align 8, !tbaa !17
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

bb.e:                                             ; preds = %bb.a
  %i.x = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #23
  %.not.i1.i = icmp eq i32 %i.z, 0
  br i1 %.not.i1.i, label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !17
  br label %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i

_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i: ; preds = %bb.g, %bb.d
  %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i = phi ptr [ @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  %.0.ph.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.g ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.d ]
  tail call void @__cxa_guard_release(ptr nonnull %_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log.sink.i) #23
  br label %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit

_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i
  %.0.i = phi ptr [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.f ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.b ], [ @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, %bb.c ], [ @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, %bb.e ], [ %.0.ph.i, %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit.sink.split.i ] ; 8 uses
  %i.aa = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i9 = icmp eq ptr %i.aa, null
  br i1 %.not.i9, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.3, i64 noundef 7) ; 0 uses
  %.pr = load ptr, ptr %.0.i, align 8, !tbaa !17  ; 2 uses
  %.not.i10 = icmp eq ptr %.pr, null
  br i1 %.not.i10, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.pr, i32 noundef 3) ; 0 uses
  %.pr29.a = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i11 = icmp eq ptr %.pr29.a, null
  br i1 %.not.i11, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr29.a, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  %.pr31.pr = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i12 = icmp eq ptr %.pr31.pr, null
  br i1 %.not.i12, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA13_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA13_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr31.pr, ptr noundef nonnull @.str.14, i64 noundef 12) ; 0 uses
  %.pr33 = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i13 = icmp eq ptr %.pr33, null
  br i1 %.not.i13, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA13_cEERNS0_7LogTypeES4_RKT_.exit
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr33, i64 noundef %.sroa.speculated20) ; 0 uses
  %.pr35.pr.pr = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i14 = icmp eq ptr %.pr35.pr.pr, null
  br i1 %.not.i14, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr35.pr.pr, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  %.pr37 = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i15 = icmp eq ptr %.pr37, null
  br i1 %.not.i15, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit

_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit: ; preds = %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.pr37, double noundef %i.l) ; 0 uses
  %.pr39.pr.pr = load ptr, ptr %.0.i, align 8, !tbaa !17 ; 2 uses
  %.not.i16 = icmp eq ptr %.pr39.pr.pr, null
  br i1 %.not.i16, label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %.pr39.pr.pr, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  br label %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit

_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit, %_ZN9benchmark8internallsIA4_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internal22GetLogInstanceForLevelEi.exit, %_ZN9benchmark8internallsIA8_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIlEERNS0_7LogTypeES3_RKT_.exit, %_ZN9benchmark8internallsIA13_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit, %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit, %bb.h
  ret i64 %.sroa.speculated20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZNK9benchmark8internal15BenchmarkRunner17GetMinTimeToApplyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !72, !range !47, !noundef !48
  %i.c = trunc nuw i8 %i.b to i1
  %.in.v = select i1 %i.c, i64 88, i64 96
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.d = load double, ptr %.in, align 8, !tbaa !70
  ret double %i.d
}

; Function Attrs: nounwind
declare i64 @llround(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !185
  %i.c = icmp ne i32 %i.b, 0
  %i.d = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !range !47
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp sgt i64 %i.g, 999999999999
  %or.cond8 = select i1 %or.cond, i1 true, i1 %i.h
  br i1 %or.cond8, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.j = load double, ptr %i.i, align 8, !tbaa !149
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !72, !range !47, !noundef !48
  %i.m = trunc nuw i8 %i.l to i1
  %.in.v.i = select i1 %i.m, i64 88, i64 96
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.n = load double, ptr %.in.i, align 8, !tbaa !70 ; 2 uses
  %i.o = fcmp ult double %i.j, %i.n
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !186
  %i.r = fmul double %i.n, 5.000000e+00
  %i.s = fcmp ult double %i.q, %i.r
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50, !nonnull !48, !align !97
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 294
  %i.w = load i8, ptr %i.v, align 2, !tbaa !150, !range !47, !noundef !48
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = xor i1 %i.x, true
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %i.z = phi i1 [ true, %bb.b ], [ %i.y, %bb.d ], [ true, %bb.a ], [ false, %bb.c ]
  ret i1 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunner12FinishWarmUpERKl(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) initializes((104, 105), (168, 176)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 1, ptr %i.a, align 8, !tbaa !72
  %i.b = load i64, ptr %1, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.b, ptr %i.c, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunner9RunWarmUpEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.benchmark::internal::BenchmarkRunner::IterationResults", align 8 ; 23 uses
  %2 = alloca %"struct.benchmark::internal::BenchmarkRunner::IterationResults", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %1, i8 0, i64 40, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.c, align 8, !tbaa !8
  store i8 0, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.f, align 8, !tbaa !8
  store i8 0, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !105
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.h, ptr %i.j, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %i.h, ptr %i.k, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 0, ptr %i.l, align 8, !tbaa !144
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !50, !nonnull !48, !align !97
  invoke void @_ZNK9benchmark8internal17BenchmarkInstance5SetupEv(ptr noundef nonnull align 8 dereferenceable(424) %i.aa)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN9benchmark8internal15BenchmarkRunner13DoNIterationsEv(ptr dead_on_unwind nonnull writable sret(%"struct.benchmark::internal::BenchmarkRunner::IterationResults") align 8 %2, ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ab = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN9benchmark8internal13ThreadManager6ResultaSEOS2_(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(176) %2) #23 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef %i.ac)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i: ; preds = %bb.d
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !14  ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.u
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
  %i.ah = load i64, ptr %i.u, align 8, !tbaa !15
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !14  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.w
  br i1 %i.ak, label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.al = load i64, ptr %i.w, align 8, !tbaa !15
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #27
  br label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit

_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !50, !nonnull !48, !align !97
  invoke void @_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv(ptr noundef nonnull align 8 dereferenceable(424) %i.an)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit
  %i.ao = load i32, ptr %i.g, align 8, !tbaa !185
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = load i8, ptr @_ZN9benchmark23FLAGS_benchmark_dry_runE, align 1, !range !47
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i = select i1 %i.ap, i1 true, i1 %i.ar
  %i.as = load i64, ptr %i.p, align 8
  %i.at = icmp sgt i64 %i.as, 999999999999
  %or.cond8.i = select i1 %or.cond.i, i1 true, i1 %i.at
  br i1 %or.cond8.i, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = load double, ptr %i.x, align 8, !tbaa !149
  %i.av = load i8, ptr %i.y, align 8, !tbaa !72, !range !47, !noundef !48
  %i.aw = trunc nuw i8 %i.av to i1
  %.in.v.i.i = select i1 %i.aw, i64 88, i64 96
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i.i
  %i.ax = load double, ptr %.in.i.i, align 8, !tbaa !70 ; 2 uses
  %i.ay = fcmp ult double %i.au, %i.ax
  br i1 %i.ay, label %bb.h, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.az = load double, ptr %i.z, align 8, !tbaa !186
  %i.ba = fmul double %i.ax, 5.000000e+00
  %i.bb = fcmp ult double %i.az, %i.ba
  br i1 %i.bb, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread14, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit

_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit: ; preds = %bb.h
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !50, !nonnull !48, !align !97
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 294
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !150, !range !47, !noundef !48
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread14, label %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread

bb.i:                                             ; preds = %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.n

bb.k:                                             ; preds = %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread14
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread14: ; preds = %bb.h, %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit
  %i.bj = invoke noundef i64 @_ZNK9benchmark8internal15BenchmarkRunner21PredictNumItersNeededERKNS1_16IterationResultsE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(176) %1)
          to label %bb.l unwind label %bb.k

bb.l:                                             ; preds = %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread14
  store i64 %i.bj, ptr %i.m, align 8, !tbaa !84
  br label %bb.b

_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread: ; preds = %bb.f, %bb.g, %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit
  store i8 1, ptr %i.y, align 8, !tbaa !72
  store i64 %i.n, ptr %i.m, align 8, !tbaa !84
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef %i.bl)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i7 unwind label %bb.m

bb.m:                                             ; preds = %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i7: ; preds = %_ZNK9benchmark8internal15BenchmarkRunner28ShouldReportIterationResultsERKNS1_16IterationResultsE.exit.thread
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.e
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i7
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !15
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i9: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i8
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.b
  br i1 %i.bt, label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i9
  %i.bu = load i64, ptr %i.b, align 8, !tbaa !15
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #27
  br label %_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit13

_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.k ], [ %i.bg, %bb.i ], [ %i.bh, %bb.j ]
  call void @_ZN9benchmark8internal15BenchmarkRunner16IterationResultsD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZNK9benchmark8internal17BenchmarkInstance5SetupEv(ptr noundef nonnull align 8 dereferenceable(424)) local_unnamed_addr #0

declare void @_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv(ptr noundef nonnull align 8 dereferenceable(424)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN9benchmark8internal15BenchmarkRunner16RunMemoryManagerEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, i64 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i64, ptr @_ZN9benchmark13MemoryManager14TombstoneValueE, align 8, !tbaa !93 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !187  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !93
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.b, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !93
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !187  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.c, align 8, !tbaa !187
  br label %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !89   ; 5 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775776
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #25
  unreachable

_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 5                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 288230376151711743)
  %i.r = select i1 %i.p, i64 288230376151711743, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 5
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #26 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx12, align 8, !tbaa !93
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 %i.b, ptr %.sroa.6.0..sroa_idx14, align 8, !tbaa !93
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !188, !alias.scope !189
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !193

_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #27
  br label %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !89
  store ptr %i.x, ptr %i.c, align 8, !tbaa !187
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.r
  store ptr %i.y, ptr %i.e, align 8, !tbaa !90
  br label %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.z = phi ptr [ %i.g, %bb.b ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.aa = load ptr, ptr @_ZN9benchmark8internal14memory_managerE, align 8, !tbaa !194 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !121
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr null, ptr %2, align 8, !tbaa !98
  %i.ae = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #26
          to label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit unwind label %bb.m ; 22 uses

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE9push_backEOS2_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.ae, i8 0, i64 40, i1 false)
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !101
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i64 0, ptr %i.ah, align 8, !tbaa !8
  store i8 0, ptr %i.ag, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 88 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !101
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  store i64 0, ptr %i.ak, align 8, !tbaa !8
  store i8 0, ptr %i.aj, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  store i32 0, ptr %i.al, align 8, !tbaa !102
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 120 ; 3 uses
  store i32 0, ptr %i.am, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store ptr null, ptr %i.an, align 8, !tbaa !106
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !107
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !108
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.ar, align 8, !tbaa !109
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.as, i8 0, i64 40, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 248
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.at) #23
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 296
  store i32 1, ptr %i.au, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 300
  store i32 0, ptr %i.av, align 4, !tbaa !118
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 304
  store i32 0, ptr %i.aw, align 8, !tbaa !119
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i8 0, i64 40, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 352
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ay) #23
  store ptr %i.ae, ptr %2, align 8, !tbaa !120
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  invoke void @_ZNK9benchmark8internal17BenchmarkInstance5SetupEv(ptr noundef nonnull align 8 dereferenceable(424) %.pre)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50, !nonnull !48, !align !97
  %i.bb = load ptr, ptr %2, align 8, !tbaa !120
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !85
  invoke void @_ZN9benchmark8internal12_GLOBAL__N_111RunInThreadEPKNS0_17BenchmarkInstanceEliPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE(ptr noundef nonnull %i.ba, i64 noundef %1, i32 noundef 0, ptr noundef %i.bb, ptr noundef %i.bd, ptr noundef null)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %2, align 8, !tbaa !120
  invoke void @_ZN9benchmark8internal13ThreadManager17WaitForAllThreadsEv(ptr noundef nonnull align 8 dereferenceable(400) %i.be)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !120
  %.not.i.i8 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i8, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bf)
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit9

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit9: ; preds = %bb.h, %bb.i
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !50, !nonnull !48, !align !97
  invoke void @_ZNK9benchmark8internal17BenchmarkInstance8TeardownEv(ptr noundef nonnull align 8 dereferenceable(424) %i.bg)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit9
  %i.bh = load ptr, ptr @_ZN9benchmark8internal14memory_managerE, align 8, !tbaa !194 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !121
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bl)
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %i.z

bb.m:                                             ; preds = %bb.j, %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit9, %bb.g, %bb.f, %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit, %_ZNSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE9push_backEOS2_.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %.not.i10 = icmp eq ptr %i.bn, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit11, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNKSt14default_deleteIN9benchmark8internal13ThreadManagerEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bn)
  br label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit11

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EED2Ev.exit11: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.bm
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark8internal15BenchmarkRunner18RunProfilerManagerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr null, ptr %1, align 8, !tbaa !98
  %i.a = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #26
          to label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit unwind label %bb.h ; 22 uses

_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.a, i8 0, i64 40, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !101
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.d, align 8, !tbaa !8
  store i8 0, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.g, align 8, !tbaa !8
  store i8 0, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 0, ptr %i.h, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !105
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr null, ptr %i.j, align 8, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %i.i, ptr %i.k, align 8, !tbaa !107
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.i, ptr %i.l, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i8 0, i64 48, i1 false)
  store i32 1, ptr %i.n, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(100) %i.o, i8 0, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.p) #23
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i32 1, ptr %i.q, align 8, !tbaa !111
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  store i32 0, ptr %i.r, align 4, !tbaa !118
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store i32 0, ptr %i.s, align 8, !tbaa !119
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i8 0, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.u) #23
  store ptr %i.a, ptr %1, align 8, !tbaa !120
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  invoke void @_ZNK9benchmark8internal17BenchmarkInstance5SetupEv(ptr noundef nonnull align 8 dereferenceable(424) %.pre)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50, !nonnull !48, !align !97
  %i.x = load ptr, ptr %1, align 8, !tbaa !120
  %i.y = load ptr, ptr @_ZN9benchmark8internal16profiler_managerE, align 8, !tbaa !196
  invoke void @_ZN9benchmark8internal12_GLOBAL__N_111RunInThreadEPKNS0_17BenchmarkInstanceEliPNS0_13ThreadManagerEPNS0_23PerfCountersMeasurementEPNS_15ProfilerManagerE(ptr noundef nonnull %i.w, i64 noundef 1, i32 noundef 0, ptr noundef %i.x, ptr noundef null, ptr noundef %i.y)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %1, align 8, !tbaa !120
  invoke void @_ZN9benchmark8internal13ThreadManager17WaitForAllThreadsEv(ptr noundef nonnull align 8 dereferenceable(400) %i.z)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %1, align 8, !tbaa !120   ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !120
  %.not.i.i5 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i5, label %_ZNSt10unique_ptrIN9benchmark8internal13ThreadManagerESt14default_deleteIS2_EE5resetEPS2_.exit6, label %bb.e

end_hunk_2
begin_hunk_3_@_ZN9benchmark13BenchmarkNameC2EOS0_:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !14
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !15
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.am, ptr %i.an, align 8, !tbaa !8
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !14
  store i64 0, ptr %i.al, align 8, !tbaa !8
  store i8 0, ptr %i.ae, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !101
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = load i64, ptr %i.au, align 8, !tbaa !8  ; 2 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !14
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !15
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !8
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !14
  store i64 0, ptr %i.az, align 8, !tbaa !8
  store i8 0, ptr %i.as, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !101
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !14 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !8  ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !14
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !15
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !8
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !14
  store i64 0, ptr %i.bn, align 8, !tbaa !8
  store i8 0, ptr %i.bg, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !101
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !14 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !8  ; 2 uses
  %i.by = icmp ult i64 %i.bx, 16
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.bz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !14
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !15
  store i64 %i.ca, ptr %i.bs, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !8
  store ptr %i.bu, ptr %i.br, align 8, !tbaa !14
  store i64 0, ptr %i.cb, align 8, !tbaa !8
  store i8 0, ptr %i.bu, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !101
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !14 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 5 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !8  ; 2 uses
  %i.cm = icmp ult i64 %i.cl, 16
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = add nuw nsw i64 %i.cl, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.ci, i64 %i.cn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18
  store ptr %i.ch, ptr %i.ce, align 8, !tbaa !14
  %i.co = load i64, ptr %i.ci, align 8, !tbaa !15
  store i64 %i.co, ptr %i.cg, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit20: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !8
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !14
  store i64 0, ptr %i.cp, align 8, !tbaa !8
  store i8 0, ptr %i.ci, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !101
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !14 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 5 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit20
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !8  ; 2 uses
  %i.da = icmp ult i64 %i.cz, 16
  tail call void @llvm.assume(i1 %i.da)
  %i.db = add nuw nsw i64 %i.cz, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cu, ptr noundef nonnull align 8 dereferenceable(1) %i.cw, i64 %i.db, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit20
  store ptr %i.cv, ptr %i.cs, align 8, !tbaa !14
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !15
  store i64 %i.dc, ptr %i.cu, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit22: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.de, ptr %i.df, align 8, !tbaa !8
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !14
  store i64 0, ptr %i.dd, align 8, !tbaa !8
  store i8 0, ptr %i.cw, align 8, !tbaa !15
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_benchmark_runner.cc() #19 section ".text.startup" {
bb.a:
  %i.a = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() ; 0 uses
  %i.b = tail call double @strtod(ptr noundef nonnull captures(none) @_ZN9benchmarkL18kDefaultMinTimeStrE, ptr noundef null) #23
  store double %i.b, ptr @_ZN9benchmark8internal12_GLOBAL__N_115kDefaultMinTimeE, align 8, !tbaa !70
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN9benchmark8internal12_GLOBAL__N_115kDefaultMinTimeE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 8}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !13, i64 8, !6, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!9, !11, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!"branch_weights", i32 1, i32 1048575}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSN9benchmark8internal7LogTypeE", !19, i64 0}
!19 = !{!"p1 _ZTSSo", !12, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSN9benchmark8internal17BenchmarkInstanceE", !12, i64 0}
!22 = !{!23, !31, i64 64}
!23 = !{!"_ZTSN9benchmark8internal15BenchmarkRunnerE", !24, i64 0, !21, i64 56, !31, i64 64, !32, i64 72, !34, i64 88, !34, i64 96, !30, i64 104, !5, i64 108, !30, i64 112, !5, i64 116, !35, i64 120, !40, i64 144, !13, i64 168, !45, i64 176}
!24 = !{!"_ZTSN9benchmark8internal10RunResultsE", !25, i64 0, !25, i64 24, !30, i64 48, !30, i64 49}
!25 = !{!"_ZTSSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_Vector_implE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSN9benchmark17BenchmarkReporter3RunE", !12, i64 0}
!30 = !{!"bool", !6, i64 0}
!31 = !{!"p1 _ZTSN9benchmark17BenchmarkReporter19PerFamilyRunReportsE", !12, i64 0}
!32 = !{!"_ZTSN9benchmark8internal13BenchTimeTypeE", !33, i64 0, !6, i64 8}
!33 = !{!"_ZTSN9benchmark8internal13BenchTimeTypeUt_E", !6, i64 0}
!34 = !{!"double", !6, i64 0}
!35 = !{!"_ZTSSt6vectorISt6threadSaIS0_EE", !36, i64 0}
!36 = !{!"_ZTSSt12_Vector_baseISt6threadSaIS0_EE", !37, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseISt6threadSaIS0_EE12_Vector_implE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseISt6threadSaIS0_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!39 = !{!"p1 _ZTSSt6thread", !12, i64 0}
!40 = !{!"_ZTSSt6vectorIN9benchmark13MemoryManager6ResultESaIS2_EE", !41, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIN9benchmark13MemoryManager6ResultESaIS2_EE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseIN9benchmark13MemoryManager6ResultESaIS2_EE12_Vector_implE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN9benchmark13MemoryManager6ResultESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"p1 _ZTSN9benchmark13MemoryManager6ResultE", !12, i64 0}
!45 = !{!"p1 _ZTSN9benchmark8internal23PerfCountersMeasurementE", !12, i64 0}
!46 = !{!30, !30, i64 0}
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !{!23, !34, i64 88}
!50 = !{!23, !21, i64 56}
!51 = !{!52, !34, i64 376}
!52 = !{!"_ZTSN9benchmark8internal17BenchmarkInstanceE", !53, i64 0, !54, i64 256, !5, i64 264, !5, i64 268, !55, i64 272, !56, i64 280, !57, i64 288, !30, i64 292, !30, i64 293, !30, i64 294, !58, i64 296, !12, i64 304, !59, i64 312, !68, i64 360, !5, i64 368, !34, i64 376, !34, i64 384, !13, i64 392, !5, i64 400, !12, i64 408, !12, i64 416}
!53 = !{!"_ZTSN9benchmark13BenchmarkNameE", !9, i64 0, !9, i64 32, !9, i64 64, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !9, i64 224}
!54 = !{!"p1 _ZTSN9benchmark8internal9BenchmarkE", !12, i64 0}
!55 = !{!"_ZTSN9benchmark8internal21AggregationReportModeE", !6, i64 0}
!56 = !{!"p1 _ZTSSt6vectorIlSaIlEE", !12, i64 0}
!57 = !{!"_ZTSN9benchmark8TimeUnitE", !6, i64 0}
!58 = !{!"_ZTSN9benchmark4BigOE", !6, i64 0}
!59 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !60, i64 0}
!60 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !61, i64 0}
!61 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !62, i64 0, !64, i64 8}
!62 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !63, i64 0}
!63 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!64 = !{!"_ZTSSt15_Rb_tree_header", !65, i64 0, !13, i64 32}
!65 = !{!"_ZTSSt18_Rb_tree_node_base", !66, i64 0, !67, i64 8, !67, i64 16, !67, i64 24}
!66 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!67 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!68 = !{!"p1 _ZTSSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE", !12, i64 0}
!69 = !{!52, !34, i64 384}
!70 = !{!34, !34, i64 0}
!71 = !{!23, !34, i64 96}
!72 = !{!23, !30, i64 104}
!73 = !{!52, !5, i64 368}
!74 = !{!23, !5, i64 108}
!75 = !{!52, !13, i64 392}
!76 = !{!23, !30, i64 112}
!77 = !{!23, !5, i64 116}
!78 = !{!52, !5, i64 400}
!79 = !{!38, !39, i64 0}
!80 = !{!81, !13, i64 0}
!81 = !{!"_ZTSNSt6thread2idE", !13, i64 0}
!82 = !{!38, !39, i64 16}
!83 = !{!38, !39, i64 8}
!84 = !{!23, !13, i64 168}
!85 = !{!23, !45, i64 176}
!86 = !{!23, !30, i64 48}
!87 = !{!23, !30, i64 49}
!88 = !{!52, !55, i64 272}
!89 = !{!43, !44, i64 0}
!90 = !{!43, !44, i64 16}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!13, !13, i64 0}
!94 = !{!28, !29, i64 0}
!95 = !{!28, !29, i64 8}
!96 = !{!28, !29, i64 16}
!97 = !{i64 8}
!98 = !{!99, !100, i64 0}
!99 = !{!"_ZTSSt10_Head_baseILm0EPN9benchmark8internal13ThreadManagerELb0EE", !100, i64 0}
!100 = !{!"p1 _ZTSN9benchmark8internal13ThreadManagerE", !12, i64 0}
!101 = !{!10, !11, i64 0}
!102 = !{!103, !104, i64 104}
!103 = !{!"_ZTSN9benchmark8internal13ThreadManager6ResultE", !13, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !13, i64 32, !9, i64 40, !9, i64 72, !104, i64 104, !59, i64 112}
!104 = !{!"_ZTSN9benchmark8internal7SkippedE", !6, i64 0}
!105 = !{!64, !66, i64 0}
!106 = !{!64, !67, i64 8}
!107 = !{!64, !67, i64 16}
!108 = !{!64, !67, i64 24}
!109 = !{!110, !5, i64 0}
!110 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!111 = !{!112, !5, i64 88}
!112 = !{!"_ZTSN9benchmark7BarrierE", !113, i64 0, !116, i64 40, !5, i64 88, !5, i64 92, !5, i64 96}
!113 = !{!"_ZTSN9benchmark5MutexE", !114, i64 0}
!114 = !{!"_ZTSSt5mutex", !115, i64 0}
!115 = !{!"_ZTSSt12__mutex_base", !6, i64 0}
!116 = !{!"_ZTSSt18condition_variable", !117, i64 0}
!117 = !{!"_ZTSSt9__condvar", !6, i64 0}
!118 = !{!112, !5, i64 92}
!119 = !{!112, !5, i64 96}
!120 = !{!100, !100, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"vtable pointer", !7, i64 0}
!123 = !{!124, !125, i64 0}
!124 = !{!"_ZTSSt10_Head_baseILm6EDnLb0EE", !125, i64 0}
!125 = !{!"std::nullptr_t", !6, i64 0}
!126 = !{!45, !45, i64 0}
!127 = !{!128, !45, i64 0}
!128 = !{!"_ZTSSt10_Head_baseILm5EPN9benchmark8internal23PerfCountersMeasurementELb0EE", !45, i64 0}
!129 = !{!130, !100, i64 0}
!130 = !{!"_ZTSSt10_Head_baseILm4EPN9benchmark8internal13ThreadManagerELb0EE", !100, i64 0}
!131 = !{!132, !5, i64 0}
!132 = !{!"_ZTSSt10_Head_baseILm3EiLb0EE", !5, i64 0}
!133 = !{!134, !13, i64 0}
!134 = !{!"_ZTSSt10_Head_baseILm2ElLb0EE", !13, i64 0}
!135 = !{!136, !21, i64 0}
!136 = !{!"_ZTSSt10_Head_baseILm1EPKN9benchmark8internal17BenchmarkInstanceELb0EE", !21, i64 0}
!137 = !{!138, !12, i64 0}
!138 = !{!"_ZTSSt10_Head_baseILm0EPFvPKN9benchmark8internal17BenchmarkInstanceEliPNS1_13ThreadManagerEPNS1_23PerfCountersMeasurementEPNS0_15ProfilerManagerEELb0EE", !12, i64 0}
!139 = !{!140, !140, i64 0}
!140 = !{!"p1 _ZTSNSt6thread6_StateE", !12, i64 0}
!141 = distinct !{null, null, null}
!142 = distinct !{!142, !92}
!143 = !{!39, !39, i64 0}
!144 = !{!64, !13, i64 32}
!145 = !{!146, !13, i64 0}
!146 = !{!"_ZTSN9benchmark8internal15BenchmarkRunner16IterationResultsE", !103, i64 0, !13, i64 160, !34, i64 168}
!147 = !{!146, !13, i64 160}
!148 = !{!146, !34, i64 16}
!149 = !{!146, !34, i64 168}
!150 = !{!52, !30, i64 294}
!151 = !{!52, !30, i64 293}
!152 = !{!52, !30, i64 292}
!153 = !{!154, !30, i64 0}
!154 = !{!"_ZTSN9benchmark8internal11ThreadTimerE", !30, i64 0, !30, i64 1, !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40}
!155 = !{!154, !30, i64 1}
!156 = !{!157, !30, i64 24}
!157 = !{!"_ZTSN9benchmark5StateE", !13, i64 0, !13, i64 8, !13, i64 16, !30, i64 24, !30, i64 25, !104, i64 28, !158, i64 32, !13, i64 56, !59, i64 64, !9, i64 112, !5, i64 144, !5, i64 148, !163, i64 152, !100, i64 160, !45, i64 168, !164, i64 176}
!158 = !{!"_ZTSSt6vectorIlSaIlEE", !159, i64 0}
!159 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !160, i64 0}
!160 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !161, i64 0}
!161 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !162, i64 0, !162, i64 8, !162, i64 16}
!162 = !{!"p1 long", !12, i64 0}
!163 = !{!"p1 _ZTSN9benchmark8internal11ThreadTimerE", !12, i64 0}
!164 = !{!"p1 _ZTSN9benchmark15ProfilerManagerE", !12, i64 0}
end_hunk_3
