inline.NumInlined: 926
inline.NumDeleted: 399
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.std::piecewise_construct_t" = type { i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::set" = type { %"class.std::_Rb_tree.44" }
%"class.std::_Rb_tree.44" = type { %"struct.std::_Rb_tree<long, long, std::_Identity<long>, std::less<long>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<long, long, std::_Identity<long>, std::less<long>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl" }
%"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%struct.timespec = type { i64, i64 }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.62" = type { i8 }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }
%"class.std::complex" = type { { double, double } }
%"class.std::vector.18" = type { %"struct.std::_Vector_base.19" }
%"struct.std::_Vector_base.19" = type { %"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNSt3setIlSt4lessIlESaIlEED2Ev = comdat any

$_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZL27benchmark_uniq_2_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [13 x i8] c"BM_Factorial\00", align 1
@_ZL27benchmark_uniq_3_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL27benchmark_uniq_4_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"BM_CalculatePiRange\00", align 1
@_ZL27benchmark_uniq_5_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"BM_CalculatePi\00", align 1
@_ZL27benchmark_uniq_6_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL27benchmark_uniq_7_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL27benchmark_uniq_8_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"BM_SetInsert\00", align 1
@_ZL29benchmark_uniq_9BM_Sequential = internal unnamed_addr global ptr null, align 8
@.str.12 = private unnamed_addr constant [36 x i8] c"BM_Sequential<std::vector<int>,int>\00", align 1
@_ZL30benchmark_uniq_10BM_Sequential = internal unnamed_addr global ptr null, align 8
@.str.14 = private unnamed_addr constant [30 x i8] c"BM_Sequential<std::list<int>>\00", align 1
@_ZL30benchmark_uniq_11BM_Sequential = internal unnamed_addr global ptr null, align 8
@.str.16 = private unnamed_addr constant [37 x i8] c"BM_Sequential<std::vector<int>, int>\00", align 1
@_ZL28benchmark_uniq_12_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.18 = private unnamed_addr constant [17 x i8] c"BM_StringCompare\00", align 1
@_ZL28benchmark_uniq_13_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.20 = private unnamed_addr constant [17 x i8] c"BM_SetupTeardown\00", align 1
@_ZL28benchmark_uniq_14_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.22 = private unnamed_addr constant [12 x i8] c"BM_LongTest\00", align 1
@_ZL28benchmark_uniq_15_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.24 = private unnamed_addr constant [18 x i8] c"BM_ParallelMemset\00", align 1
@_ZL28benchmark_uniq_16_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.26 = private unnamed_addr constant [16 x i8] c"BM_ManualTiming\00", align 1
@_ZL28benchmark_uniq_17_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_18_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.29 = private unnamed_addr constant [22 x i8] c"BM_with_args/int_test\00", align 1
@_ZL28benchmark_uniq_19_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.31 = private unnamed_addr constant [34 x i8] c"BM_with_args/string_and_pair_test\00", align 1
@_ZL28benchmark_uniq_20_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.33 = private unnamed_addr constant [32 x i8] c"BM_non_template_args/basic_test\00", align 1
@_ZL37benchmark_uniq_21BM_template2_capture = internal unnamed_addr global ptr null, align 8
@.str.35 = private unnamed_addr constant [37 x i8] c"BM_template2_capture<void,char*>/foo\00", align 1
@_ZL28benchmark_uniq_22_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.37 = private unnamed_addr constant [40 x i8] c"(BM_template2_capture<void, char*>)/foo\00", align 1
@_ZL28benchmark_uniq_23_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.39 = private unnamed_addr constant [31 x i8] c"BM_template1_capture<void>/foo\00", align 1
@_ZL28benchmark_uniq_24_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_25_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.42 = private unnamed_addr constant [21 x i8] c"BM_DenseThreadRanges\00", align 1
@_ZL28benchmark_uniq_26_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_27_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_28_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.46 = private unnamed_addr constant [17 x i8] c"BM_BenchmarkName\00", align 1
@_ZL28benchmark_uniq_29_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.48 = private unnamed_addr constant [25 x i8] c"BM_templated_test_double\00", align 1
@__const.main.arg0_default = private unnamed_addr constant [10 x i8] c"benchmark\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"cached_ > 0\00", align 1
@.str.50 = private unnamed_addr constant [109 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h\00", align 1
@__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv = private unnamed_addr constant [61 x i8] c"StateIterator &benchmark::State::StateIterator::operator++()\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.53 = private unnamed_addr constant [20 x i8] c"range_.size() > pos\00", align 1
@__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm = private unnamed_addr constant [51 x i8] c"int64_t benchmark::State::range(std::size_t) const\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"items_per_second\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"bytes_per_second\00", align 1
@_ZN12_GLOBAL__N_111test_vectorE = internal unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_114test_vector_muE = internal global { %union.pthread_mutex_t } zeroinitializer, align 8
@.str.57 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.59 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.64 = private unnamed_addr constant [102 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/benchmark_test.cc\00", align 1
@.str.66 = private unnamed_addr constant [60 x i8] c"st.threads() == 1 || st.threads() == 2 || st.threads() == 3\00", align 1
@__PRETTY_FUNCTION__._ZL20BM_DenseThreadRangesRN9benchmark5StateE = private unnamed_addr constant [46 x i8] c"void BM_DenseThreadRanges(benchmark::State &)\00", align 1
@.str.67 = private unnamed_addr constant [60 x i8] c"st.threads() == 1 || st.threads() == 3 || st.threads() == 4\00", align 1
@.str.68 = private unnamed_addr constant [83 x i8] c"st.threads() == 5 || st.threads() == 8 || st.threads() == 11 || st.threads() == 14\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"false && \22Invalid test case number\22\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"\22BM_BenchmarkName\22 == state.name()\00", align 1
@__PRETTY_FUNCTION__._ZL16BM_BenchmarkNameRN9benchmark5StateE = private unnamed_addr constant [42 x i8] c"void BM_BenchmarkName(benchmark::State &)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_benchmark_test.cc, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal void @_ZL12BM_FactorialRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 4 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not2533 = icmp eq i64 %i.d, 0
  %.not.i.not25 = select i1 %.not, i1 true, i1 %.not.i.not2533
  br i1 %.not.i.not25, label %bb.a, label %.lr.ph.preheader, !prof !35

.lr.ph.preheader:                                 ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %smin = tail call i64 @llvm.smin.i64(i64 %i.d, i64 0)
  %i.e = sub i64 %i.d, %smin
  %i.f = add i64 %i.d, -1
  %.not34.not = icmp ugt i64 %i.e, %i.f
  br i1 %.not34.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph.preheader
  %i.g = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_19FactorialEi(i32 noundef 8)
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %.08.lcssa = phi i32 [ %i.g, %._crit_edge ], [ 0, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ]
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %.08.lcssa)
          to label %bb.c unwind label %bb.h       ; 0 uses

bb.b:                                             ; preds = %.lr.ph.preheader
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !42, !alias.scope !43
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !44, !alias.scope !43
  store i8 0, ptr %i.j, align 8, !tbaa !45, !alias.scope !43
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !46, !noalias !43 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !noalias !43 ; 2 uses
  %5 = icmp ugt ptr %4, %i.m
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.m     ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50, !noalias !43 ; 2 uses
  %i.p = ptrtoint ptr %.08.i.i.i to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.o, i64 noundef %i.r)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !51, !alias.scope !43 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.j
  br i1 %i.v, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  invoke void @_ZN9benchmark5State8SetLabelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 64 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.x = load ptr, ptr %2, align 8, !tbaa !51     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.z = load i64, ptr %i.j, align 8, !tbaa !45
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.ab = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !52
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !52
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ah, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !51 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !45
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ah, align 8, !tbaa !52
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #22
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ap, ptr %1, align 8, !tbaa !52
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ar = getelementptr i8, ptr %i.ap, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %1, i64 %i.as
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !52
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.av) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.h:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.j
  br i1 %i.az, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.e ], [ %i.ay, %bb.i ]
  %.pn.ph = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.ax, %bb.i ]
  %i.ba = load i64, ptr %i.j, align 8, !tbaa !45
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bb) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.ax, %bb.i ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.j

bb.j:                                             ; preds = %.body, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.aw, %bb.h ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN9benchmark8internal9Benchmark11UseRealTimeEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZL19BM_CalculatePiRangeRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 5 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not2830 = icmp eq i64 %i.d, 0
  %.not.i.not28 = select i1 %.not, i1 true, i1 %.not.i.not2830
  br i1 %.not.i.not28, label %._crit_edge, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.h = load ptr, ptr %i.e, align 32, !tbaa !57  ; 2 uses
  %.not25 = icmp eq ptr %i.g, %i.h
  br i1 %.not25, label %bb.a, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.i = load i64, ptr %i.h, align 8, !tbaa !58   ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  %smin33 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 0)
  %i.l = sub i64 %i.d, %smin33
  %i.m = add i64 %i.d, -1
  %.not45.not = icmp ugt i64 %i.l, %i.m           ; 2 uses
  br i1 %i.k, label %_ZNK9benchmark5State5rangeEm.exit.us.preheader, label %_ZNK9benchmark5State5rangeEm.exit.preheader

_ZNK9benchmark5State5rangeEm.exit.preheader:      ; preds = %.lr.ph.split
  br i1 %.not45.not, label %._crit_edge, label %.split.us

_ZNK9benchmark5State5rangeEm.exit.us.preheader:   ; preds = %.lr.ph.split
  br i1 %.not45.not, label %_ZNK9benchmark5State5rangeEm.exit.us.us.preheader, label %.split.us

_ZNK9benchmark5State5rangeEm.exit.us.us.preheader: ; preds = %_ZNK9benchmark5State5rangeEm.exit.us.preheader
  %xtraiter = and i32 %i.j, 1
  %i.n = icmp eq i32 %i.j, 1
  %unroll_iter = and i32 %i.j, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod49 = trunc i64 %i.i to i1
  br label %_ZNK9benchmark5State5rangeEm.exit.us.us

_ZNK9benchmark5State5rangeEm.exit.us.us:          ; preds = %_ZNK9benchmark5State5rangeEm.exit.us.us.preheader, %._crit_edge.loopexit.i.us.us
  %.sroa.020.029.us.us = phi i64 [ %i.ah, %._crit_edge.loopexit.i.us.us ], [ %i.d, %_ZNK9benchmark5State5rangeEm.exit.us.us.preheader ]
  br i1 %i.n, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %_ZNK9benchmark5State5rangeEm.exit.us.us, %.lr.ph.i.us.us
  %.010.i.us.us = phi double [ %i.x, %.lr.ph.i.us.us ], [ 0.000000e+00, %_ZNK9benchmark5State5rangeEm.exit.us.us ]
  %.089.i.us.us = phi i32 [ %i.y, %.lr.ph.i.us.us ], [ 0, %_ZNK9benchmark5State5rangeEm.exit.us.us ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.i.us.us ], [ 0, %_ZNK9benchmark5State5rangeEm.exit.us.us ]
  %i.o = shl nuw i32 %.089.i.us.us, 1
  %i.p = add nsw i32 %i.o, -1
  %i.q = sitofp i32 %i.p to double
  %i.r = fdiv double -1.000000e+00, %i.q
  %i.s = fadd double %.010.i.us.us, %i.r
  %i.t = shl nuw i32 %.089.i.us.us, 1
  %i.u = or disjoint i32 %i.t, 1
  %i.v = sitofp i32 %i.u to double
  %i.w = fdiv double 1.000000e+00, %i.v
  %i.x = fadd double %i.s, %i.w                   ; 3 uses
  %i.y = add nuw nsw i32 %.089.i.us.us, 2         ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.us.us.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !59

._crit_edge.loopexit.i.us.us.unr-lcssa:           ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.us.us, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %._crit_edge.loopexit.i.us.us.unr-lcssa, %_ZNK9benchmark5State5rangeEm.exit.us.us
  %.010.i.us.us.epil.init = phi double [ 0.000000e+00, %_ZNK9benchmark5State5rangeEm.exit.us.us ], [ %i.x, %._crit_edge.loopexit.i.us.us.unr-lcssa ]
  %.089.i.us.us.epil.init = phi i32 [ 0, %_ZNK9benchmark5State5rangeEm.exit.us.us ], [ %i.y, %._crit_edge.loopexit.i.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.z = shl nuw i32 %.089.i.us.us.epil.init, 1   ; 2 uses
  %i.aa = and i32 %i.z, 2
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = add nsw i32 %i.z, -1
  %i.ae = sitofp i32 %i.ad to double
  %i.af = fdiv double %i.ac, %i.ae
  %i.ag = fadd double %.010.i.us.us.epil.init, %i.af
  br label %._crit_edge.loopexit.i.us.us

._crit_edge.loopexit.i.us.us:                     ; preds = %._crit_edge.loopexit.i.us.us.unr-lcssa, %.lr.ph.i.us.us.epil.preheader
  %.lcssa = phi double [ %i.x, %._crit_edge.loopexit.i.us.us.unr-lcssa ], [ %i.ag, %.lr.ph.i.us.us.epil.preheader ]
  %i.ah = add nsw i64 %.sroa.020.029.us.us, -1    ; 2 uses
  %.not.i.not.us.us = icmp eq i64 %i.ah, 0
  br i1 %.not.i.not.us.us, label %._crit_edge.split.us.split.us, label %_ZNK9benchmark5State5rangeEm.exit.us.us, !prof !61

._crit_edge.split.us.split.us:                    ; preds = %._crit_edge.loopexit.i.us.us
  %i.ai = fadd double %.lcssa, -1.000000e+00
  %i.aj = fmul double %i.ai, 4.000000e+00
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK9benchmark5State5rangeEm.exit.preheader, %._crit_edge.split.us.split.us, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %.09.lcssa = phi double [ 0.000000e+00, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ], [ %i.aj, %._crit_edge.split.us.split.us ], [ -4.000000e+00, %_ZNK9benchmark5State5rangeEm.exit.preheader ]
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, double noundef %.09.lcssa)
          to label %_ZNSolsEd.exit unwind label %bb.f ; 0 uses

bb.a:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #23
  unreachable

.split.us:                                        ; preds = %_ZNK9benchmark5State5rangeEm.exit.us.preheader, %_ZNK9benchmark5State5rangeEm.exit.preheader
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable

_ZNSolsEd.exit:                                   ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !42, !alias.scope !68
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !44, !alias.scope !68
  store i8 0, ptr %i.am, align 8, !tbaa !45, !alias.scope !68
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %4 = load ptr, ptr %3, align 8, !tbaa !46, !noalias !68 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !68 ; 2 uses
  %5 = icmp ugt ptr %4, %i.ap
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.ap    ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50, !noalias !68 ; 2 uses
  %i.as = ptrtoint ptr %.08.i.i.i to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.ar, i64 noundef %i.au)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !51, !alias.scope !68 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.am
  br i1 %i.ay, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %_ZNSolsEd.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.az)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  invoke void @_ZN9benchmark5State8SetLabelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 64 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.am
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.bc = load i64, ptr %i.am, align 8, !tbaa !45
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %1, align 8, !tbaa !52
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %1, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !52
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bj, ptr %i.ak, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bk, align 8, !tbaa !52
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !51 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !45
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bk, align 8, !tbaa !52
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.br) #22
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bs, ptr %1, align 8, !tbaa !52
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %1, i64 %i.bv
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !52
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !54
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.by) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.f:                                             ; preds = %._crit_edge
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.am
  br i1 %i.cc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.g, %bb.c
  %.sink = phi ptr [ %i.ax, %bb.c ], [ %i.cb, %bb.g ]
  %.pn.ph = phi { ptr, i32 } [ %i.aw, %bb.c ], [ %i.ca, %bb.g ]
  %i.cd = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ce) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.c ], [ %i.ca, %bb.g ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.h

bb.h:                                             ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bz, %bb.f ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %.pn.pn
}

declare noundef ptr @_ZN9benchmark8internal9Benchmark5RangeEll(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZL14BM_CalculatePiRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %.not = icmp ne i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1316 = icmp eq i64 %i.e, 0
  %.not.i.not13 = select i1 %.not, i1 true, i1 %.not.i.not1316
  br i1 %.not.i.not13, label %._crit_edge, label %.lr.ph, !prof !35

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_111CalculatePiEi.exit
  %i.f = add nsw i64 %.sroa.08.014, -1            ; 2 uses
  %.not.i.not = icmp eq i64 %i.f, 0
  br i1 %.not.i.not, label %._crit_edge, label %.lr.ph, !prof !61

._crit_edge:                                      ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %bb.a
  %.sroa.08.014 = phi i64 [ %i.f, %bb.a ], [ %i.e, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph
  %.010.i = phi double [ 0.000000e+00, %.lr.ph ], [ %i.p, %.lr.ph.i ]
  %.089.i = phi i32 [ 0, %.lr.ph ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.g = shl nuw i32 %.089.i, 1
  %i.h = add nsw i32 %i.g, -1
  %i.i = sitofp i32 %i.h to double
  %i.j = fdiv double -1.000000e+00, %i.i
  %i.k = fadd double %.010.i, %i.j
  %i.l = shl nuw i32 %.089.i, 1
  %i.m = or disjoint i32 %i.l, 1
  %i.n = sitofp i32 %i.m to double
  %i.o = fdiv double 1.000000e+00, %i.n
  %i.p = fadd double %i.k, %i.o                   ; 2 uses
  %i.q = add nuw nsw i32 %.089.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.q, 1024
  br i1 %exitcond.not.i.1, label %_ZN12_GLOBAL__N_111CalculatePiEi.exit, label %.lr.ph.i, !llvm.loop !59

_ZN12_GLOBAL__N_111CalculatePiEi.exit:            ; preds = %.lr.ph.i
  %i.r = fadd double %i.p, -1.000000e+00
  %i.s = fmul double %i.r, 4.000000e+00           ; 2 uses
  store double %i.s, ptr %i.a, align 8, !tbaa !69
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.a, double %i.s) #22, !srcloc !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.t = icmp sgt i64 %.sroa.08.014, 0
  br i1 %i.t, label %bb.a, label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_111CalculatePiEi.exit
  call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #23
  unreachable
}

declare noundef ptr @_ZN9benchmark8internal9Benchmark7ThreadsEi(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark11ThreadRangeEii(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark12ThreadPerCpuEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZL12BM_SetInsertRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::set", align 8          ; 11 uses
  %4 = alloca %"class.std::set", align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store i32 0, ptr %i.c, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr null, ptr %i.d, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.c, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  store i64 0, ptr %i.g, align 8, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
end_hunk_0
