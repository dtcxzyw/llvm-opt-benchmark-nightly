Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/statistics?download=true
inline.NumInlined: 942
inline.NumDeleted: 390
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.benchmark::internal::LogType" = type { ptr }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::vector.6" = type { %"struct.std::_Vector_base.7" }
%"struct.std::_Vector_base.7" = type { %"struct.std::_Vector_base<benchmark::BenchmarkReporter::Run, std::allocator<benchmark::BenchmarkReporter::Run>>::_Vector_impl" }
%"struct.std::_Vector_base<benchmark::BenchmarkReporter::Run, std::allocator<benchmark::BenchmarkReporter::Run>>::_Vector_impl" = type { %"struct.std::_Vector_base<benchmark::BenchmarkReporter::Run, std::allocator<benchmark::BenchmarkReporter::Run>>::_Vector_impl_data" }
%"struct.std::_Vector_base<benchmark::BenchmarkReporter::Run, std::allocator<benchmark::BenchmarkReporter::Run>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.43" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::map.20" = type { %"class.std::_Rb_tree.21" }
%"class.std::_Rb_tree.21" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, CounterStat>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, CounterStat>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, CounterStat>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, CounterStat>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.benchmark::Counter" = type { double, i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.benchmark::BenchmarkReporter::Run" = type { %"struct.benchmark::BenchmarkName", i64, i64, i32, %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::basic_string", i32, %"class.std::__cxx11::basic_string", i64, i64, i64, i64, i32, double, double, double, i8, i32, ptr, i64, ptr, i8, i8, %"class.std::map", %"struct.benchmark::MemoryManager::Result", double }
%"struct.benchmark::BenchmarkName" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.benchmark::MemoryManager::Result" = type { i64, i64, i64, i64, i64 }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }

$_ZN9benchmark17BenchmarkReporter3RunC2Ev = comdat any

$_ZN9benchmark17BenchmarkReporter3RunD2Ev = comdat any

$_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN9benchmark13BenchmarkNameD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_ = comdat any

$_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_ = comdat any

$_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_ = comdat any

$_ZN9benchmark13BenchmarkNameC2ERKS0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_ = comdat any

$_ZN9benchmark17BenchmarkReporter3RunC2EOS1_ = comdat any

$_ZN9benchmark13BenchmarkNameC2EOS0_ = comdat any

$_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log = comdat any

$_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log = comdat any

$_ZSt19piecewise_construct = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log = linkonce_odr hidden local_unnamed_addr global %"class.benchmark::internal::LogType" zeroinitializer, comdat, align 8
@_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log = linkonce_odr hidden global i64 0, comdat, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_statistics.cc, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef double @_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.07.i.i = phi double [ %i.f, %.lr.ph.i.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = load double, ptr %.sroa.02.06.i.i, align 8, !tbaa !18
  %i.f = fadd double %.07.i.i, %i.e               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %"_ZNK9benchmark3$_0clERKSt6vectorIdSaIdEE.exit", label %.lr.ph.i.i, !llvm.loop !0

"_ZNK9benchmark3$_0clERKSt6vectorIdSaIdEE.exit":  ; preds = %.lr.ph.i.i
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = uitofp i64 %i.k to double
  %i.m = fdiv nnan double 1.000000e+00, %i.l
  %i.n = fmul double %i.m, %i.f
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %"_ZNK9benchmark3$_0clERKSt6vectorIdSaIdEE.exit"
  %.0 = phi double [ %i.n, %"_ZNK9benchmark3$_0clERKSt6vectorIdSaIdEE.exit" ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN9benchmark16StatisticsMedianERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp ult i64 %i.g, 3
  %i.i = icmp eq ptr %i.c, %i.b                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi double [ %i.k, %.lr.ph.i.i.i ], [ 0.000000e+00, %bb.b ]
  %.sroa.02.06.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.j = load double, ptr %.sroa.02.06.i.i.i, align 8, !tbaa !18
  %i.k = fadd double %.07.i.i.i, %i.j             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.b
  br i1 %.not.i.i.i, label %"_ZNK9benchmark3$_0clERKSt6vectorIdSaIdEE.exit.i", label %.lr.ph.i.i.i, !llvm.loop !0

"_ZNK9benchmark3$_0clERKSt6vectorIdSaIdEE.exit.i": ; preds = %.lr.ph.i.i.i
  %i.m = uitofp nneg i64 %i.g to double
  %i.n = fdiv nnan double 1.000000e+00, %i.m
  %i.o = fmul double %i.n, %i.k
  br label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.p, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !88

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %bb.c
  %1 = phi ptr [ %i.b, %bb.c ], [ %.pre26, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %2 = phi ptr [ %i.c, %bb.c ], [ %.pre, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  %3 = phi ptr [ null, %bb.c ], [ %i.q, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ] ; 13 uses
  %.pre-phi = ptrtoint ptr %1 to i64
  %.pre-phi31 = ptrtoint ptr %2 to i64
  %i.r = sub i64 %.pre-phi, %.pre-phi31           ; 8 uses
  %i.s = icmp sgt i64 %i.r, 8
  br i1 %i.s, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %3, ptr align 8 %2, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.t = icmp eq i64 %i.r, 8
  br i1 %i.t, label %bb.h, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load double, ptr %2, align 8, !tbaa !18
  store double %i.u, ptr %3, align 8, !tbaa !18
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit:                ; preds = %bb.f, %bb.g, %bb.h
  %i.v = ashr exact i64 %i.r, 1                   ; 3 uses
  %.idx = and i64 %i.v, -8                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 4 uses
  %4 = icmp eq ptr %1, %2
  %i.x = icmp eq i64 %.idx, %i.r
  %or.cond.i = select i1 %4, i1 true, i1 %i.x
  br i1 %or.cond.i, label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
  %i.y = getelementptr inbounds i8, ptr %3, i64 %i.r
  %i.z = ashr exact i64 %i.r, 3
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = xor i64 %i.ab, 126
  invoke void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %3, ptr %i.w, ptr nonnull %i.y, i64 noundef %i.ac)
          to label %._ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit_crit_edge unwind label %bb.k

._ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit_crit_edge: ; preds = %bb.i
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !21
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !22
  %.pre32 = ptrtoint ptr %.pre27 to i64
  %.pre34 = ptrtoint ptr %.pre28 to i64
  %.pre36 = sub i64 %.pre32, %.pre34
  br label %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit

_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit: ; preds = %._ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit_crit_edge, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
  %.pre-phi37 = phi i64 [ %.pre36, %._ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit_crit_edge ], [ %i.r, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit ]
  %i.ad = and i64 %.pre-phi37, 8
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
  %i.ae = load double, ptr %i.w, align 8, !tbaa !18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i15 = icmp eq ptr %3, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIdSaIdEED2Ev.exit16, label %bb.m

bb.l:                                             ; preds = %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
  %or.cond.i.i = icmp ult i64 %i.v, 16
  br i1 %or.cond.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre.i.i = load double, ptr %3, align 8, !tbaa !18 ; 2 uses
  %i.ah = add nsw i64 %i.v, -16                   ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %i.ak = phi double [ %i.ap, %.lr.ph.i.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.al = phi ptr [ %i.ao, %.lr.ph.i.i.prol ], [ %i.ag, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i.prol = phi ptr [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %3, %.lr.ph.preheader.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.am = load double, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %i.an = fcmp olt double %i.ak, %i.am            ; 2 uses
  %spec.select.i.i.prol = select i1 %i.an, ptr %i.al, ptr %.sroa.02.010.i.i.prol ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ap = select i1 %i.an, double %i.am, double %i.ak ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !86

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %.unr = phi double [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.ap, %.lr.ph.i.i.prol ]
  %.unr47 = phi ptr [ %i.ag, %.lr.ph.preheader.i.i ], [ %i.ao, %.lr.ph.i.i.prol ]
  %.sroa.02.010.i.i.unr = phi ptr [ %3, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.aq = icmp ult i64 %i.ah, 24
  br i1 %i.aq, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.ar = phi double [ %i.bi, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.as = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %.unr47, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i.3, %.lr.ph.i.i ], [ %.sroa.02.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.at = load double, ptr %i.as, align 8, !tbaa !18 ; 2 uses
  %i.au = fcmp olt double %i.ar, %i.at            ; 2 uses
  %spec.select.i.i = select i1 %i.au, ptr %i.as, ptr %.sroa.02.010.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.aw = select i1 %i.au, double %i.at, double %i.ar ; 2 uses
  %i.ax = load double, ptr %i.av, align 8, !tbaa !18 ; 2 uses
  %i.ay = fcmp olt double %i.aw, %i.ax            ; 2 uses
  %spec.select.i.i.1 = select i1 %i.ay, ptr %i.av, ptr %spec.select.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.ba = select i1 %i.ay, double %i.ax, double %i.aw ; 2 uses
  %i.bb = load double, ptr %i.az, align 8, !tbaa !18 ; 2 uses
  %i.bc = fcmp olt double %i.ba, %i.bb            ; 2 uses
  %spec.select.i.i.2 = select i1 %i.bc, ptr %i.az, ptr %spec.select.i.i.1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.be = select i1 %i.bc, double %i.bb, double %i.ba ; 2 uses
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !18 ; 2 uses
  %i.bg = fcmp olt double %i.be, %i.bf            ; 2 uses
  %spec.select.i.i.3 = select i1 %i.bg, ptr %i.bd, ptr %spec.select.i.i.2 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.bh, %i.w
  %i.bi = select i1 %i.bg, double %i.bf, double %i.be
  br i1 %.not.i.i.3, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !87

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.l
  %.sroa.02.2.i.i = phi ptr [ %3, %bb.l ], [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ]
  %i.bj = load double, ptr %i.w, align 8, !tbaa !18
  %i.bk = load double, ptr %.sroa.02.2.i.i, align 8, !tbaa !18
  %i.bl = fadd double %i.bj, %i.bk
  %i.bm = fmul double %i.bl, 5.000000e-01
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit, %bb.j
  %.0 = phi double [ %i.ae, %bb.j ], [ %i.bm, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit ]
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.f) #27
  br label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.f) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit16

_ZNSt6vectorIdSaIdEED2Ev.exit16:                  ; preds = %bb.k, %bb.m
  resume { ptr, i32 } %i.af

_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit: ; preds = %"_ZNK9benchmark3$_0clERKSt6vectorIdSaIdEE.exit.i", %bb.b, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.1 = phi double [ %.0, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %i.o, %"_ZNK9benchmark3$_0clERKSt6vectorIdSaIdEE.exit.i" ], [ 0.000000e+00, %bb.b ]
  ret double %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden noundef double @_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %"_ZNK9benchmark3$_2clEd.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.07.i.i.i = phi double [ %i.f, %.lr.ph.i.i.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = load double, ptr %.sroa.02.06.i.i.i, align 8, !tbaa !18
  %i.f = fadd double %.07.i.i.i, %i.e             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i.i, label %bb.b, label %.lr.ph.i.i.i, !llvm.loop !0

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3
  %i.l = uitofp i64 %i.k to double                ; 3 uses
  %i.m = fdiv nnan double 1.000000e+00, %i.l      ; 2 uses
  %i.n = fmul double %i.m, %i.f                   ; 2 uses
  %i.o = icmp eq i64 %i.j, 8
  br i1 %i.o, label %"_ZNK9benchmark3$_2clEd.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.010.i.i = phi double [ %i.q, %.lr.ph.i.i ], [ 0.000000e+00, %bb.b ]
  %.sroa.0.09.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.p = load double, ptr %.sroa.0.09.i.i, align 8, !tbaa !18 ; 2 uses
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %.010.i.i) ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.0.09.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit", label %.lr.ph.i.i, !llvm.loop !1

"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit":  ; preds = %.lr.ph.i.i
  %i.s = fmul double %i.m, %i.q
  %i.t = fadd nnan double %i.l, -1.000000e+00
  %i.u = fdiv double %i.l, %i.t
  %i.v = fmul double %i.n, %i.n
  %i.w = fsub double %i.s, %i.v
  %i.x = fmul double %i.u, %i.w                   ; 2 uses
  %i.y = fcmp olt double %i.x, 0.000000e+00
  br i1 %i.y, label %"_ZNK9benchmark3$_2clEd.exit", label %bb.c

bb.c:                                             ; preds = %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit"
  %i.z = tail call double @sqrt(double noundef %i.x) #28
  br label %"_ZNK9benchmark3$_2clEd.exit"

"_ZNK9benchmark3$_2clEd.exit":                    ; preds = %bb.a, %bb.c, %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit", %bb.b
  %.0 = phi double [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit" ], [ %i.z, %bb.c ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden noundef double @_ZN9benchmark12StatisticsCVERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !22     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp ult i64 %i.g, 2
  %i.i = icmp eq ptr %i.c, %i.b
  %or.cond = or i1 %i.i, %i.h
  br i1 %or.cond, label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi double [ %i.k, %.lr.ph.i.i.i.i ], [ 0.000000e+00, %bb.a ]
  %.sroa.02.06.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = load double, ptr %.sroa.02.06.i.i.i.i, align 8, !tbaa !18
  %i.k = fadd double %.07.i.i.i.i, %i.j           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.b
  br i1 %.not.i.i.i.i, label %bb.b, label %.lr.ph.i.i.i.i, !llvm.loop !0

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = uitofp i64 %i.g to double                ; 3 uses
  %i.n = fdiv nnan double 1.000000e+00, %i.m      ; 3 uses
  %i.o = fmul double %i.n, %i.k                   ; 2 uses
  %i.p = icmp eq i64 %i.f, 8
  br i1 %i.p, label %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.010.i.i.i = phi double [ %i.r, %.lr.ph.i.i.i ], [ 0.000000e+00, %bb.b ]
  %.sroa.0.09.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.q = load double, ptr %.sroa.0.09.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.r = tail call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %.010.i.i.i) ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.0.09.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.b
  br i1 %.not.i.i.i, label %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i", label %.lr.ph.i.i.i, !llvm.loop !1

"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i": ; preds = %.lr.ph.i.i.i
  %i.t = fmul double %i.n, %i.r
  %i.u = fadd nnan double %i.m, -1.000000e+00
  %i.v = fdiv double %i.m, %i.u
  %i.w = fmul double %i.o, %i.o
  %i.x = fsub double %i.t, %i.w
  %i.y = fmul double %i.v, %i.x                   ; 2 uses
  %i.z = fcmp olt double %i.y, 0.000000e+00
  br i1 %i.z, label %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit, label %bb.c

bb.c:                                             ; preds = %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i"
  %i.aa = tail call double @sqrt(double noundef %i.y) #28
  br label %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit

_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit: ; preds = %bb.b, %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i", %bb.c
  %.0.i = phi double [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i" ], [ %i.aa, %bb.c ]
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit, %.lr.ph.i.i.i7
  %.07.i.i.i = phi double [ %i.ac, %.lr.ph.i.i.i7 ], [ 0.000000e+00, %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit ]
  %.sroa.02.06.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i7 ], [ %i.c, %_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE.exit ] ; 2 uses
  %i.ab = load double, ptr %.sroa.02.06.i.i.i, align 8, !tbaa !18
  %i.ac = fadd double %.07.i.i.i, %i.ab           ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i8, label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit, label %.lr.ph.i.i.i7, !llvm.loop !0

_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit: ; preds = %.lr.ph.i.i.i7
  %i.ae = fmul double %i.n, %i.ac                 ; 2 uses
  %i.af = fcmp oeq double %i.ae, 0.000000e+00
  br i1 %i.af, label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit.thread, label %_ZSt10fpclassifyd.exit.thread

_ZSt10fpclassifyd.exit.thread:                    ; preds = %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit
  %i.ag = fdiv double %.0.i, %i.ae
  br label %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit.thread

_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit.thread: ; preds = %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit, %_ZSt10fpclassifyd.exit.thread, %bb.a
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ %i.ag, %_ZSt10fpclassifyd.exit.thread ], [ 0.000000e+00, %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit ]
  ret double %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.6") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.43", align 1     ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::vector", align 8       ; 15 uses
  %6 = alloca %"class.std::vector", align 8       ; 17 uses
  %7 = alloca %"class.std::map.20", align 8       ; 11 uses
  %.sroa.0271 = alloca %"class.benchmark::Counter", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 36 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %1, align 8, !tbaa !93     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93   ; 5 uses
  %.not5.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not5.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEZNS2_12ComputeStatsERKS9_E3$_0ENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.a ]
  %.sroa.02.06.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.02.06.i.i, i64 352
  %.val.i.i.i = load i32, ptr %i.f, align 8, !tbaa !48
  %.not4.i.i = icmp ne i32 %.val.i.i.i, 0
  %i.g = zext i1 %.not4.i.i to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.g ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 592 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.e
  br i1 %.not.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEZNS2_12ComputeStatsERKS9_E3$_0ENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit", label %.lr.ph.i.i, !llvm.loop !90

"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEZNS2_12ComputeStatsERKS9_E3$_0ENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit": ; preds = %.lr.ph.i.i, %bb.a
  %.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 592                 ; 4 uses
  %i.m = sub i64 %i.l, %.0.lcssa.i.i
  %i.n = icmp ult i64 %i.m, 2
end_hunk_0
begin_hunk_1_@_ZN9benchmark13BenchmarkNameD2Ev:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !68
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.aq = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !68
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !68
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !117

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not1 = icmp eq ptr %0, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit
  %.02 = phi ptr [ %.0.val, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit ], [ %0, %bb.a ] ; 7 uses
  %i.a = getelementptr i8, ptr %.02, i64 24
  %.0.val6 = load ptr, ptr %i.a, align 8, !tbaa !83
  tail call fastcc void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef %.0.val6)
  %i.b = getelementptr i8, ptr %.02, i64 16
  %.0.val = load ptr, ptr %i.b, align 8, !tbaa !84 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %.02, i64 80
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.02, i64 96
  %.val1.i.i.i = load ptr, ptr %i.e, align 8
  %i.f = ptrtoint ptr %.val1.i.i.i to i64
  %i.g = ptrtoint ptr %.val.i.i.i to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.h) #27
  br label %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i

_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02, i64 48 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !68
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #27
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit: ; preds = %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.02, i64 noundef 104) #27
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !118

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit, %bb.a
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit
  %.05 = phi ptr [ %i.x, %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit ], [ %0, %bb.a ] ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 496
  %i.b = getelementptr inbounds nuw i8, ptr %.05, i64 512
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i: ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.05, i64 360
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05, i64 376 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !68
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05, i64 320
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05, i64 336 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !68
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 280
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05, i64 296 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !68
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #27
  br label %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit

_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  tail call void @_ZN9benchmark13BenchmarkNameD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(592) %.05) #28
  %i.x = getelementptr inbounds nuw i8, ptr %.05, i64 592 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 3
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph58

.lr.ph:                                           ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.g = icmp eq i64 %i.l, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph58, !llvm.loop !120

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.012.023.lcssa = phi ptr [ %2, %.lr.ph.preheader ], [ %.sroa.012.0..sroa.010.1.i.i, %.lr.ph ]
  %.sroa.015.022.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.010.1.i.i..sroa.015.0, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(ptr %.sroa.015.022.lcssa, ptr nonnull %i.h, ptr %.sroa.012.023.lcssa)
  %i.i = load double, ptr %.sroa.015.022.lcssa, align 8, !tbaa !18
  %i.j = load double, ptr %1, align 8, !tbaa !18
  store double %i.j, ptr %.sroa.015.022.lcssa, align 8, !tbaa !18
  store double %i.i, ptr %1, align 8, !tbaa !18
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit

.lr.ph58:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.015.02257 = phi ptr [ %.sroa.010.1.i.i..sroa.015.0, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 14 uses
  %.sroa.012.02356 = phi ptr [ %.sroa.012.0..sroa.010.1.i.i, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.02455 = phi i64 [ %i.l, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %i.k = phi i64 [ %i.am, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.l = add nsw i64 %.02455, -1                  ; 2 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.015.02257, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.015.02257, i64 8 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.012.02356, i64 -8 ; 3 uses
  %i.q = load double, ptr %i.o, align 8, !tbaa !18 ; 5 uses
  %i.r = load double, ptr %i.n, align 8, !tbaa !18 ; 5 uses
  %i.s = fcmp olt double %i.q, %i.r
  %i.t = load double, ptr %i.p, align 8, !tbaa !18 ; 6 uses
  br i1 %i.s, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph58
  %i.u = fcmp olt double %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = load double, ptr %.sroa.015.02257, align 8, !tbaa !18
  store double %i.r, ptr %.sroa.015.02257, align 8, !tbaa !18
  store double %i.v, ptr %i.n, align 8, !tbaa !18
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.d:                                             ; preds = %bb.b
  %i.w = fcmp olt double %i.q, %i.t
  %i.x = load double, ptr %.sroa.015.02257, align 8, !tbaa !18 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double %i.t, ptr %.sroa.015.02257, align 8, !tbaa !18
  store double %i.x, ptr %i.p, align 8, !tbaa !18
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.f:                                             ; preds = %bb.d
  store double %i.q, ptr %.sroa.015.02257, align 8, !tbaa !18
  store double %i.x, ptr %i.o, align 8, !tbaa !18
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.g:                                             ; preds = %.lr.ph58
  %i.y = fcmp olt double %i.q, %i.t
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load double, ptr %.sroa.015.02257, align 8, !tbaa !18
  store double %i.q, ptr %.sroa.015.02257, align 8, !tbaa !18
  store double %i.z, ptr %i.o, align 8, !tbaa !18
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.i:                                             ; preds = %bb.g
  %i.aa = fcmp olt double %i.r, %i.t
  %i.ab = load double, ptr %.sroa.015.02257, align 8, !tbaa !18 ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.t, ptr %.sroa.015.02257, align 8, !tbaa !18
  store double %i.ab, ptr %i.p, align 8, !tbaa !18
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  store double %i.r, ptr %.sroa.015.02257, align 8, !tbaa !18
  store double %i.ab, ptr %i.n, align 8, !tbaa !18
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.n
  %.sroa.010.0.i.i = phi ptr [ %i.af, %bb.n ], [ %i.o, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.n ], [ %.sroa.012.02356, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.ac = load double, ptr %.sroa.015.02257, align 8, !tbaa !18 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.af, %bb.l ] ; 7 uses
  %i.ad = load double, ptr %.sroa.010.1.i.i, align 8, !tbaa !18 ; 2 uses
  %i.ae = fcmp olt double %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.l, label %.preheader.i.i, !llvm.loop !121

.preheader.i.i:                                   ; preds = %bb.l, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.l ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ag = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !18 ; 2 uses
  %i.ah = fcmp olt double %i.ac, %i.ag
  br i1 %i.ah, label %.preheader.i.i, label %bb.m, !llvm.loop !122

bb.m:                                             ; preds = %.preheader.i.i
  %i.ai = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ai, label %bb.n, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.n:                                             ; preds = %bb.m
  store double %i.ag, ptr %.sroa.010.1.i.i, align 8, !tbaa !18
  store double %i.ad, ptr %.sroa.0.1.i.i, align 8, !tbaa !18
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !123

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.m
  %.not = icmp ugt ptr %.sroa.010.1.i.i, %1       ; 2 uses
  %.sroa.010.1.i.i..sroa.015.0 = select i1 %.not, ptr %.sroa.015.02257, ptr %.sroa.010.1.i.i ; 4 uses
  %.sroa.012.0..sroa.010.1.i.i = select i1 %.not, ptr %.sroa.010.1.i.i, ptr %.sroa.012.02356 ; 4 uses
  %i.aj = ptrtoint ptr %.sroa.012.0..sroa.010.1.i.i to i64
  %i.ak = ptrtoint ptr %.sroa.010.1.i.i..sroa.015.0 to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3                 ; 2 uses
  %i.an = icmp sgt i64 %i.am, 3
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %bb.a
  %.sroa.015.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.010.1.i.i..sroa.015.0, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit ] ; 8 uses
  %.sroa.012.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.012.0..sroa.010.1.i.i, %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit ] ; 3 uses
  %.lcssa18.pre-phi = ptrtoint ptr %.sroa.015.0.lcssa to i64
  %i.ao = icmp eq ptr %.sroa.015.0.lcssa, %.sroa.012.0.lcssa
  br i1 %i.ao, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %.sroa.015.0.lcssa, i64 8 ; 2 uses
  %.not16.i = icmp eq ptr %.sroa.0.015.i, %.sroa.012.0.lcssa
  br i1 %.not16.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.pre20.i = load double, ptr %.sroa.015.0.lcssa, align 8, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.i
  %i.ap = phi double [ %.pre20.i, %.lr.ph.i ], [ %i.bg, %bb.u ] ; 2 uses
  %.sroa.0.018.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.u ] ; 6 uses
  %.pn17.i = phi ptr [ %.sroa.015.0.lcssa, %.lr.ph.i ], [ %.sroa.0.018.i, %bb.u ] ; 4 uses
  %i.aq = load double, ptr %.sroa.0.018.i, align 8, !tbaa !18 ; 6 uses
  %i.ar = fcmp olt double %i.aq, %i.ap
  br i1 %i.ar, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.as = ptrtoint ptr %.sroa.0.018.i to i64
  %i.at = sub i64 %i.as, %.lcssa18.pre-phi        ; 3 uses
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %bb.q, label %bb.r, !prof !23

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 16
  %i.ax = sub nsw i64 0, %i.au
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.015.0.lcssa, i64 %i.at, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.az = icmp eq i64 %i.at, 8
  br i1 %i.az, label %bb.s, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 8
  store double %i.ap, ptr %i.ba, align 8, !tbaa !18
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  store double %i.aq, ptr %.sroa.015.0.lcssa, align 8, !tbaa !18
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.bb = load double, ptr %.pn17.i, align 8, !tbaa !18 ; 2 uses
  %i.bc = fcmp olt double %i.aq, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.t, %.lr.ph.i.i
  %i.bd = phi double [ %i.be, %.lr.ph.i.i ], [ %i.bb, %bb.t ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i10, %.lr.ph.i.i ], [ %.pn17.i, %bb.t ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i, %bb.t ]
  store double %i.bd, ptr %.sroa.04.08.i.i, align 8, !tbaa !18
  %.sroa.0.0.i.i10 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -8 ; 2 uses
  %i.be = load double, ptr %.sroa.0.0.i.i10, align 8, !tbaa !18 ; 2 uses
  %i.bf = fcmp olt double %i.aq, %i.be
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !124

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.t
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.018.i, %bb.t ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store double %i.aq, ptr %.sroa.04.0.lcssa.i.i, align 8, !tbaa !18
  %.pre.i = load double, ptr %.sroa.015.0.lcssa, align 8, !tbaa !18
  br label %bb.u

bb.u:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i
  %i.bg = phi double [ %i.aq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %.sroa.012.0.lcssa
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.o, !llvm.loop !125

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %bb.u, %.preheader.i, %._crit_edge, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.a = icmp ult ptr %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %.fr = freeze i64 %i.d                          ; 2 uses
  %i.e = ashr i64 %.fr, 3                         ; 3 uses
  %i.f = add nsw i64 %i.e, -1
  %i.g = lshr i64 %i.f, 1
  %i.h = icmp sgt i64 %i.e, 2
  %i.i = and i64 %.fr, 8
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  %i.k = add nsw i64 %i.e, -2                     ; 3 uses
  %i.l = ashr exact i64 %i.k, 1                   ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.m = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.sroa.0.011.us = phi ptr [ %i.ak, %bb.d ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.p = load double, ptr %.sroa.0.011.us, align 8, !tbaa !18 ; 3 uses
  %i.q = load double, ptr %0, align 8, !tbaa !18  ; 2 uses
  %i.r = fcmp olt double %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store double %i.q, ptr %.sroa.0.011.us, align 8, !tbaa !18
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.034.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.s = shl i64 %.034.i.i.us, 1                  ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  %i.x = load double, ptr %i.u, align 8, !tbaa !18
  %i.y = load double, ptr %i.w, align 8, !tbaa !18
  %i.z = fcmp olt double %i.x, %i.y
  %spec.select.i.i.us = select i1 %i.z, i64 %i.v, i64 %i.t ; 6 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.us
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !18
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.i.us
  store double %i.ab, ptr %i.ac, align 8, !tbaa !18
  %i.ad = icmp slt i64 %spec.select.i.i.us, %i.g
  br i1 %i.ad, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !3

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.ae = load double, ptr %i.n, align 8, !tbaa !18
  store double %i.ae, ptr %i.o, align 8, !tbaa !18
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.019.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.m, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.019.i.i.i.us = phi i64 [ %.0920.i.i56.i.us, %bb.c ], [ %.019.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.0920.in.i.i.i.us = add nsw i64 %.019.i.i.i.us, -1
  %.0920.i.i56.i.us = lshr i64 %.0920.in.i.i.i.us, 1 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i56.i.us
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18 ; 2 uses
  %i.ah = fcmp olt double %i.ag, %i.p
  br i1 %i.ah, label %bb.c, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.us
  store double %i.ag, ptr %i.ai, align 8, !tbaa !18
  %.not7.i.us = icmp eq i64 %.0920.i.i56.i.us, 0
  br i1 %.not7.i.us, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !4

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.0.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.019.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.us
  store double %i.p, ptr %i.aj, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.us, %.lr.ph.split.us
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.011.us, i64 8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %2
  br i1 %i.al, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !126

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.am = icmp eq i64 %spec.select.i.i.us, %i.l
  %or.cond = select i1 %i.j, i1 %i.am, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %i.j, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre = load double, ptr %0, align 8, !tbaa !18
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ao = icmp eq i64 %i.k, 0
  %.pre33 = load double, ptr %0, align 8, !tbaa !18 ; 2 uses
  br i1 %i.ao, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us, %bb.e
  %i.ap = phi double [ %i.av, %bb.e ], [ %.pre33, %.lr.ph.split.split.us ] ; 3 uses
  %.sroa.0.011.us12.us = phi ptr [ %i.aw, %bb.e ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.aq = load double, ptr %.sroa.0.011.us12.us, align 8, !tbaa !18 ; 3 uses
  %i.ar = fcmp olt double %i.aq, %i.ap
  br i1 %i.ar, label %._crit_edge.i.i.us13.us, label %bb.e

._crit_edge.i.i.us13.us:                          ; preds = %.lr.ph.split.split.us.split.us
  store double %i.ap, ptr %.sroa.0.011.us12.us, align 8, !tbaa !18
  %i.as = load double, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  store double %i.as, ptr %0, align 8, !tbaa !18
  %i.at = fcmp uge double %i.as, %i.aq
  %spec.select = zext i1 %i.at to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select
  store double %i.aq, ptr %i.au, align 8, !tbaa !18
  %.pre32 = load double, ptr %0, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.us13.us, %.lr.ph.split.split.us.split.us
  %i.av = phi double [ %.pre32, %._crit_edge.i.i.us13.us ], [ %i.ap, %.lr.ph.split.split.us.split.us ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.011.us12.us, i64 8 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %2
  br i1 %i.ax, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !126

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.f
  %i.ay = phi double [ %i.bb, %bb.f ], [ %.pre33, %.lr.ph.split.split.us ] ; 3 uses
  %.sroa.0.011.us12 = phi ptr [ %i.bc, %bb.f ], [ %1, %.lr.ph.split.split.us ] ; 3 uses
  %i.az = load double, ptr %.sroa.0.011.us12, align 8, !tbaa !18 ; 3 uses
  %i.ba = fcmp olt double %i.az, %i.ay
  br i1 %i.ba, label %._crit_edge.i.i.us13, label %bb.f
end_hunk_1
