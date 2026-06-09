inline.NumInlined: 660
inline.NumDeleted: 124
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::pair.38" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%struct.TestCase = type { %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::basic_string", %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::vector.32" = type { %"struct.std::_Vector_base.33" }
%"struct.std::_Vector_base.33" = type { %"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<long, long>, std::allocator<std::pair<long, long>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev = comdat any

$_ZN8TestCaseD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

@_ZL27benchmark_uniq_2_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [17 x i8] c"BM_Complexity_O1\00", align 1
@_ZL27benchmark_uniq_3_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL27benchmark_uniq_4_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"BM_Complexity_O1/manual_time\00", align 1
@one_test_name = hidden local_unnamed_addr global ptr @.str.4, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"BM_Complexity_O1/manual_time_BigO\00", align 1
@big_o_1_test_name = hidden local_unnamed_addr global ptr @.str.5, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"BM_Complexity_O1/manual_time_RMS\00", align 1
@rms_o_1_test_name = hidden local_unnamed_addr global ptr @.str.6, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"\\([0-9]+\\)\00", align 1
@enum_auto_big_o_1 = hidden local_unnamed_addr global ptr @.str.7, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"f\\(N\\)\00", align 1
@lambda_big_o_1 = hidden local_unnamed_addr global ptr @.str.8, align 8
@dummy105 = hidden local_unnamed_addr global i32 0, align 4
@dummy109 = hidden local_unnamed_addr global i32 0, align 4
@dummy113 = hidden local_unnamed_addr global i32 0, align 4
@_ZL27benchmark_uniq_5_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"BM_Complexity_O_N\00", align 1
@_ZL27benchmark_uniq_6_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL27benchmark_uniq_7_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.16 = private unnamed_addr constant [30 x i8] c"BM_Complexity_O_N/manual_time\00", align 1
@n_test_name = hidden local_unnamed_addr global ptr @.str.16, align 8
@.str.17 = private unnamed_addr constant [35 x i8] c"BM_Complexity_O_N/manual_time_BigO\00", align 1
@big_o_n_test_name = hidden local_unnamed_addr global ptr @.str.17, align 8
@.str.18 = private unnamed_addr constant [34 x i8] c"BM_Complexity_O_N/manual_time_RMS\00", align 1
@rms_o_n_test_name = hidden local_unnamed_addr global ptr @.str.18, align 8
@.str.19 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@enum_auto_big_o_n = hidden local_unnamed_addr global ptr @.str.19, align 8
@lambda_big_o_n = hidden local_unnamed_addr global ptr @.str.8, align 8
@dummy162 = hidden local_unnamed_addr global i32 0, align 4
@dummy166 = hidden local_unnamed_addr global i32 0, align 4
@dummy170 = hidden local_unnamed_addr global i32 0, align 4
@_ZL27benchmark_uniq_8_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.24 = private unnamed_addr constant [24 x i8] c"BM_Complexity_O_N_log_N\00", align 1
@_ZL27benchmark_uniq_9_benchmark_ = internal unnamed_addr global ptr null, align 8
@_ZL28benchmark_uniq_10_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.27 = private unnamed_addr constant [36 x i8] c"BM_Complexity_O_N_log_N/manual_time\00", align 1
@n_lg_n_test_name = hidden local_unnamed_addr global ptr @.str.27, align 8
@.str.28 = private unnamed_addr constant [41 x i8] c"BM_Complexity_O_N_log_N/manual_time_BigO\00", align 1
@big_o_n_lg_n_test_name = hidden local_unnamed_addr global ptr @.str.28, align 8
@.str.29 = private unnamed_addr constant [40 x i8] c"BM_Complexity_O_N_log_N/manual_time_RMS\00", align 1
@rms_o_n_lg_n_test_name = hidden local_unnamed_addr global ptr @.str.29, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"NlgN\00", align 1
@enum_auto_big_o_n_lg_n = hidden local_unnamed_addr global ptr @.str.30, align 8
@lambda_big_o_n_lg_n = hidden local_unnamed_addr global ptr @.str.8, align 8
@dummy221 = hidden local_unnamed_addr global i32 0, align 4
@dummy226 = hidden local_unnamed_addr global i32 0, align 4
@dummy231 = hidden local_unnamed_addr global i32 0, align 4
@_ZL28benchmark_uniq_11_benchmark_ = internal unnamed_addr global ptr null, align 8
@.str.35 = private unnamed_addr constant [38 x i8] c"BM_ComplexityCaptureArgs/capture_test\00", align 1
@_ZL23complexity_capture_nameB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.37 = private unnamed_addr constant [50 x i8] c"BM_ComplexityCaptureArgs/capture_test/manual_time\00", align 1
@__dso_handle = external hidden global i8
@dummy264 = hidden local_unnamed_addr global i32 0, align 4
@.str.39 = private unnamed_addr constant [6 x i8] c"_BigO\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"_RMS\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"cached_ > 0\00", align 1
@.str.42 = private unnamed_addr constant [109 x i8] c"/opt-bench/work/llvm-test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h\00", align 1
@__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv = private unnamed_addr constant [61 x i8] c"StateIterator &benchmark::State::StateIterator::operator++()\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"range_.size() > pos\00", align 1
@__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm = private unnamed_addr constant [51 x i8] c"int64_t benchmark::State::range(std::size_t) const\00", align 1
@_ZTVN9benchmark8internal17FunctionBenchmarkE = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.44 = private unnamed_addr constant [6 x i8] c"%name\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"%bigo_name\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"%rms_name\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"%bigo_str\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"[ ]* %float \00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"%bigo\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"%rms\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"[ ]*[0-9]+ %\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"^%bigo_name %bigo_str %bigo_str[ ]*$\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"^%bigo_name\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"^%rms_name %rms %rms[ ]*$\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"\22name\22: \22%bigo_name\22,$\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"\22family_index\22: \00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c",$\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"\22per_family_instance_index\22: 0,$\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"\22run_name\22: \22%name\22,$\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"\22run_type\22: \22aggregate\22,$\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"\22repetitions\22: %int,$\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"\22threads\22: 1,$\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"\22aggregate_name\22: \22BigO\22,$\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"\22aggregate_unit\22: \22time\22,$\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"\22cpu_coefficient\22: %float,$\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"\22real_coefficient\22: %float,$\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"\22big_o\22: \22%bigo\22,$\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"\22time_unit\22: \22ns\22$\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"\22name\22: \22%rms_name\22,$\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"\22aggregate_name\22: \22RMS\22,$\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"\22aggregate_unit\22: \22percentage\22,$\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"\22rms\22: %float$\00", align 1
@.str.74 = private unnamed_addr constant [41 x i8] c"^\22%bigo_name\22,,%float,%float,%bigo,,,,,$\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"^\22%bigo_name\22\00", align 1
@.str.76 = private unnamed_addr constant [35 x i8] c"^\22%rms_name\22,,%float,%float,,,,,,$\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.80 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_complexity_test.cc, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden void @_Z16BM_Complexity_O1RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %.not = icmp ne i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load i64, ptr %i.f, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not3638 = icmp eq i64 %i.g, 0
  %.not.i.not36 = select i1 %.not, i1 true, i1 %.not.i.not3638
  br i1 %.not.i.not36, label %._crit_edge, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.c

bb.a:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit20.thread
  %i.j = add nsw i64 %.sroa.025.037, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.j, 0
  br i1 %.not.i.not, label %._crit_edge, label %bb.c, !prof !36

._crit_edge:                                      ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = load ptr, ptr %i.k, align 32, !tbaa !38  ; 2 uses
  %.not31 = icmp eq ptr %i.m, %i.n
  br i1 %.not31, label %bb.b, label %_ZNK9benchmark5State5rangeEm.exit

bb.b:                                             ; preds = %._crit_edge
  call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #22
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %._crit_edge
  %i.o = load i64, ptr %i.n, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.o, ptr %i.p, align 8, !tbaa !40
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.a
  %.sroa.025.037 = phi i64 [ %i.g, %.lr.ph ], [ %i.j, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.q = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %_ZNK9benchmark5State10iterationsEv.exit24, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.f, align 16, !tbaa !45
  %i.t = load i64, ptr %0, align 64, !tbaa !46
  %i.u = sub i64 %i.s, %i.t
  %i.v = load i64, ptr %i.i, align 8, !tbaa !47
  %i.w = add nsw i64 %i.u, %i.v
  br label %_ZNK9benchmark5State10iterationsEv.exit24

_ZNK9benchmark5State10iterationsEv.exit24:        ; preds = %bb.c, %bb.d
  %.0.i23 = phi i64 [ %i.w, %bb.d ], [ 0, %bb.c ] ; 2 uses
  store i64 %.0.i23, ptr %i.a, align 8, !tbaa !39
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.a, i64 %.0.i23) #23, !srcloc !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.x = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %_ZNK9benchmark5State10iterationsEv.exit22, !prof !44

bb.e:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit24
  %i.z = load i64, ptr %i.f, align 16, !tbaa !45
  %i.aa = load i64, ptr %0, align 64, !tbaa !46
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !47
  %i.ad = add nsw i64 %i.ab, %i.ac
  %i.ae = sitofp i64 %i.ad to double
  br label %_ZNK9benchmark5State10iterationsEv.exit22

_ZNK9benchmark5State10iterationsEv.exit22:        ; preds = %_ZNK9benchmark5State10iterationsEv.exit24, %bb.e
  %.0.i21 = phi double [ %i.ae, %bb.e ], [ 0.000000e+00, %_ZNK9benchmark5State10iterationsEv.exit24 ] ; 2 uses
  store double %.0.i21, ptr %i.b, align 8, !tbaa !49
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.b, double %.0.i21) #23, !srcloc !51
  %i.af = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZNK9benchmark5State10iterationsEv.exit20, label %_ZNK9benchmark5State10iterationsEv.exit20.thread, !prof !52

_ZNK9benchmark5State10iterationsEv.exit20:        ; preds = %_ZNK9benchmark5State10iterationsEv.exit22, %_ZNK9benchmark5State10iterationsEv.exit
  %.035 = phi i64 [ %i.ay, %_ZNK9benchmark5State10iterationsEv.exit ], [ 0, %_ZNK9benchmark5State10iterationsEv.exit22 ] ; 2 uses
  %i.ah = load i64, ptr %i.f, align 16, !tbaa !45
  %i.ai = load i64, ptr %0, align 64, !tbaa !46
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = load i64, ptr %i.i, align 8, !tbaa !47
  %i.al = add nsw i64 %i.aj, %i.ak                ; 3 uses
  %i.am = icmp slt i64 %.035, %i.al
  br i1 %i.am, label %_ZNK9benchmark5State10iterationsEv.exit18, label %_ZNK9benchmark5State10iterationsEv.exit20.thread

_ZNK9benchmark5State10iterationsEv.exit20.thread: ; preds = %_ZNK9benchmark5State10iterationsEv.exit20, %_ZNK9benchmark5State10iterationsEv.exit, %_ZNK9benchmark5State10iterationsEv.exit22
  call void @_ZN9benchmark5State16SetIterationTimeEd(ptr noundef nonnull align 64 dereferenceable(184) %0, double noundef f0x3E668C6FA0B2F9A4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.an = icmp sgt i64 %.sroa.025.037, 0
  br i1 %i.an, label %bb.a, label %bb.f

bb.f:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit20.thread
  call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #22
  unreachable

_ZNK9benchmark5State10iterationsEv.exit18:        ; preds = %_ZNK9benchmark5State10iterationsEv.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.al, ptr %i.c, align 8, !tbaa !39
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.c, i64 %i.al) #23, !srcloc !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.ao = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %_ZNK9benchmark5State10iterationsEv.exit, !prof !44

bb.g:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit18
  %i.aq = load i64, ptr %i.f, align 16, !tbaa !45
  %i.ar = load i64, ptr %0, align 64, !tbaa !46
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = load i64, ptr %i.i, align 8, !tbaa !47
  %i.au = add nsw i64 %i.as, %i.at
  %i.av = sitofp i64 %i.au to double
  br label %_ZNK9benchmark5State10iterationsEv.exit

_ZNK9benchmark5State10iterationsEv.exit:          ; preds = %_ZNK9benchmark5State10iterationsEv.exit18, %bb.g
  %.0.i = phi double [ %i.av, %bb.g ], [ 0.000000e+00, %_ZNK9benchmark5State10iterationsEv.exit18 ]
  %i.aw = load double, ptr %i.b, align 8, !tbaa !49
  %i.ax = fmul double %.0.i, %i.aw                ; 2 uses
  store double %i.ax, ptr %i.b, align 8, !tbaa !49
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.b, double %i.ax) #23, !srcloc !51
  %i.ay = add nuw nsw i64 %.035, 1
  %i.az = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZNK9benchmark5State10iterationsEv.exit20, label %_ZNK9benchmark5State10iterationsEv.exit20.thread, !prof !53, !llvm.loop !54
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN9benchmark5State16SetIterationTimeEd(ptr noundef nonnull align 64 dereferenceable(184), double noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef) local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN9benchmark8internal9Benchmark5RangeEll(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, i64 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark13UseManualTimeEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #0

declare noundef ptr @_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #4 align 2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN9benchmark8internal9Benchmark10ComplexityEPFdlE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef range(i32 0, 10) %4) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %5 = alloca [6 x %"struct.std::pair.38"], align 8 ; 49 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca [3 x %struct.TestCase], align 8     ; 28 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca [25 x %struct.TestCase], align 8   ; 59 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %41 = alloca [3 x %struct.TestCase], align 8    ; 28 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 1 dereferenceable(6) @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.bv

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 1 dereferenceable(11) @.str.45, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.bv

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i:bb.a

bb.v:                                             ; preds = %bb.u
  %i.gf = add nsw i32 %i.gd, -1
  store i32 %i.gf, ptr %i.ga, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.1

bb.w:                                             ; preds = %bb.u
  %i.gg = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.1

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.1: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.1 = phi i32 [ %i.gd, %bb.v ], [ %i.gg, %bb.w ]
  %i.gh = icmp eq i32 %.0.i.i.i.i.i.1, 1
  br i1 %i.gh, label %bb.x, label %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.1, !prof !75

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.1
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #23
  br label %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.1

bb.y:                                             ; preds = %bb.t
  store i32 0, ptr %i.ga, align 8, !tbaa !69
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.gi, align 4, !tbaa !71
  %i.gj = load ptr, ptr %i.fz, align 8, !tbaa !72
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8
  call void %i.gl(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #23, !inline_history !74
  %i.gm = load ptr, ptr %i.fz, align 8, !tbaa !72
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #23, !inline_history !74
  br label %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.1

_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.1: ; preds = %bb.y, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.1, %_ZN8TestCaseD2Ev.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !59 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311.1: ; preds = %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.1
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !65
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312.1: ; preds = %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311.1
  %i.gv = load ptr, ptr %i.fx, align 8, !tbaa !59 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZN8TestCaseD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i313.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i313.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312.1
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !65
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #25
  br label %_ZN8TestCaseD2Ev.exit.1

_ZN8TestCaseD2Ev.exit.1:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i313.1
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !66 ; 8 uses
  %.not.i.i.i.2 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.2, label %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.2, label %bb.z

bb.z:                                             ; preds = %_ZN8TestCaseD2Ev.exit.1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 4 uses
  %i.hd = load atomic i64, ptr %i.hc acquire, align 8 ; 2 uses
  %i.he = icmp eq i64 %i.hd, 4294967297
  %i.hf = trunc i64 %i.hd to i32                  ; 2 uses
  br i1 %i.he, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.2 = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i.i.2, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hh = add nsw i32 %i.hf, -1
  store i32 %i.hh, ptr %i.hc, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.2

bb.ac:                                            ; preds = %bb.aa
  %i.hi = atomicrmw volatile add ptr %i.hc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.2

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.2: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.2 = phi i32 [ %i.hf, %bb.ab ], [ %i.hi, %bb.ac ]
  %i.hj = icmp eq i32 %.0.i.i.i.i.i.2, 1
  br i1 %i.hj, label %bb.ad, label %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.2, !prof !75

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.2
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #23
  br label %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.2

bb.ae:                                            ; preds = %bb.z
  store i32 0, ptr %i.hc, align 8, !tbaa !69
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  store i32 0, ptr %i.hk, align 4, !tbaa !71
  %i.hl = load ptr, ptr %i.hb, align 8, !tbaa !72
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #23, !inline_history !74
  %i.ho = load ptr, ptr %i.hb, align 8, !tbaa !72
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hb) #23, !inline_history !74
  br label %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.2

_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.2: ; preds = %bb.ae, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.2, %_ZN8TestCaseD2Ev.exit.1
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !59 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311.2: ; preds = %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.2
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !65
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312.2: ; preds = %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i311.2
  %i.hx = load ptr, ptr %7, align 8, !tbaa !59    ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZN8TestCaseD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i313.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i313.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312.2
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !65
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #25
  br label %_ZN8TestCaseD2Ev.exit.2

_ZN8TestCaseD2Ev.exit.2:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i312.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i313.2
  %i.ic = load ptr, ptr %10, align 8, !tbaa !59   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.en
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %_ZN8TestCaseD2Ev.exit.2
  %i.ie = load i64, ptr %i.en, align 8, !tbaa !65
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %_ZN8TestCaseD2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
  %i.ig = load ptr, ptr %9, align 8, !tbaa !59    ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.ej
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  %i.ii = load i64, ptr %i.ej, align 8, !tbaa !65
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319
  %i.ik = load ptr, ptr %8, align 8, !tbaa !59    ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.ed
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  %i.im = load i64, ptr %i.ed, align 8, !tbaa !65
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.io = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.io, ptr %12, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #23
  store i64 22, ptr %i.t, align 8, !tbaa !39
  %i.ip = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef 0)
          to label %.noexc327 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680.thread ; 2 uses

.noexc327:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324
  store ptr %i.ip, ptr %12, align 8, !tbaa !59
  %i.iq = load i64, ptr %i.t, align 8, !tbaa !39  ; 3 uses
  store i64 %i.iq, ptr %i.io, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ip, ptr noundef nonnull align 1 dereferenceable(22) @.str.55, i64 22, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !60
  %i.is = load ptr, ptr %12, align 8, !tbaa !59
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.iq
  store i8 0, ptr %i.it, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %11, ptr noundef nonnull %12, i32 noundef 0)
          to label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i unwind label %bb.cc

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %.noexc327
  %i.iu = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.iv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.iv, ptr %15, align 8, !tbaa !61, !alias.scope !76
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 1, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.iw = load ptr, ptr %15, align 8, !tbaa !59, !alias.scope !76
  %i.ix = trunc nuw nsw i32 %4 to i8
  %i.iy = or disjoint i8 %i.ix, 48                ; 2 uses
  store i8 %i.iy, ptr %i.iw, align 1, !tbaa !65
  %i.iz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.56, i64 noundef 16)
          to label %.noexc331 unwind label %bb.cd ; 6 uses

bb.af:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  call void @__clang_call_terminate(ptr %i.jb) #22
  unreachable

.noexc331:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.jc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.jc, ptr %14, align 8, !tbaa !61, !alias.scope !79
  %i.jd = load ptr, ptr %i.iz, align 8, !tbaa !59 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 5 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330

bb.ag:                                            ; preds = %.noexc331
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !60 ; 3 uses
  %i.ji = icmp ult i64 %i.jh, 16
  call void @llvm.assume(i1 %i.ji)
  %i.jj = add nuw nsw i64 %i.jh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jc, ptr noundef nonnull align 8 dereferenceable(1) %i.je, i64 %i.jj, i1 false)
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330: ; preds = %.noexc331
  store ptr %i.jd, ptr %14, align 8, !tbaa !59, !alias.scope !79
  %i.jk = load i64, ptr %i.je, align 8, !tbaa !65
  store i64 %i.jk, ptr %i.jc, align 8, !tbaa !65, !alias.scope !79
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !60
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330, %bb.ag
  %i.jl = phi i64 [ %i.jh, %bb.ag ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.jl, ptr %i.jn, align 8, !tbaa !60, !alias.scope !79
  store ptr %i.je, ptr %i.iz, align 8, !tbaa !59
  store i64 0, ptr %i.jm, align 8, !tbaa !60
  store i8 0, ptr %i.je, align 8, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !60, !noalias !82
  %i.jp = and i64 %i.jo, -2
  %i.jq = icmp eq i64 %i.jp, 4611686018427387902
  br i1 %i.jq, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #24
          to label %.noexc335 unwind label %bb.ce

.noexc335:                                        ; preds = %bb.ai
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ah
  %i.jr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.57, i64 noundef 2)
          to label %.noexc336 unwind label %bb.ce ; 6 uses

.noexc336:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.js = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.js, ptr %13, align 8, !tbaa !61, !alias.scope !82
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !59 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 5 uses
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

bb.aj:                                            ; preds = %.noexc336
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !60 ; 3 uses
  %i.jy = icmp ult i64 %i.jx, 16
  call void @llvm.assume(i1 %i.jy)
  %i.jz = add nuw nsw i64 %i.jx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.js, ptr noundef nonnull align 8 dereferenceable(1) %i.ju, i64 %i.jz, i1 false)
  br label %bb.ak

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %.noexc336
  store ptr %i.jt, ptr %13, align 8, !tbaa !59, !alias.scope !82
  %i.ka = load i64, ptr %i.ju, align 8, !tbaa !65
  store i64 %i.ka, ptr %i.js, align 8, !tbaa !65, !alias.scope !82
  %.phi.trans.insert.i333 = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %.pre.i334 = load i64, ptr %.phi.trans.insert.i333, align 8, !tbaa !60
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332, %bb.aj
  %i.kb = phi i64 [ %i.jx, %bb.aj ], [ %.pre.i334, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332 ]
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.kb, ptr %i.kd, align 8, !tbaa !60, !alias.scope !82
  store ptr %i.ju, ptr %i.jr, align 8, !tbaa !59
  store i64 0, ptr %i.kc, align 8, !tbaa !60
  store i8 0, ptr %i.ju, align 8, !tbaa !65
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.iu, ptr noundef nonnull %13, i32 noundef 1)
          to label %.noexc.i338 unwind label %bb.cf

.noexc.i338:                                      ; preds = %bb.ak
  %i.ke = getelementptr inbounds nuw i8, ptr %11, i64 176 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.kf, ptr %16, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #23
  store i64 32, ptr %i.s, align 8, !tbaa !39
  %i.kg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef 0)
          to label %.noexc339 unwind label %bb.cg ; 2 uses

.noexc339:                                        ; preds = %.noexc.i338
  store ptr %i.kg, ptr %16, align 8, !tbaa !59
  %i.kh = load i64, ptr %i.s, align 8, !tbaa !39  ; 3 uses
  store i64 %i.kh, ptr %i.kf, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kg, ptr noundef nonnull align 1 dereferenceable(32) @.str.58, i64 32, i1 false)
  %i.ki = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.kh, ptr %i.ki, align 8, !tbaa !60
  %i.kj = load ptr, ptr %16, align 8, !tbaa !59
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kh
  store i8 0, ptr %i.kk, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.ke, ptr noundef nonnull %16, i32 noundef 1)
          to label %.noexc.i342 unwind label %bb.ch

.noexc.i342:                                      ; preds = %.noexc339
  %i.kl = getelementptr inbounds nuw i8, ptr %11, i64 264 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.km, ptr %17, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #23
  store i64 21, ptr %i.r, align 8, !tbaa !39
  %i.kn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef 0)
          to label %.noexc343 unwind label %bb.ci ; 2 uses

.noexc343:                                        ; preds = %.noexc.i342
  store ptr %i.kn, ptr %17, align 8, !tbaa !59
  %i.ko = load i64, ptr %i.r, align 8, !tbaa !39  ; 3 uses
  store i64 %i.ko, ptr %i.km, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.kn, ptr noundef nonnull align 1 dereferenceable(21) @.str.59, i64 21, i1 false)
  %i.kp = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ko, ptr %i.kp, align 8, !tbaa !60
  %i.kq = load ptr, ptr %17, align 8, !tbaa !59
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.ko
  store i8 0, ptr %i.kr, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.kl, ptr noundef nonnull %17, i32 noundef 1)
          to label %.noexc.i346 unwind label %bb.cj

.noexc.i346:                                      ; preds = %.noexc343
  %i.ks = getelementptr inbounds nuw i8, ptr %11, i64 352 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.kt, ptr %18, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  store i64 25, ptr %i.q, align 8, !tbaa !39
  %i.ku = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc347 unwind label %bb.ck ; 2 uses

.noexc347:                                        ; preds = %.noexc.i346
  store ptr %i.ku, ptr %18, align 8, !tbaa !59
  %i.kv = load i64, ptr %i.q, align 8, !tbaa !39  ; 3 uses
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ku, ptr noundef nonnull align 1 dereferenceable(25) @.str.60, i64 25, i1 false)
  %i.kw = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !60
  %i.kx = load ptr, ptr %18, align 8, !tbaa !59
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.kv
  store i8 0, ptr %i.ky, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.ks, ptr noundef nonnull %18, i32 noundef 1)
          to label %.noexc.i350 unwind label %bb.cl

.noexc.i350:                                      ; preds = %.noexc347
  %i.kz = getelementptr inbounds nuw i8, ptr %11, i64 440 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.la, ptr %19, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  store i64 21, ptr %i.p, align 8, !tbaa !39
  %i.lb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc351 unwind label %bb.cm ; 2 uses

.noexc351:                                        ; preds = %.noexc.i350
  store ptr %i.lb, ptr %19, align 8, !tbaa !59
  %i.lc = load i64, ptr %i.p, align 8, !tbaa !39  ; 3 uses
  store i64 %i.lc, ptr %i.la, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.lb, ptr noundef nonnull align 1 dereferenceable(21) @.str.61, i64 21, i1 false)
  %i.ld = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.lc, ptr %i.ld, align 8, !tbaa !60
  %i.le = load ptr, ptr %19, align 8, !tbaa !59
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lc
  store i8 0, ptr %i.lf, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.kz, ptr noundef nonnull %19, i32 noundef 1)
          to label %._crit_edge.i.i353 unwind label %bb.cn

._crit_edge.i.i353:                               ; preds = %.noexc351
  %i.lg = getelementptr inbounds nuw i8, ptr %11, i64 528 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.lh, ptr %20, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.lh, ptr noundef nonnull align 1 dereferenceable(14) @.str.62, i64 14, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 14, ptr %i.li, align 8, !tbaa !60
  %i.lj = getelementptr inbounds nuw i8, ptr %20, i64 30
  store i8 0, ptr %i.lj, align 2, !tbaa !65
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.lg, ptr noundef nonnull %20, i32 noundef 1)
          to label %.noexc.i358 unwind label %bb.co

.noexc.i358:                                      ; preds = %._crit_edge.i.i353
  %i.lk = getelementptr inbounds nuw i8, ptr %11, i64 616 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.ll, ptr %21, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  store i64 26, ptr %i.o, align 8, !tbaa !39
  %i.lm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc359 unwind label %bb.cp ; 2 uses

.noexc359:                                        ; preds = %.noexc.i358
  store ptr %i.lm, ptr %21, align 8, !tbaa !59
  %i.ln = load i64, ptr %i.o, align 8, !tbaa !39  ; 3 uses
  store i64 %i.ln, ptr %i.ll, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.lm, ptr noundef nonnull align 1 dereferenceable(26) @.str.63, i64 26, i1 false)
  %i.lo = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.ln, ptr %i.lo, align 8, !tbaa !60
  %i.lp = load ptr, ptr %21, align 8, !tbaa !59
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ln
  store i8 0, ptr %i.lq, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.lk, ptr noundef nonnull %21, i32 noundef 1)
          to label %.noexc.i362 unwind label %bb.cq

.noexc.i362:                                      ; preds = %.noexc359
  %i.lr = getelementptr inbounds nuw i8, ptr %11, i64 704 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.ls, ptr %22, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  store i64 26, ptr %i.n, align 8, !tbaa !39
  %i.lt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc363 unwind label %bb.cr ; 2 uses

.noexc363:                                        ; preds = %.noexc.i362
  store ptr %i.lt, ptr %22, align 8, !tbaa !59
  %i.lu = load i64, ptr %i.n, align 8, !tbaa !39  ; 3 uses
  store i64 %i.lu, ptr %i.ls, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.lt, ptr noundef nonnull align 1 dereferenceable(26) @.str.64, i64 26, i1 false)
  %i.lv = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !60
  %i.lw = load ptr, ptr %22, align 8, !tbaa !59
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lu
  store i8 0, ptr %i.lx, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.lr, ptr noundef nonnull %22, i32 noundef 1)
          to label %.noexc.i366 unwind label %bb.cs

.noexc.i366:                                      ; preds = %.noexc363
  %i.ly = getelementptr inbounds nuw i8, ptr %11, i64 792 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.lz, ptr %23, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  store i64 27, ptr %i.m, align 8, !tbaa !39
  %i.ma = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc367 unwind label %bb.ct ; 2 uses

.noexc367:                                        ; preds = %.noexc.i366
  store ptr %i.ma, ptr %23, align 8, !tbaa !59
  %i.mb = load i64, ptr %i.m, align 8, !tbaa !39  ; 3 uses
  store i64 %i.mb, ptr %i.lz, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ma, ptr noundef nonnull align 1 dereferenceable(27) @.str.65, i64 27, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !60
  %i.md = load ptr, ptr %23, align 8, !tbaa !59
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mb
  store i8 0, ptr %i.me, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.ly, ptr noundef nonnull %23, i32 noundef 1)
          to label %.noexc.i370 unwind label %bb.cu

.noexc.i370:                                      ; preds = %.noexc367
  %i.mf = getelementptr inbounds nuw i8, ptr %11, i64 880 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.mg, ptr %24, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  store i64 28, ptr %i.l, align 8, !tbaa !39
  %i.mh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc371 unwind label %bb.cv ; 2 uses

.noexc371:                                        ; preds = %.noexc.i370
  store ptr %i.mh, ptr %24, align 8, !tbaa !59
  %i.mi = load i64, ptr %i.l, align 8, !tbaa !39  ; 3 uses
  store i64 %i.mi, ptr %i.mg, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.mh, ptr noundef nonnull align 1 dereferenceable(28) @.str.66, i64 28, i1 false)
  %i.mj = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.mi, ptr %i.mj, align 8, !tbaa !60
  %i.mk = load ptr, ptr %24, align 8, !tbaa !59
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mi
  store i8 0, ptr %i.ml, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.mf, ptr noundef nonnull %24, i32 noundef 1)
          to label %.noexc.i374 unwind label %bb.cw

.noexc.i374:                                      ; preds = %.noexc371
  %i.mm = getelementptr inbounds nuw i8, ptr %11, i64 968 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.mn, ptr %25, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store i64 18, ptr %i.k, align 8, !tbaa !39
  %i.mo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc375 unwind label %bb.cx ; 2 uses

.noexc375:                                        ; preds = %.noexc.i374
  store ptr %i.mo, ptr %25, align 8, !tbaa !59
  %i.mp = load i64, ptr %i.k, align 8, !tbaa !39  ; 3 uses
  store i64 %i.mp, ptr %i.mn, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.mo, ptr noundef nonnull align 1 dereferenceable(18) @.str.67, i64 18, i1 false)
  %i.mq = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.mp, ptr %i.mq, align 8, !tbaa !60
  %i.mr = load ptr, ptr %25, align 8, !tbaa !59
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 %i.mp
  store i8 0, ptr %i.ms, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.mm, ptr noundef nonnull %25, i32 noundef 1)
          to label %.noexc.i378 unwind label %bb.cy

.noexc.i378:                                      ; preds = %.noexc375
  %i.mt = getelementptr inbounds nuw i8, ptr %11, i64 1056 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.mu, ptr %26, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store i64 18, ptr %i.j, align 8, !tbaa !39
  %i.mv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc379 unwind label %bb.cz ; 2 uses

.noexc379:                                        ; preds = %.noexc.i378
  store ptr %i.mv, ptr %26, align 8, !tbaa !59
  %i.mw = load i64, ptr %i.j, align 8, !tbaa !39  ; 3 uses
  store i64 %i.mw, ptr %i.mu, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.mv, ptr noundef nonnull align 1 dereferenceable(18) @.str.68, i64 18, i1 false)
  %i.mx = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.mw, ptr %i.mx, align 8, !tbaa !60
  %i.my = load ptr, ptr %26, align 8, !tbaa !59
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mw
  store i8 0, ptr %i.mz, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.mt, ptr noundef nonnull %26, i32 noundef 1)
          to label %._crit_edge.i.i381 unwind label %bb.da

._crit_edge.i.i381:                               ; preds = %.noexc379
  %i.na = getelementptr inbounds nuw i8, ptr %11, i64 1144 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.nb, ptr %27, align 8, !tbaa !61
  store i8 125, ptr %i.nb, align 8, !tbaa !65
  %i.nc = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 1, ptr %i.nc, align 8, !tbaa !60
  %i.nd = getelementptr inbounds nuw i8, ptr %27, i64 17
  store i8 0, ptr %i.nd, align 1, !tbaa !65
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.na, ptr noundef nonnull %27, i32 noundef 1)
          to label %.noexc.i386 unwind label %bb.db

.noexc.i386:                                      ; preds = %._crit_edge.i.i381
  %i.ne = getelementptr inbounds nuw i8, ptr %11, i64 1232 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.nf, ptr %28, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store i64 21, ptr %i.i, align 8, !tbaa !39
  %i.ng = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc387 unwind label %bb.dc ; 2 uses

.noexc387:                                        ; preds = %.noexc.i386
  store ptr %i.ng, ptr %28, align 8, !tbaa !59
  %i.nh = load i64, ptr %i.i, align 8, !tbaa !39  ; 3 uses
  store i64 %i.nh, ptr %i.nf, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ng, ptr noundef nonnull align 1 dereferenceable(21) @.str.70, i64 21, i1 false)
  %i.ni = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.nh, ptr %i.ni, align 8, !tbaa !60
  %i.nj = load ptr, ptr %28, align 8, !tbaa !59
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nh
  store i8 0, ptr %i.nk, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.ne, ptr noundef nonnull %28, i32 noundef 0)
          to label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i392 unwind label %bb.dd

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i392: ; preds = %.noexc387
  %i.nl = getelementptr inbounds nuw i8, ptr %11, i64 1320 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.nm = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 5 uses
  store ptr %i.nm, ptr %31, align 8, !tbaa !61, !alias.scope !85
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef 1, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i395 unwind label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i395: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i392
  %i.nn = load ptr, ptr %31, align 8, !tbaa !59, !alias.scope !85
  store i8 %i.iy, ptr %i.nn, align 1, !tbaa !65
  %i.no = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.56, i64 noundef 16)
          to label %.noexc407 unwind label %bb.de ; 6 uses

bb.al:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i392
  %i.np = landingpad { ptr, i32 }
          catch ptr null
  %i.nq = extractvalue { ptr, i32 } %i.np, 0
  call void @__clang_call_terminate(ptr %i.nq) #22
  unreachable

.noexc407:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i395
  %i.nr = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  store ptr %i.nr, ptr %30, align 8, !tbaa !61, !alias.scope !88
  %i.ns = load ptr, ptr %i.no, align 8, !tbaa !59 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.no, i64 16 ; 5 uses
  %i.nu = icmp eq ptr %i.ns, %i.nt
  br i1 %i.nu, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

bb.am:                                            ; preds = %.noexc407
  %i.nv = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !60 ; 3 uses
  %i.nx = icmp ult i64 %i.nw, 16
  call void @llvm.assume(i1 %i.nx)
  %i.ny = add nuw nsw i64 %i.nw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.nr, ptr noundef nonnull align 8 dereferenceable(1) %i.nt, i64 %i.ny, i1 false)
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %.noexc407
  store ptr %i.ns, ptr %30, align 8, !tbaa !59, !alias.scope !88
  %i.nz = load i64, ptr %i.nt, align 8, !tbaa !65
  store i64 %i.nz, ptr %i.nr, align 8, !tbaa !65, !alias.scope !88
  %.phi.trans.insert.i405 = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %.pre.i406 = load i64, ptr %.phi.trans.insert.i405, align 8, !tbaa !60
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404, %bb.am
  %i.oa = phi i64 [ %i.nw, %bb.am ], [ %.pre.i406, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404 ]
  %i.ob = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store i64 %i.oa, ptr %i.oc, align 8, !tbaa !60, !alias.scope !88
  store ptr %i.nt, ptr %i.no, align 8, !tbaa !59
  store i64 0, ptr %i.ob, align 8, !tbaa !60
  store i8 0, ptr %i.nt, align 8, !tbaa !65
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !60, !noalias !91
  %i.oe = and i64 %i.od, -2
  %i.of = icmp eq i64 %i.oe, 4611686018427387902
  br i1 %i.of, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i409

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #24
          to label %.noexc413 unwind label %bb.df

.noexc413:                                        ; preds = %bb.ao
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i409: ; preds = %bb.an
  %i.og = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.57, i64 noundef 2)
          to label %.noexc414 unwind label %bb.df ; 6 uses

.noexc414:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i409
  %i.oh = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  store ptr %i.oh, ptr %29, align 8, !tbaa !61, !alias.scope !91
  %i.oi = load ptr, ptr %i.og, align 8, !tbaa !59 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 16 ; 5 uses
  %i.ok = icmp eq ptr %i.oi, %i.oj
  br i1 %i.ok, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410

bb.ap:                                            ; preds = %.noexc414
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !60 ; 3 uses
  %i.on = icmp ult i64 %i.om, 16
  call void @llvm.assume(i1 %i.on)
  %i.oo = add nuw nsw i64 %i.om, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.oh, ptr noundef nonnull align 8 dereferenceable(1) %i.oj, i64 %i.oo, i1 false)
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410: ; preds = %.noexc414
  store ptr %i.oi, ptr %29, align 8, !tbaa !59, !alias.scope !91
  %i.op = load i64, ptr %i.oj, align 8, !tbaa !65
  store i64 %i.op, ptr %i.oh, align 8, !tbaa !65, !alias.scope !91
  %.phi.trans.insert.i411 = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %.pre.i412 = load i64, ptr %.phi.trans.insert.i411, align 8, !tbaa !60
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410, %bb.ap
  %i.oq = phi i64 [ %i.om, %bb.ap ], [ %.pre.i412, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410 ]
  %i.or = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.os = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.oq, ptr %i.os, align 8, !tbaa !60, !alias.scope !91
  store ptr %i.oj, ptr %i.og, align 8, !tbaa !59
  store i64 0, ptr %i.or, align 8, !tbaa !60
  store i8 0, ptr %i.oj, align 8, !tbaa !65
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.nl, ptr noundef nonnull %29, i32 noundef 1)
          to label %.noexc.i417 unwind label %bb.dg

.noexc.i417:                                      ; preds = %bb.aq
  %i.ot = getelementptr inbounds nuw i8, ptr %11, i64 1408 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  store ptr %i.ou, ptr %32, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store i64 32, ptr %i.h, align 8, !tbaa !39
  %i.ov = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc418 unwind label %bb.dh ; 2 uses

.noexc418:                                        ; preds = %.noexc.i417
  store ptr %i.ov, ptr %32, align 8, !tbaa !59
  %i.ow = load i64, ptr %i.h, align 8, !tbaa !39  ; 3 uses
  store i64 %i.ow, ptr %i.ou, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ov, ptr noundef nonnull align 1 dereferenceable(32) @.str.58, i64 32, i1 false)
  %i.ox = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %i.ow, ptr %i.ox, align 8, !tbaa !60
  %i.oy = load ptr, ptr %32, align 8, !tbaa !59
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.ow
  store i8 0, ptr %i.oz, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.ot, ptr noundef nonnull %32, i32 noundef 1)
          to label %.noexc.i421 unwind label %bb.di

.noexc.i421:                                      ; preds = %.noexc418
  %i.pa = getelementptr inbounds nuw i8, ptr %11, i64 1496 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  store ptr %i.pb, ptr %33, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i64 21, ptr %i.g, align 8, !tbaa !39
  %i.pc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc422 unwind label %bb.dj ; 2 uses

.noexc422:                                        ; preds = %.noexc.i421
  store ptr %i.pc, ptr %33, align 8, !tbaa !59
  %i.pd = load i64, ptr %i.g, align 8, !tbaa !39  ; 3 uses
  store i64 %i.pd, ptr %i.pb, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.pc, ptr noundef nonnull align 1 dereferenceable(21) @.str.59, i64 21, i1 false)
  %i.pe = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %i.pd, ptr %i.pe, align 8, !tbaa !60
  %i.pf = load ptr, ptr %33, align 8, !tbaa !59
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pd
  store i8 0, ptr %i.pg, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.pa, ptr noundef nonnull %33, i32 noundef 1)
          to label %.noexc.i425 unwind label %bb.dk

.noexc.i425:                                      ; preds = %.noexc422
  %i.ph = getelementptr inbounds nuw i8, ptr %11, i64 1584 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  store ptr %i.pi, ptr %34, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 25, ptr %i.f, align 8, !tbaa !39
  %i.pj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc426 unwind label %bb.dl ; 2 uses

.noexc426:                                        ; preds = %.noexc.i425
  store ptr %i.pj, ptr %34, align 8, !tbaa !59
  %i.pk = load i64, ptr %i.f, align 8, !tbaa !39  ; 3 uses
  store i64 %i.pk, ptr %i.pi, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.pj, ptr noundef nonnull align 1 dereferenceable(25) @.str.60, i64 25, i1 false)
  %i.pl = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 %i.pk, ptr %i.pl, align 8, !tbaa !60
  %i.pm = load ptr, ptr %34, align 8, !tbaa !59
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pk
  store i8 0, ptr %i.pn, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.ph, ptr noundef nonnull %34, i32 noundef 1)
          to label %.noexc.i429 unwind label %bb.dm

.noexc.i429:                                      ; preds = %.noexc426
  %i.po = getelementptr inbounds nuw i8, ptr %11, i64 1672 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.pp, ptr %35, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 21, ptr %i.e, align 8, !tbaa !39
  %i.pq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc430 unwind label %bb.dn ; 2 uses

.noexc430:                                        ; preds = %.noexc.i429
  store ptr %i.pq, ptr %35, align 8, !tbaa !59
  %i.pr = load i64, ptr %i.e, align 8, !tbaa !39  ; 3 uses
  store i64 %i.pr, ptr %i.pp, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.pq, ptr noundef nonnull align 1 dereferenceable(21) @.str.61, i64 21, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %i.pr, ptr %i.ps, align 8, !tbaa !60
  %i.pt = load ptr, ptr %35, align 8, !tbaa !59
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 %i.pr
  store i8 0, ptr %i.pu, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.po, ptr noundef nonnull %35, i32 noundef 1)
          to label %._crit_edge.i.i432 unwind label %bb.do

._crit_edge.i.i432:                               ; preds = %.noexc430
  %i.pv = getelementptr inbounds nuw i8, ptr %11, i64 1760 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.pw, ptr %36, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.pw, ptr noundef nonnull align 1 dereferenceable(14) @.str.62, i64 14, i1 false)
  %i.px = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 14, ptr %i.px, align 8, !tbaa !60
  %i.py = getelementptr inbounds nuw i8, ptr %36, i64 30
  store i8 0, ptr %i.py, align 2, !tbaa !65
  invoke void @_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(88) %i.pv, ptr noundef nonnull %36, i32 noundef 1)
          to label %.noexc.i437 unwind label %bb.dp
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i:bb.a
  %i.ajh = load i64, ptr %i.js, align 8, !tbaa !65
  %i.aji = add i64 %i.ajh, 1
  call void @_ZdlPvm(ptr noundef %i.ajf, i64 noundef %i.aji) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669, %bb.ce
  %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.acr, %bb.ce ], [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669 ], [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668 ] ; 2 uses
  %.46145 = phi ptr [ %i.iu, %bb.ce ], [ %.45144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669 ], [ %.45144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668 ] ; 2 uses
  %.4895 = phi i1 [ false, %bb.ce ], [ %.4794, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i669 ], [ %.4794, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit668 ] ; 2 uses
  %i.ajj = load ptr, ptr %14, align 8, !tbaa !59  ; 2 uses
  %i.ajk = icmp eq ptr %i.ajj, %i.jc
  br i1 %i.ajk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i672

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i672: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671
  %i.ajl = load i64, ptr %i.jc, align 8, !tbaa !65
  %i.ajm = add i64 %i.ajl, 1
  call void @_ZdlPvm(ptr noundef %i.ajj, i64 noundef %i.ajm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i672, %bb.cd
  %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.acq, %bb.cd ], [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i672 ], [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671 ]
  %.47146 = phi ptr [ %i.iu, %bb.cd ], [ %.46145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i672 ], [ %.46145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671 ]
  %.4996 = phi i1 [ false, %bb.cd ], [ %.4895, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i672 ], [ %.4895, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit671 ]
  %i.ajn = load ptr, ptr %15, align 8, !tbaa !59  ; 2 uses
  %i.ajo = icmp eq ptr %i.ajn, %i.iv
  br i1 %i.ajo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674
  %i.ajp = load i64, ptr %i.iv, align 8, !tbaa !65
  %i.ajq = add i64 %i.ajp, 1
  call void @_ZdlPvm(ptr noundef %i.ajn, i64 noundef %i.ajq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i675
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677, %bb.cc
  %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677 ], [ %i.acp, %bb.cc ] ; 2 uses
  %.48147 = phi ptr [ %.47146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677 ], [ %11, %bb.cc ] ; 2 uses
  %.5097 = phi i1 [ %.4996, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677 ], [ false, %bb.cc ]
  %i.ajr = load ptr, ptr %12, align 8, !tbaa !59  ; 2 uses
  %i.ajs = icmp eq ptr %i.ajr, %i.io
  br i1 %i.ajs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678: ; preds = %bb.dx
  %i.ajt = load i64, ptr %i.io, align 8, !tbaa !65
  %i.aju = add i64 %i.ajt, 1
  call void @_ZdlPvm(ptr noundef %i.ajr, i64 noundef %i.aju) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i678
  %i.ajv = icmp eq ptr %11, %.48147
  %or.cond7 = select i1 %.5097, i1 true, i1 %i.ajv
  br i1 %or.cond7, label %.loopexit738, label %.preheader737

.preheader737:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, %.preheader737
  %i.ajw = phi ptr [ %i.ajx, %.preheader737 ], [ %.48147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680 ]
  %i.ajx = getelementptr inbounds i8, ptr %i.ajw, i64 -88 ; 3 uses
  call void @_ZN8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ajx) #23
  %i.ajy = icmp eq ptr %i.ajx, %11
  br i1 %i.ajy, label %.loopexit738, label %.preheader737

.loopexit738:                                     ; preds = %.preheader737, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680
  %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn731 = phi { ptr, i32 } [ %i.aco, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680.thread ], [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680 ], [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.preheader737 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ec

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit549
  %i.ajz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit740

bb.dy:                                            ; preds = %.noexc552
  %i.aka = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686

bb.dz:                                            ; preds = %._crit_edge.i.i554
  %i.akb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683

bb.ea:                                            ; preds = %.noexc.i559
  %i.akc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683

bb.eb:                                            ; preds = %.noexc560
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit741

.loopexit741.loopexit:                            ; preds = %bb.bb
  %i.ake = landingpad { ptr, i32 }
          cleanup
  %i.akf = getelementptr inbounds nuw i8, ptr %41, i64 176
  call void @_ZN8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.akf) #23
  %i.akg = getelementptr inbounds nuw i8, ptr %41, i64 88
  call void @_ZN8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.akg) #23
  call void @_ZN8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %41) #23
  br label %.loopexit741

.loopexit741:                                     ; preds = %.loopexit741.loopexit, %bb.eb
  %.pn293 = phi { ptr, i32 } [ %i.akd, %bb.eb ], [ %i.ake, %.loopexit741.loopexit ] ; 2 uses
  %i.akh = phi i1 [ false, %bb.eb ], [ true, %.loopexit741.loopexit ] ; 2 uses
  %i.aki = load ptr, ptr %44, align 8, !tbaa !59  ; 2 uses
  %i.akj = icmp eq ptr %i.aki, %i.wy
  br i1 %i.akj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681: ; preds = %.loopexit741
  %i.akk = load i64, ptr %i.wy, align 8, !tbaa !65
  %i.akl = add i64 %i.akk, 1
  call void @_ZdlPvm(ptr noundef %i.aki, i64 noundef %i.akl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683: ; preds = %.loopexit741, %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681, %bb.dz
  %.pn293.pn.pn = phi { ptr, i32 } [ %i.akb, %bb.dz ], [ %i.akc, %bb.ea ], [ %.pn293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681 ], [ %.pn293, %.loopexit741 ] ; 2 uses
  %.032 = phi ptr [ %i.wt, %bb.dz ], [ %i.wx, %bb.ea ], [ %i.wx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681 ], [ %i.wx, %.loopexit741 ] ; 2 uses
  %.2 = phi i1 [ false, %bb.dz ], [ false, %bb.ea ], [ %i.akh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i681 ], [ %i.akh, %.loopexit741 ] ; 2 uses
  %i.akm = load ptr, ptr %43, align 8, !tbaa !59  ; 2 uses
  %i.akn = icmp eq ptr %i.akm, %i.wu
  br i1 %i.akn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683
  %i.ako = load i64, ptr %i.wu, align 8, !tbaa !65
  %i.akp = add i64 %i.ako, 1
  call void @_ZdlPvm(ptr noundef %i.akm, i64 noundef %i.akp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684, %bb.dy
  %.pn293.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aka, %bb.dy ], [ %.pn293.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684 ], [ %.pn293.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683 ] ; 2 uses
  %.234 = phi ptr [ %41, %bb.dy ], [ %.032, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684 ], [ %.032, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683 ] ; 2 uses
  %.4 = phi i1 [ false, %bb.dy ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i684 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683 ]
  %i.akq = load ptr, ptr %42, align 8, !tbaa !59  ; 2 uses
  %i.akr = icmp eq ptr %i.akq, %i.wo
  br i1 %i.akr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i687

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i687: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686
  %i.aks = load i64, ptr %i.wo, align 8, !tbaa !65
  %i.akt = add i64 %i.aks, 1
  call void @_ZdlPvm(ptr noundef %i.akq, i64 noundef %i.akt) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit686, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i687
  %i.aku = icmp eq ptr %41, %.234
  %or.cond10 = select i1 %.4, i1 true, i1 %i.aku
  br i1 %or.cond10, label %.loopexit740, label %.preheader739

.preheader739:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689, %.preheader739
  %i.akv = phi ptr [ %i.akw, %.preheader739 ], [ %.234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689 ]
  %i.akw = getelementptr inbounds i8, ptr %i.akv, i64 -88 ; 3 uses
  call void @_ZN8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.akw) #23
  %i.akx = icmp eq ptr %i.akw, %41
  br i1 %i.akx, label %.loopexit740, label %.preheader739

.loopexit740:                                     ; preds = %.preheader739, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689
  %.pn293.pn.pn.pn.pn.pn736 = phi { ptr, i32 } [ %i.ajz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689.thread ], [ %.pn293.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit689 ], [ %.pn293.pn.pn.pn.pn, %.preheader739 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  br label %bb.ec

bb.ec:                                            ; preds = %.loopexit740, %.loopexit738, %.loopexit744, %.loopexit
  %.pn293.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn293.pn.pn.pn.pn.pn736, %.loopexit740 ], [ %.pn240.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn731, %.loopexit738 ], [ %.pn233.pn.pn.pn.pn.pn726, %.loopexit744 ], [ %.pn.pn.pn, %.loopexit ]
  resume { ptr, i32 } %.pn293.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z17BM_Complexity_O_NRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %.not = icmp ne i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load i64, ptr %i.f, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not3941 = icmp eq i64 %i.g, 0
  %.not.i.not39 = select i1 %.not, i1 true, i1 %.not.i.not3941
  br i1 %.not.i.not39, label %._crit_edge, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.a:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit26
  %i.l = add nsw i64 %.sroa.027.040, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.l, 0
  br i1 %.not.i.not, label %._crit_edge, label %bb.c, !prof !36

._crit_edge:                                      ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = load ptr, ptr %i.m, align 32, !tbaa !38  ; 2 uses
  %.not33 = icmp eq ptr %i.o, %i.p
  br i1 %.not33, label %bb.b, label %_ZNK9benchmark5State5rangeEm.exit

bb.b:                                             ; preds = %._crit_edge
  call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #22
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %._crit_edge
  %i.q = load i64, ptr %i.p, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.q, ptr %i.r, align 8, !tbaa !40
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.a
  %.sroa.027.040 = phi i64 [ %i.g, %.lr.ph ], [ %i.l, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.s = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %_ZNK9benchmark5State10iterationsEv.exit25, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.f, align 16, !tbaa !45
  %i.v = load i64, ptr %0, align 64, !tbaa !46
  %i.w = sub i64 %i.u, %i.v
  %i.x = load i64, ptr %i.i, align 8, !tbaa !47
  %i.y = add nsw i64 %i.w, %i.x
  br label %_ZNK9benchmark5State10iterationsEv.exit25

_ZNK9benchmark5State10iterationsEv.exit25:        ; preds = %bb.c, %bb.d
  %.0.i24 = phi i64 [ %i.y, %bb.d ], [ 0, %bb.c ] ; 2 uses
  store i64 %.0.i24, ptr %i.a, align 8, !tbaa !39
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.a, i64 %.0.i24) #23, !srcloc !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.z = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %_ZNK9benchmark5State10iterationsEv.exit23, !prof !44

bb.e:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit25
  %i.ab = load i64, ptr %i.f, align 16, !tbaa !45
  %i.ac = load i64, ptr %0, align 64, !tbaa !46
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !47
  %i.af = add nsw i64 %i.ad, %i.ae
  %i.ag = sitofp i64 %i.af to double
  br label %_ZNK9benchmark5State10iterationsEv.exit23

_ZNK9benchmark5State10iterationsEv.exit23:        ; preds = %_ZNK9benchmark5State10iterationsEv.exit25, %bb.e
  %.0.i22 = phi double [ %i.ag, %bb.e ], [ 0.000000e+00, %_ZNK9benchmark5State10iterationsEv.exit25 ] ; 2 uses
  store double %.0.i22, ptr %i.b, align 8, !tbaa !49
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.b, double %.0.i22) #23, !srcloc !51
  %i.ah = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZNK9benchmark5State10iterationsEv.exit21, label %_ZNK9benchmark5State10iterationsEv.exit21.thread, !prof !52

_ZNK9benchmark5State10iterationsEv.exit21:        ; preds = %_ZNK9benchmark5State10iterationsEv.exit23, %_ZNK9benchmark5State10iterationsEv.exit
  %.038 = phi i64 [ %i.bg, %_ZNK9benchmark5State10iterationsEv.exit ], [ 0, %_ZNK9benchmark5State10iterationsEv.exit23 ] ; 2 uses
  %i.aj = load i64, ptr %i.f, align 16, !tbaa !45
  %i.ak = load i64, ptr %0, align 64, !tbaa !46
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = load i64, ptr %i.i, align 8, !tbaa !47
  %i.an = add nsw i64 %i.al, %i.am                ; 3 uses
  %i.ao = icmp slt i64 %.038, %i.an
  br i1 %i.ao, label %_ZNK9benchmark5State10iterationsEv.exit19, label %_ZNK9benchmark5State10iterationsEv.exit21.thread

_ZNK9benchmark5State10iterationsEv.exit21.thread: ; preds = %_ZNK9benchmark5State10iterationsEv.exit21, %_ZNK9benchmark5State10iterationsEv.exit, %_ZNK9benchmark5State10iterationsEv.exit23
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.aq = load ptr, ptr %i.j, align 32, !tbaa !38 ; 2 uses
  %.not34 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not34, label %bb.f, label %_ZNK9benchmark5State5rangeEm.exit26

bb.f:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit21.thread
  call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #22
  unreachable

_ZNK9benchmark5State5rangeEm.exit26:              ; preds = %_ZNK9benchmark5State10iterationsEv.exit21.thread
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !39
  %i.as = sitofp i64 %i.ar to double
  %i.at = fmul nnan double %i.as, 4.200000e+01
  %i.au = fmul nnan double %i.at, 1.000000e-09
  call void @_ZN9benchmark5State16SetIterationTimeEd(ptr noundef nonnull align 64 dereferenceable(184) %0, double noundef %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.av = icmp sgt i64 %.sroa.027.040, 0
  br i1 %i.av, label %bb.a, label %bb.g

bb.g:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit26
  call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #22
  unreachable

_ZNK9benchmark5State10iterationsEv.exit19:        ; preds = %_ZNK9benchmark5State10iterationsEv.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.an, ptr %i.c, align 8, !tbaa !39
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.c, i64 %i.an) #23, !srcloc !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.aw = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.h, label %_ZNK9benchmark5State10iterationsEv.exit, !prof !44

bb.h:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit19
  %i.ay = load i64, ptr %i.f, align 16, !tbaa !45
  %i.az = load i64, ptr %0, align 64, !tbaa !46
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !47
  %i.bc = add nsw i64 %i.ba, %i.bb
  %i.bd = sitofp i64 %i.bc to double
  br label %_ZNK9benchmark5State10iterationsEv.exit

_ZNK9benchmark5State10iterationsEv.exit:          ; preds = %_ZNK9benchmark5State10iterationsEv.exit19, %bb.h
  %.0.i = phi double [ %i.bd, %bb.h ], [ 0.000000e+00, %_ZNK9benchmark5State10iterationsEv.exit19 ]
  %i.be = load double, ptr %i.b, align 8, !tbaa !49
  %i.bf = fmul double %.0.i, %i.be                ; 2 uses
  store double %i.bf, ptr %i.b, align 8, !tbaa !49
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.b, double %i.bf) #23, !srcloc !51
  %i.bg = add nuw nsw i64 %.038, 1
  %i.bh = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZNK9benchmark5State10iterationsEv.exit21, label %_ZNK9benchmark5State10iterationsEv.exit21.thread, !prof !53, !llvm.loop !94
}

declare noundef ptr @_ZN9benchmark8internal9Benchmark15RangeMultiplierEi(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %.not = icmp ne i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load i64, ptr %i.f, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not4143 = icmp eq i64 %i.g, 0
  %.not.i.not41 = select i1 %.not, i1 true, i1 %.not.i.not4143
  br i1 %.not.i.not41, label %._crit_edge, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.a:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit27
  %i.l = add nsw i64 %.sroa.029.042, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.l, 0
  br i1 %.not.i.not, label %._crit_edge, label %bb.c, !prof !36

._crit_edge:                                      ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.p = load ptr, ptr %i.m, align 32, !tbaa !38  ; 2 uses
  %.not35 = icmp eq ptr %i.o, %i.p
  br i1 %.not35, label %bb.b, label %_ZNK9benchmark5State5rangeEm.exit

bb.b:                                             ; preds = %._crit_edge
  call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #22
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %._crit_edge
  %i.q = load i64, ptr %i.p, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.q, ptr %i.r, align 8, !tbaa !40
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.a
  %.sroa.029.042 = phi i64 [ %i.g, %.lr.ph ], [ %i.l, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.s = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %_ZNK9benchmark5State10iterationsEv.exit26, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.f, align 16, !tbaa !45
  %i.v = load i64, ptr %0, align 64, !tbaa !46
  %i.w = sub i64 %i.u, %i.v
  %i.x = load i64, ptr %i.i, align 8, !tbaa !47
  %i.y = add nsw i64 %i.w, %i.x
  br label %_ZNK9benchmark5State10iterationsEv.exit26

_ZNK9benchmark5State10iterationsEv.exit26:        ; preds = %bb.c, %bb.d
  %.0.i25 = phi i64 [ %i.y, %bb.d ], [ 0, %bb.c ] ; 2 uses
  store i64 %.0.i25, ptr %i.a, align 8, !tbaa !39
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.a, i64 %.0.i25) #23, !srcloc !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.z = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %_ZNK9benchmark5State10iterationsEv.exit24, !prof !44

bb.e:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit26
  %i.ab = load i64, ptr %i.f, align 16, !tbaa !45
  %i.ac = load i64, ptr %0, align 64, !tbaa !46
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !47
  %i.af = add nsw i64 %i.ad, %i.ae
  %i.ag = sitofp i64 %i.af to double
  br label %_ZNK9benchmark5State10iterationsEv.exit24

_ZNK9benchmark5State10iterationsEv.exit24:        ; preds = %_ZNK9benchmark5State10iterationsEv.exit26, %bb.e
  %.0.i23 = phi double [ %i.ag, %bb.e ], [ 0.000000e+00, %_ZNK9benchmark5State10iterationsEv.exit26 ] ; 2 uses
  store double %.0.i23, ptr %i.b, align 8, !tbaa !49
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.b, double %.0.i23) #23, !srcloc !51
  %i.ah = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZNK9benchmark5State10iterationsEv.exit22, label %_ZNK9benchmark5State10iterationsEv.exit22.thread, !prof !52

_ZNK9benchmark5State10iterationsEv.exit22:        ; preds = %_ZNK9benchmark5State10iterationsEv.exit24, %_ZNK9benchmark5State10iterationsEv.exit
  %.040 = phi i64 [ %i.bj, %_ZNK9benchmark5State10iterationsEv.exit ], [ 0, %_ZNK9benchmark5State10iterationsEv.exit24 ] ; 2 uses
  %i.aj = load i64, ptr %i.f, align 16, !tbaa !45
  %i.ak = load i64, ptr %0, align 64, !tbaa !46
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = load i64, ptr %i.i, align 8, !tbaa !47
  %i.an = add nsw i64 %i.al, %i.am                ; 3 uses
  %i.ao = icmp slt i64 %.040, %i.an
  br i1 %i.ao, label %_ZNK9benchmark5State10iterationsEv.exit20, label %_ZNK9benchmark5State10iterationsEv.exit22.thread

_ZNK9benchmark5State10iterationsEv.exit22.thread: ; preds = %_ZNK9benchmark5State10iterationsEv.exit22, %_ZNK9benchmark5State10iterationsEv.exit, %_ZNK9benchmark5State10iterationsEv.exit24
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.aq = load ptr, ptr %i.j, align 32, !tbaa !38 ; 2 uses
  %.not36 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not36, label %bb.f, label %_ZNK9benchmark5State5rangeEm.exit27

bb.f:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit22.thread
  call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #22
  unreachable

_ZNK9benchmark5State5rangeEm.exit27:              ; preds = %_ZNK9benchmark5State10iterationsEv.exit22.thread
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !39
  %i.as = sitofp i64 %i.ar to double              ; 2 uses
  %i.at = fmul nnan double %i.as, f0x3FF71547652B82FE
  %i.au = call noundef double @log(double noundef %i.as) #23, !tbaa !4
  %i.av = fmul double %i.au, %i.at
  %i.aw = fmul double %i.av, 4.200000e+01
  %i.ax = fmul double %i.aw, 1.000000e-09
  call void @_ZN9benchmark5State16SetIterationTimeEd(ptr noundef nonnull align 64 dereferenceable(184) %0, double noundef %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ay = icmp sgt i64 %.sroa.029.042, 0
  br i1 %i.ay, label %bb.a, label %bb.g

bb.g:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit27
  call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #22
  unreachable

_ZNK9benchmark5State10iterationsEv.exit20:        ; preds = %_ZNK9benchmark5State10iterationsEv.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.an, ptr %i.c, align 8, !tbaa !39
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.c, i64 %i.an) #23, !srcloc !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.az = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.h, label %_ZNK9benchmark5State10iterationsEv.exit, !prof !44

bb.h:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit20
  %i.bb = load i64, ptr %i.f, align 16, !tbaa !45
  %i.bc = load i64, ptr %0, align 64, !tbaa !46
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = load i64, ptr %i.i, align 8, !tbaa !47
  %i.bf = add nsw i64 %i.bd, %i.be
  %i.bg = sitofp i64 %i.bf to double
  br label %_ZNK9benchmark5State10iterationsEv.exit

_ZNK9benchmark5State10iterationsEv.exit:          ; preds = %_ZNK9benchmark5State10iterationsEv.exit20, %bb.h
  %.0.i = phi double [ %i.bg, %bb.h ], [ 0.000000e+00, %_ZNK9benchmark5State10iterationsEv.exit20 ]
  %i.bh = load double, ptr %i.b, align 8, !tbaa !49
  %i.bi = fmul double %.0.i, %i.bh                ; 2 uses
  store double %i.bi, ptr %i.b, align 8, !tbaa !49
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.b, double %i.bi) #23, !srcloc !51
  %i.bj = add nuw nsw i64 %.040, 1
  %i.bk = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %_ZNK9benchmark5State10iterationsEv.exit22, label %_ZNK9benchmark5State10iterationsEv.exit22.thread, !prof !53, !llvm.loop !95
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi(ptr noundef nonnull align 64 dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #1 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %.not = icmp ne i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load i64, ptr %i.f, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not3739 = icmp eq i64 %i.g, 0
  %.not.i.not37 = select i1 %.not, i1 true, i1 %.not.i.not3739
  br i1 %.not.i.not37, label %._crit_edge, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.a:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit
  %i.l = add nsw i64 %.sroa.026.038, -1           ; 2 uses
  %.not.i.not = icmp eq i64 %i.l, 0
  br i1 %.not.i.not, label %._crit_edge, label %bb.b, !prof !36

._crit_edge:                                      ; preds = %bb.a, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.m, ptr %i.n, align 8, !tbaa !40
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %.sroa.026.038 = phi i64 [ %i.g, %.lr.ph ], [ %i.l, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.o = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZNK9benchmark5State10iterationsEv.exit25, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.f, align 16, !tbaa !45
  %i.r = load i64, ptr %0, align 64, !tbaa !46
  %i.s = sub i64 %i.q, %i.r
  %i.t = load i64, ptr %i.i, align 8, !tbaa !47
  %i.u = add nsw i64 %i.s, %i.t
  br label %_ZNK9benchmark5State10iterationsEv.exit25

_ZNK9benchmark5State10iterationsEv.exit25:        ; preds = %bb.b, %bb.c
  %.0.i24 = phi i64 [ %i.u, %bb.c ], [ 0, %bb.b ] ; 2 uses
  store i64 %.0.i24, ptr %i.a, align 8, !tbaa !39
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.a, i64 %.0.i24) #23, !srcloc !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.v = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZNK9benchmark5State10iterationsEv.exit23, !prof !44

bb.d:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit25
  %i.x = load i64, ptr %i.f, align 16, !tbaa !45
  %i.y = load i64, ptr %0, align 64, !tbaa !46
  %i.z = sub i64 %i.x, %i.y
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !47
  %i.ab = add nsw i64 %i.z, %i.aa
  %i.ac = sitofp i64 %i.ab to double
  br label %_ZNK9benchmark5State10iterationsEv.exit23

_ZNK9benchmark5State10iterationsEv.exit23:        ; preds = %_ZNK9benchmark5State10iterationsEv.exit25, %bb.d
  %.0.i22 = phi double [ %i.ac, %bb.d ], [ 0.000000e+00, %_ZNK9benchmark5State10iterationsEv.exit25 ] ; 2 uses
  store double %.0.i22, ptr %i.b, align 8, !tbaa !49
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.b, double %.0.i22) #23, !srcloc !51
  %i.ad = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZNK9benchmark5State10iterationsEv.exit21, label %_ZNK9benchmark5State10iterationsEv.exit21.thread, !prof !52

_ZNK9benchmark5State10iterationsEv.exit21:        ; preds = %_ZNK9benchmark5State10iterationsEv.exit23, %_ZNK9benchmark5State10iterationsEv.exit
  %.036 = phi i64 [ %i.bc, %_ZNK9benchmark5State10iterationsEv.exit ], [ 0, %_ZNK9benchmark5State10iterationsEv.exit23 ] ; 2 uses
  %i.af = load i64, ptr %i.f, align 16, !tbaa !45
  %i.ag = load i64, ptr %0, align 64, !tbaa !46
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = load i64, ptr %i.i, align 8, !tbaa !47
  %i.aj = add nsw i64 %i.ah, %i.ai                ; 3 uses
  %i.ak = icmp slt i64 %.036, %i.aj
  br i1 %i.ak, label %_ZNK9benchmark5State10iterationsEv.exit19, label %_ZNK9benchmark5State10iterationsEv.exit21.thread

_ZNK9benchmark5State10iterationsEv.exit21.thread: ; preds = %_ZNK9benchmark5State10iterationsEv.exit21, %_ZNK9benchmark5State10iterationsEv.exit, %_ZNK9benchmark5State10iterationsEv.exit23
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.am = load ptr, ptr %i.j, align 32, !tbaa !38 ; 2 uses
  %.not32 = icmp eq ptr %i.al, %i.am
  br i1 %.not32, label %bb.e, label %_ZNK9benchmark5State5rangeEm.exit

bb.e:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit21.thread
  call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef 998, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm) #22
  unreachable

_ZNK9benchmark5State5rangeEm.exit:                ; preds = %_ZNK9benchmark5State10iterationsEv.exit21.thread
  %i.an = load i64, ptr %i.am, align 8, !tbaa !39
  %i.ao = sitofp i64 %i.an to double
  %i.ap = fmul nnan double %i.ao, 4.200000e+01
  %i.aq = fmul nnan double %i.ap, 1.000000e-09
  call void @_ZN9benchmark5State16SetIterationTimeEd(ptr noundef nonnull align 64 dereferenceable(184) %0, double noundef %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ar = icmp sgt i64 %.sroa.026.038, 0
  br i1 %i.ar, label %bb.a, label %bb.f

bb.f:                                             ; preds = %_ZNK9benchmark5State5rangeEm.exit
  call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 1142, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv) #22
  unreachable

_ZNK9benchmark5State10iterationsEv.exit19:        ; preds = %_ZNK9benchmark5State10iterationsEv.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !39
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) align 8 dereferenceable(8) %i.c, i64 %i.aj) #23, !srcloc !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.as = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.g, label %_ZNK9benchmark5State10iterationsEv.exit, !prof !44

bb.g:                                             ; preds = %_ZNK9benchmark5State10iterationsEv.exit19
  %i.au = load i64, ptr %i.f, align 16, !tbaa !45
  %i.av = load i64, ptr %0, align 64, !tbaa !46
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !47
  %i.ay = add nsw i64 %i.aw, %i.ax
  %i.az = sitofp i64 %i.ay to double
  br label %_ZNK9benchmark5State10iterationsEv.exit

_ZNK9benchmark5State10iterationsEv.exit:          ; preds = %_ZNK9benchmark5State10iterationsEv.exit19, %bb.g
  %.0.i = phi double [ %i.az, %bb.g ], [ 0.000000e+00, %_ZNK9benchmark5State10iterationsEv.exit19 ]
  %i.ba = load double, ptr %i.b, align 8, !tbaa !49
  %i.bb = fmul double %.0.i, %i.ba                ; 2 uses
  store double %i.bb, ptr %i.b, align 8, !tbaa !49
  call void asm sideeffect "", "=*r|m,0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(double) align 8 dereferenceable(8) %i.b, double %i.bb) #23, !srcloc !51
  %i.bc = add nuw nsw i64 %.036, 1
  %i.bd = load i8, ptr %i.h, align 8, !tbaa !41, !range !42, !noundef !43
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZNK9benchmark5State10iterationsEv.exit21, label %_ZNK9benchmark5State10iterationsEv.exit21.thread, !prof !53, !llvm.loop !96
}

declare noundef ptr @_ZN9benchmark8internal9Benchmark6RangesERKSt6vectorISt4pairIllESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z14RunOutputTestsiPPc(i32 noundef %0, ptr noundef %1)
  ret i32 0
}

declare void @_Z14RunOutputTestsiPPc(i32 noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @"_ZN3$_08__invokeEl"(i64 %0) #9 align 2 {
bb.a:
  ret double 1.000000e+00
}

declare noundef i32 @_Z16SetSubstitutionsSt16initializer_listISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE(ptr, i64) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !61
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.d, ptr %i.b, align 8, !tbaa !39
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !59
  %i.g = load i64, ptr %i.b, align 8, !tbaa !39
  store i64 %i.g, ptr %i.c, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !65
  store i8 %i.i, ptr %i.h, align 1, !tbaa !65
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.j = load i64, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !60
  %i.l = load ptr, ptr %0, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !61
  %i.p = load ptr, ptr %2, align 8, !tbaa !59     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !60   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.r, ptr %i.a, align 8, !tbaa !39
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i7, label %._crit_edge.i.i6

.noexc.i7:                                        ; preds = %bb.d
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %bb.h    ; 2 uses

.noexc8:                                          ; preds = %.noexc.i7
  store ptr %i.t, ptr %i.n, align 8, !tbaa !59
  %i.u = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.u, ptr %i.o, align 8, !tbaa !65
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %.noexc8, %bb.d
  %i.v = phi ptr [ %i.t, %.noexc8 ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %i.r, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i6
  %i.w = load i8, ptr %i.p, align 1, !tbaa !65
  store i8 %i.w, ptr %i.v, align 1, !tbaa !65
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i6
  %i.x = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %i.y, align 8, !tbaa !60
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.h:                                             ; preds = %.noexc.i7
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %0, align 8, !tbaa !59    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.c
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !65
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(11) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !61
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.d, ptr %i.b, align 8, !tbaa !39
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !59
  %i.g = load i64, ptr %i.b, align 8, !tbaa !39
  store i64 %i.g, ptr %i.c, align 8, !tbaa !65
end_hunk_2
