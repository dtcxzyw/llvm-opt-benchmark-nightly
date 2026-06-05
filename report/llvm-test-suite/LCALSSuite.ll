inline.NumInlined: 1878
inline.NumDeleted: 548
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.LoopStat = type { i8, double, %"class.std::vector.12", %"class.std::vector.17", %"class.std::vector.19", %"class.std::vector.19", %"class.std::vector.19", %"class.std::vector.19", %"class.std::vector.19", %"class.std::vector.19", %"class.std::vector.24", %"class.std::vector.24", %"class.std::vector.19" }
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<std::vector<long double>, std::allocator<std::vector<long double>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<long double>, std::allocator<std::vector<long double>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<long double>, std::allocator<std::vector<long double>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<long double>, std::allocator<std::vector<long double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.17" = type { %"struct.std::_Vector_base.18" }
%"struct.std::_Vector_base.18" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.24" = type { %"struct.std::_Vector_base.25" }
%"struct.std::_Vector_base.25" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.19" = type { %"struct.std::_Vector_base.20" }
%"struct.std::_Vector_base.20" = type { %"struct.std::_Vector_base<long double, std::allocator<long double>>::_Vector_impl" }
%"struct.std::_Vector_base<long double, std::allocator<long double>>::_Vector_impl" = type { %"struct.std::_Vector_base<long double, std::allocator<long double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long double, std::allocator<long double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::pair.47" = type { %"class.std::__cxx11::basic_string", ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

$_ZN16LoopSuiteRunInfo12addLoopStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN8LoopStatC2Ej = comdat any

$_ZN8LoopStatD2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE16_M_insert_uniqueISD_EES6_ISt17_Rb_tree_iteratorISD_EbEOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE24_M_get_insert_unique_posERS7_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE17_M_construct_nodeIJSD_EEEvPSt13_Rb_tree_nodeISD_EDpOT_ = comdat any

$_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIS_IeSaIeEESaIS1_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi = comdat any

$_ZNSt6vectorIeSaIeEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPeS1_EEmRKe = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN8LoopStatC2ERKS_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIeSaIeEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_ = comdat any

@_ZN7ADomain18loop_length_factorE = dso_local local_unnamed_addr global double 1.000000e+00, align 8
@_ZL11s_loop_data = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"MEDIUM\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"SHORT\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"PRESSURE_CALC\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"PRESSURE_CALC_ALT\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ENERGY_CALC\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ENERGY_CALC_ALT\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"VOL3D_CALC\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"DEL_DOT_VEC_2D\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"COUPLE\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"FIR\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"INIT3\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MULADDSUB\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"IF_QUAD\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"INNER_PROD\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"BAND_LIN_EQ\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"TRIDIAG_ELIM\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"EOS\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"ADI\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"INT_PREDICT\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"DIFF_PREDICT\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"FIRST_SUM\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"FIRST_DIFF\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"PIC_2D\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"PIC_1D\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"GEN_LIN_RECUR\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"MAT_X_MAT\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"PLANCKIAN\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"IMP_HYDRO_2D\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"FIND_FIRST_MIN\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.36 = private unnamed_addr constant [21 x i8] c"\0A Unknown loop id = \00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"Raw\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"Raw_OMP\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"Forall_Lambda\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"Forall_Lambda_OMP\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"\0A Unknown loop variant id = \00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"Cannot create directories in path = \00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"\0A    because some intermediate item in path exists and\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"is NOT a directory\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"   Cannot create directory  = \00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@switch.table._Z14getVariantNameB5cxx1113LoopVariantID = private unnamed_addr constant [4 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], align 8
@switch.table._Z14getVariantNameB5cxx1113LoopVariantID.6 = private unnamed_addr constant [4 x i64] [i64 3, i64 7, i64 13, i64 17], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z22defineLoopSuiteRunInfoRKSt6vectorI13LoopVariantIDSaIS0_EEPbdd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, double noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::vector", align 8       ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca x86_fp80, align 16                ; 5 uses
  %i.e = alloca x86_fp80, align 16                ; 5 uses
  %i.f = alloca x86_fp80, align 16                ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 78 uses
  %9 = alloca %class.LoopStat, align 8            ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_Z15getVariantNamesB5cxx11RKSt6vectorI13LoopVariantIDSaIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.g = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noalias noundef nonnull dereferenceable(1616) ptr @_Znwm(i64 noundef 1616) #22
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1616) %i.i, i8 0, i64 1616, i1 false)
  store ptr %i.i, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.k = invoke noundef nonnull align 16 dereferenceable(640) ptr @_Z19getLoopSuiteRunInfov()
          to label %bb.f unwind label %bb.ac      ; 24 uses

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144 ; 2 uses
  store double %2, ptr %i.l, align 16, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 432 ; 33 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 440 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71   ; 2 uses
  %i.p = load ptr, ptr %i.m, align 16, !tbaa !72  ; 5 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %i.u = icmp ult i64 %i.t, 6
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = sub nuw nsw i64 6, %i.t
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.v)
          to label %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge unwind label %bb.ac

._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge:    ; preds = %bb.g
  %.pre = load ptr, ptr %i.m, align 16, !tbaa !72
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i64 %i.s, 48
  br i1 %.not, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.i
  store ptr %i.w, ptr %i.n, align 8, !tbaa !71
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %bb.i, %bb.h
  %i.x = phi ptr [ %.pre, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge ], [ %i.p, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ], [ %i.p, %bb.i ], [ %i.p, %bb.h ] ; 3 uses
  store <2 x double> <double 2.000000e+00, double 1.800000e+00>, ptr %i.x, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x double> splat (double 1.700000e+00), ptr %i.y, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store <2 x double> <double 1.400000e+00, double 1.000000e+00>, ptr %i.z, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 3 uses
  %i.ad = load ptr, ptr %i.aa, align 16, !tbaa !75 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = ashr exact i64 %i.ag, 5                 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 3
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.aj = sub nuw nsw i64 3, %i.ah
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef %i.aj)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit unwind label %bb.ac

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %.not1355 = icmp eq i64 %i.ag, 96
  br i1 %.not1355, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 96 ; 3 uses
  %.not.i.i275 = icmp eq ptr %i.ac, %i.ak
  br i1 %.not.i.i275, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ak, %bb.l ] ; 3 uses
  %i.al = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !76 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.al) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.ac
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.ak, ptr %i.ab, align 8, !tbaa !74
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.ap, ptr %5, align 8, !tbaa !79
  store i32 1196314444, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 4, ptr %i.aq, align 8, !tbaa !80
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i8 0, ptr %i.ar, align 4, !tbaa !81
  %i.as = load ptr, ptr %i.aa, align 16, !tbaa !75 ; 4 uses
  %.not21.i = icmp eq ptr %5, %i.as
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, !prof !82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.au = load i32, ptr %i.ap, align 8
  store i32 %i.au, ptr %i.at, align 1
  %i.av = load i64, ptr %i.aq, align 8, !tbaa !80 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !80
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !81
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !76
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.az = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ap, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit ]
  store i64 0, ptr %i.aq, align 8, !tbaa !80
  store i8 0, ptr %i.az, align 1, !tbaa !81
  %i.ba = load ptr, ptr %5, align 8, !tbaa !76    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.ap
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.ba) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
end_hunk_0
begin_hunk_1_@_Z22defineLoopSuiteRunInfoRKSt6vectorI13LoopVariantIDSaIS0_EEPbdd:bb.a
  %i.ark = load <2 x ptr>, ptr %i.arj, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.ark, ptr %i.ari, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.arl = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 176
  %i.arm = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 176
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.arn, ptr %i.arl, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arj, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.aro = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 184
  %i.arp = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 184 ; 2 uses
  %i.arq = load <2 x ptr>, ptr %i.arp, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.arq, ptr %i.aro, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.arr = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 200
  %i.ars = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 200
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.art, ptr %i.arr, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arp, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.aru = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 208
  %i.arv = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 208 ; 2 uses
  %i.arw = load <2 x ptr>, ptr %i.arv, align 8, !tbaa !158, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.arw, ptr %i.aru, align 8, !tbaa !158, !alias.scope !146, !noalias !149
  %i.arx = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 224
  %i.ary = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 224
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !159, !alias.scope !149, !noalias !146
  store ptr %i.arz, ptr %i.arx, align 8, !tbaa !159, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.arv, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.asa = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 232
  %i.asb = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 232 ; 2 uses
  %i.asc = load <2 x ptr>, ptr %i.asb, align 8, !tbaa !158, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.asc, ptr %i.asa, align 8, !tbaa !158, !alias.scope !146, !noalias !149
  %i.asd = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 248
  %i.ase = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 248
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !159, !alias.scope !149, !noalias !146
  store ptr %i.asf, ptr %i.asd, align 8, !tbaa !159, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asb, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  %i.asg = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 256
  %i.ash = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 256 ; 2 uses
  %i.asi = load <2 x ptr>, ptr %i.ash, align 8, !tbaa !156, !alias.scope !149, !noalias !146
  store <2 x ptr> %i.asi, ptr %i.asg, align 8, !tbaa !156, !alias.scope !146, !noalias !149
  %i.asj = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 272
  %i.ask = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 272
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !157, !alias.scope !149, !noalias !146
  store ptr %i.asl, ptr %i.asj, align 8, !tbaa !157, !alias.scope !146, !noalias !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ash, i8 0, i64 24, i1 false), !alias.scope !149, !noalias !146
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %.0911.i1103) #21, !noalias !146
  %i.asm = getelementptr inbounds nuw i8, ptr %.0911.i1103, i64 280 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.012.i1102, i64 280 ; 2 uses
  %.not.i1104 = icmp eq ptr %i.asm, %i.apg
  br i1 %.not.i1104, label %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit, label %.lr.ph.i1101, !llvm.loop !160

_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %.lr.ph.i1101, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i
  %.0.lcssa.i1106 = phi ptr [ %i.apw, %_ZNSt16allocator_traitsISaI8LoopStatEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit.i ], [ %i.asn, %.lr.ph.i1101 ]
  %i.aso = getelementptr inbounds nuw i8, ptr %.0.lcssa.i1106, i64 280
  %.not.i26.i = icmp eq ptr %i.apl, null
  br i1 %.not.i26.i, label %.noexc1081, label %bb.ca

bb.ca:                                            ; preds = %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.apl) #23
  br label %.noexc1081

bb.cb:                                            ; preds = %bb.cc
  %i.asp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.cd

bb.cc:                                            ; preds = %.noexc1097
  %i.asq = landingpad { ptr, i32 }
          catch ptr null
  %i.asr = extractvalue { ptr, i32 } %i.asq, 0
  %i.ass = call ptr @__cxa_begin_catch(ptr %i.asr) #21 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.apw) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.ce unwind label %bb.cb

bb.cd:                                            ; preds = %bb.cb
  %i.ast = landingpad { ptr, i32 }
          catch ptr null
  %i.asu = extractvalue { ptr, i32 } %i.ast, 0
  call void @__clang_call_terminate(ptr %i.asu) #25
  unreachable

bb.ce:                                            ; preds = %bb.cc
  unreachable

.noexc1081:                                       ; preds = %bb.ca, %_ZSt14__relocate_a_1IP8LoopStatS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  store ptr %i.apw, ptr %i.ape, align 8, !tbaa !145
  store ptr %i.aso, ptr %i.apf, align 8, !tbaa !141
  %i.asv = getelementptr inbounds nuw [280 x i8], ptr %i.apw, i64 %i.apu
  store ptr %i.asv, ptr %i.aph, align 8, !tbaa !144
  br label %_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI8LoopStatSaIS0_EE9push_backERKS0_.exit: ; preds = %.noexc1081, %.noexc1080
  %i.asw = add i32 %.01426, 1                     ; 2 uses
  %i.asx = zext i32 %i.asw to i64                 ; 2 uses
  %i.asy = load ptr, ptr %i.cd, align 8, !tbaa !74
  %i.asz = load ptr, ptr %4, align 8, !tbaa !75   ; 2 uses
  %i.ata = ptrtoint ptr %i.asy to i64
  %i.atb = ptrtoint ptr %i.asz to i64
  %i.atc = sub i64 %i.ata, %i.atb
  %i.atd = ashr exact i64 %i.atc, 5
  %i.ate = icmp ugt i64 %i.atd, %i.asx
  br i1 %i.ate, label %.lr.ph1427, label %._crit_edge1428, !llvm.loop !161

.loopexit:                                        ; preds = %bb.bx, %_ZNKSt6vectorI8LoopStatSaIS0_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit1369, %.loopexit.split-lp1370, %bb.cb, %bb.bg
  %.pn266 = phi { ptr, i32 } [ %i.asp, %bb.cb ], [ %i.ob, %bb.bg ], [ %lpad.loopexit.split-lp1372, %.loopexit.split-lp1370 ], [ %lpad.loopexit1371, %.loopexit1369 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8LoopStatD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %9) #21
  br label %bb.cf

bb.cf:                                            ; preds = %.body, %bb.ba
  %.pn266.pn = phi { ptr, i32 } [ %.pn266, %.body ], [ %i.mu, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.atf = load ptr, ptr %8, align 8, !tbaa !76   ; 2 uses
  %i.atg = icmp eq ptr %i.atf, %i.ig
  br i1 %i.atg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082: ; preds = %bb.cf
  call void @_ZdlPv(ptr noundef %i.atf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1088

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge1433
  %i.ath = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !85
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !4
  %.sroa.speculated1312 = call i32 @llvm.smax.i32(i32 %.01353.lcssa, i32 %i.atj)
  %i.atk = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  store i32 %.sroa.speculated1312, ptr %i.atk, align 8, !tbaa !162
  call void @_ZdlPv(ptr noundef nonnull %i.fh) #23
  %i.atl = load ptr, ptr %4, align 8, !tbaa !75   ; 3 uses
  %i.atm = load ptr, ptr %i.cd, align 8, !tbaa !74 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.atl, %i.atm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.atq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.atl, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.atn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !76 ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.atp = icmp eq ptr %i.atn, %i.ato
  br i1 %i.atp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.atn) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.atq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1086 = icmp eq ptr %i.atq, %i.atm
  br i1 %.not.i.i.i1086, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !75
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.atr = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.atl, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.atr, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.atr) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.ch:                                            ; preds = %._crit_edge1433
  %i.ats = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit1088

_ZNSt6vectorIiSaIiEED2Ev.exit1088:                ; preds = %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084
  %.pn266.pn.pn = phi { ptr, i32 } [ %.pn266.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084 ], [ %i.ats, %bb.ch ]
  call void @_ZdlPv(ptr noundef nonnull %i.fh) #23
  br label %bb.ci

bb.ci:                                            ; preds = %bb.aw, %_ZNSt6vectorIiSaIiEED2Ev.exit1088, %bb.ac, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.d
  %.pn271.pn.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.mo, %bb.aw ], [ %i.hr, %bb.aq ], [ %i.fi, %bb.ac ], [ %i.hs, %bb.ar ], [ %.pn266.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit1088 ], [ %i.hv, %bb.au ], [ %i.hu, %bb.at ], [ %i.ht, %bb.as ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn271.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z15getVariantNamesB5cxx11RKSt6vectorI13LoopVariantIDSaIS0_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.d = load ptr, ptr %1, align 8, !tbaa !167    ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.j = phi i64 [ 0, %.lr.ph ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.0815 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !168
  invoke void @_Z14getVariantNameB5cxx1113LoopVariantID(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, i32 noundef %i.l)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !74   ; 8 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !130
  %.not.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !79
  %i.p = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.q, ptr %i.a, align 8, !tbaa !100
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.s = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.s, ptr %i.m, align 8, !tbaa !76
  %i.t = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.t, ptr %i.o, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.d
  %i.u = phi ptr [ %i.s, %.noexc ], [ %i.o, %bb.d ] ; 2 uses
  switch i64 %i.q, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.p, align 1, !tbaa !81
  store i8 %i.v, ptr %i.u, align 1, !tbaa !81
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !80
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !74
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.g:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.g
  %i.ac = load ptr, ptr %2, align 8, !tbaa !76    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.h
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  call void @_ZdlPv(ptr noundef %i.ac) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ae = add i32 %.0815, 1                       ; 2 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.ah = load ptr, ptr %1, align 8, !tbaa !167   ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  %i.am = icmp ugt i64 %i.al, %i.af
  br i1 %i.am, label %bb.b, label %._crit_edge, !llvm.loop !170

bb.h:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.i:                                             ; preds = %bb.g, %.noexc.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %2, align 8, !tbaa !76    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.h
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.ap) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.h
  %.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.ao, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #21
  resume { ptr, i32 } %.pn

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noundef nonnull align 16 dereferenceable(640) ptr @_Z19getLoopSuiteRunInfov() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16LoopSuiteRunInfo12addLoopStatsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 16 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.std::pair.47", align 8     ; 13 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !79
  %i.e = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.g, ptr %i.a, align 8, !tbaa !100
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !76
  %i.j = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.j, ptr %i.d, align 8, !tbaa !81
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorI8LoopStatSaIS8_EEEC2IRS6_RSB_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !81
  store i8 %i.l, ptr %i.k, align 1, !tbaa !81
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorI8LoopStatSaIS8_EEEC2IRS6_RSB_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorI8LoopStatSaIS8_EEEC2IRS6_RSB_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorI8LoopStatSaIS8_EEEC2IRS6_RSB_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISH_SI_EEEbE4typeELb1EEEOSH_OSI_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !80
  %i.o = load ptr, ptr %2, align 8, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.b, ptr %i.q, align 8, !tbaa !138
  %i.r = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorI8LoopStatSaIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE16_M_insert_uniqueISD_EES6_ISt17_Rb_tree_iteratorISD_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2)
end_hunk_1
begin_hunk_2_@_ZN8LoopStatD2Ev:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIeSaIeEED2Ev.exit15, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit13
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #23
  br label %_ZNSt6vectorIeSaIeEED2Ev.exit15

_ZNSt6vectorIeSaIeEED2Ev.exit15:                  ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit13, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !172  ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit15
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIeSaIeEED2Ev.exit15, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !87   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i ], [ %i.v, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i.i, align 8, !tbaa !89 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #23
  br label %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i:  ; preds = %bb.l, %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i.i17, label %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !90

_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIeSaIeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.u, align 8, !tbaa !88
  br label %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.v, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #23
  br label %_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IeSaIeEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIeSaIeEES2_EvT_S4_RSaIT0_E.exit.i, %bb.m
  ret void
}

declare void @_Z26defineReferenceLoopRunInfov() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !76 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !77

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !75
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.h = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z14getVariantNameB5cxx1113LoopVariantID(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !80
  store i8 0, ptr %i.a, align 8, !tbaa !81
  %i.c = icmp ult i32 %1, 4
  br i1 %i.c, label %switch.lookup, label %bb.c

bb.b:                                             ; preds = %switch.lookup, %.noexc9, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc7, %bb.g, %bb.e, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef %i.e) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.d

switch.lookup:                                    ; preds = %bb.a
  %i.g = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Z14getVariantNameB5cxx1113LoopVariantID, i64 %i.g
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.h = zext nneg i32 %1 to i64
  %switch.gep12 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._Z14getVariantNameB5cxx1113LoopVariantID.6, i64 %i.h
  %switch.load13 = load i64, ptr %switch.gep12, align 8
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %switch.load, i64 noundef %switch.load13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.b ; 0 uses

bb.c:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.41, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.b ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %1)
          to label %bb.d unwind label %bb.b       ; 3 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !107
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.e
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load i8, ptr %i.r, align 8, !tbaa !124
  %.not.i1.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 67
  %i.u = load i8, ptr %i.t, align 1, !tbaa !81
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.q)
          to label %.noexc7 unwind label %bb.b

.noexc7:                                          ; preds = %bb.g
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !107
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = invoke noundef signext i8 %i.x(ptr noundef nonnull align 8 dereferenceable(570) %i.q, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.b, !inline_history !129

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc7, %bb.f
  %.0.i.i.i = phi i8 [ %i.u, %bb.f ], [ %i.y, %.noexc7 ]
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %.0.i.i.i)
          to label %.noexc9 unwind label %bb.b

.noexc9:                                          ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %switch.lookup, %.noexc9
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8loopInitjR8LoopStat(i32 noundef %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(280) initializes((0, 1)) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8 ; 450 uses
  tail call void @_Z10flushCachev()
  store i8 1, ptr %1, align 8, !tbaa !171
  switch i32 %0, label %bb.ag [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 8, label %bb.h
    i32 9, label %bb.i
    i32 10, label %bb.j
    i32 11, label %bb.k
    i32 12, label %bb.l
    i32 13, label %bb.m
    i32 14, label %bb.n
    i32 15, label %bb.o
    i32 16, label %bb.p
    i32 17, label %bb.q
    i32 18, label %bb.r
    i32 19, label %bb.s
    i32 20, label %bb.t
    i32 21, label %bb.u
    i32 22, label %bb.v
    i32 23, label %bb.w
    i32 24, label %bb.x
    i32 25, label %bb.y
    i32 26, label %bb.z
    i32 27, label %bb.aa
    i32 28, label %bb.ab
    i32 29, label %bb.ac
    i32 30, label %bb.ad
    i32 31, label %bb.ae
    i32 32, label %bb.af
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.c = load i32, ptr %i.b, align 8, !tbaa !182
  %i.d = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not.i, double 2.000000e-01, double 1.000000e-01 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !183  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.i = load i32, ptr %i.h, align 8, !tbaa !184  ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader.i, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.i to i64  ; 3 uses
  %min.iters.check3754 = icmp eq i32 %i.i, 1
  br i1 %min.iters.check3754, label %.lr.ph.i.preheader, label %vector.ph3755

vector.ph3755:                                    ; preds = %.lr.ph.preheader.i
  %n.vec3757 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splatinsert3758 = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat3759 = shufflevector <2 x double> %broadcast.splatinsert3758, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body3760

vector.body3760:                                  ; preds = %vector.body3760, %vector.ph3755
  %index3761 = phi i64 [ 0, %vector.ph3755 ], [ %index.next3763, %vector.body3760 ] ; 2 uses
  %vec.ind3762 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph3755 ], [ %vec.ind.next3764, %vector.body3760 ] ; 2 uses
  %i.k = uitofp nneg <2 x i32> %vec.ind3762 to <2 x double> ; 2 uses
  %i.l = fadd nnan <2 x double> %i.k, splat (double 1.100000e+00)
  %i.m = fmul nnan <2 x double> %broadcast.splat3759, %i.l
  %i.n = fadd <2 x double> %i.k, splat (double 1.123450e+00)
  %i.o = fdiv <2 x double> %i.m, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index3761
  store <2 x double> %i.o, ptr %i.p, align 8, !tbaa !73
  %index.next3763 = add nuw i64 %index3761, 2     ; 2 uses
  %vec.ind.next3764 = add <2 x i32> %vec.ind3762, splat (i32 2)
  %i.q = icmp eq i64 %index.next3763, %n.vec3757
  br i1 %i.q, label %middle.block3765, label %vector.body3760, !llvm.loop !185

middle.block3765:                                 ; preds = %vector.body3760
  %cmp.n3766 = icmp eq i64 %n.vec3757, %wide.trip.count.i
  br i1 %cmp.n3766, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block3765
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec3757, %middle.block3765 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.s = uitofp nneg i32 %i.r to double           ; 2 uses
  %i.t = fadd nnan double %i.s, 1.100000e+00
  %i.u = fmul nnan double %i.e, %i.t
  %i.v = fadd double %i.s, 1.123450e+00
  %i.w = fdiv double %i.u, %i.v
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  store double %i.w, ptr %i.x, align 8, !tbaa !73
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit, label %.lr.ph.i, !llvm.loop !188

_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit: ; preds = %.lr.ph.i, %middle.block3765, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.z = load i32, ptr %i.y, align 8, !tbaa !182
  %i.aa = and i32 %i.z, 1
  %.not.i165 = icmp eq i32 %i.aa, 0
  %i.ab = select i1 %.not.i165, double 2.000000e-01, double 1.000000e-01 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !183 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !184 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.preheader.i166, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit172

.lr.ph.preheader.i166:                            ; preds = %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit
  %wide.trip.count.i167 = zext nneg i32 %i.af to i64 ; 3 uses
  %min.iters.check3769 = icmp eq i32 %i.af, 1
  br i1 %min.iters.check3769, label %.lr.ph.i168.preheader, label %vector.ph3770

vector.ph3770:                                    ; preds = %.lr.ph.preheader.i166
  %n.vec3772 = and i64 %wide.trip.count.i167, 2147483646 ; 3 uses
  %broadcast.splatinsert3773 = insertelement <2 x double> poison, double %i.ab, i64 0
  %broadcast.splat3774 = shufflevector <2 x double> %broadcast.splatinsert3773, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body3775

vector.body3775:                                  ; preds = %vector.body3775, %vector.ph3770
  %index3776 = phi i64 [ 0, %vector.ph3770 ], [ %index.next3778, %vector.body3775 ] ; 2 uses
  %vec.ind3777 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph3770 ], [ %vec.ind.next3779, %vector.body3775 ] ; 2 uses
  %i.ah = uitofp nneg <2 x i32> %vec.ind3777 to <2 x double> ; 2 uses
  %i.ai = fadd nnan <2 x double> %i.ah, splat (double 1.100000e+00)
  %i.aj = fmul nnan <2 x double> %broadcast.splat3774, %i.ai
  %i.ak = fadd <2 x double> %i.ah, splat (double 1.123450e+00)
  %i.al = fdiv <2 x double> %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index3776
  store <2 x double> %i.al, ptr %i.am, align 8, !tbaa !73
  %index.next3778 = add nuw i64 %index3776, 2     ; 2 uses
  %vec.ind.next3779 = add <2 x i32> %vec.ind3777, splat (i32 2)
  %i.an = icmp eq i64 %index.next3778, %n.vec3772
  br i1 %i.an, label %middle.block3780, label %vector.body3775, !llvm.loop !189

middle.block3780:                                 ; preds = %vector.body3775
  %cmp.n3781 = icmp eq i64 %n.vec3772, %wide.trip.count.i167
  br i1 %cmp.n3781, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit172, label %.lr.ph.i168.preheader

.lr.ph.i168.preheader:                            ; preds = %.lr.ph.preheader.i166, %middle.block3780
  %indvars.iv.i169.ph = phi i64 [ 0, %.lr.ph.preheader.i166 ], [ %n.vec3772, %middle.block3780 ]
  br label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %.lr.ph.i168.preheader, %.lr.ph.i168
  %indvars.iv.i169 = phi i64 [ %indvars.iv.next.i170, %.lr.ph.i168 ], [ %indvars.iv.i169.ph, %.lr.ph.i168.preheader ] ; 3 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv.i169 to i32
  %i.ap = uitofp nneg i32 %i.ao to double         ; 2 uses
  %i.aq = fadd nnan double %i.ap, 1.100000e+00
  %i.ar = fmul nnan double %i.ab, %i.aq
  %i.as = fadd double %i.ap, 1.123450e+00
  %i.at = fdiv double %i.ar, %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i169
  store double %i.at, ptr %i.au, align 8, !tbaa !73
  %indvars.iv.next.i170 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %exitcond.not.i171 = icmp eq i64 %indvars.iv.next.i170, %wide.trip.count.i167
  br i1 %exitcond.not.i171, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit172, label %.lr.ph.i168, !llvm.loop !190

_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit172: ; preds = %.lr.ph.i168, %middle.block3780, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !182
  %i.ax = and i32 %i.aw, 1
  %.not.i173 = icmp eq i32 %i.ax, 0
  %i.ay = select i1 %.not.i173, double 2.000000e-01, double 1.000000e-01 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !183 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !184 ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.preheader.i174, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit180

.lr.ph.preheader.i174:                            ; preds = %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit172
  %wide.trip.count.i175 = zext nneg i32 %i.bc to i64 ; 3 uses
  %min.iters.check3784 = icmp eq i32 %i.bc, 1
  br i1 %min.iters.check3784, label %.lr.ph.i176.preheader, label %vector.ph3785

vector.ph3785:                                    ; preds = %.lr.ph.preheader.i174
  %n.vec3787 = and i64 %wide.trip.count.i175, 2147483646 ; 3 uses
  %broadcast.splatinsert3788 = insertelement <2 x double> poison, double %i.ay, i64 0
  %broadcast.splat3789 = shufflevector <2 x double> %broadcast.splatinsert3788, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body3790

vector.body3790:                                  ; preds = %vector.body3790, %vector.ph3785
  %index3791 = phi i64 [ 0, %vector.ph3785 ], [ %index.next3793, %vector.body3790 ] ; 2 uses
  %vec.ind3792 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph3785 ], [ %vec.ind.next3794, %vector.body3790 ] ; 2 uses
  %i.be = uitofp nneg <2 x i32> %vec.ind3792 to <2 x double> ; 2 uses
  %i.bf = fadd nnan <2 x double> %i.be, splat (double 1.100000e+00)
  %i.bg = fmul nnan <2 x double> %broadcast.splat3789, %i.bf
  %i.bh = fadd <2 x double> %i.be, splat (double 1.123450e+00)
  %i.bi = fdiv <2 x double> %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index3791
  store <2 x double> %i.bi, ptr %i.bj, align 8, !tbaa !73
  %index.next3793 = add nuw i64 %index3791, 2     ; 2 uses
  %vec.ind.next3794 = add <2 x i32> %vec.ind3792, splat (i32 2)
  %i.bk = icmp eq i64 %index.next3793, %n.vec3787
  br i1 %i.bk, label %middle.block3795, label %vector.body3790, !llvm.loop !191
end_hunk_2
begin_hunk_3_@_Z8loopInitj:bb.a
  %i.dys = fadd <2 x double> %i.dyp, splat (double 1.123450e+00)
  %i.dyt = fdiv <2 x double> %i.dyr, %i.dys
  %i.dyu = getelementptr inbounds nuw [8 x i8], ptr %i.dyl, i64 %index1676
  store <2 x double> %i.dyt, ptr %i.dyu, align 8, !tbaa !73
  %index.next1678 = add nuw i64 %index1676, 2     ; 2 uses
  %vec.ind.next1679 = add <2 x i32> %vec.ind1677, splat (i32 2)
  %i.dyv = icmp eq i64 %index.next1678, %n.vec1672
  br i1 %i.dyv, label %middle.block1680, label %vector.body1675, !llvm.loop !774

middle.block1680:                                 ; preds = %vector.body1675
  %cmp.n1681 = icmp eq i64 %n.vec1672, %wide.trip.count.i1324
  br i1 %cmp.n1681, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit1329, label %.lr.ph.i1325.preheader

.lr.ph.i1325.preheader:                           ; preds = %.lr.ph.preheader.i1323, %middle.block1680
  %indvars.iv.i1326.ph = phi i64 [ 0, %.lr.ph.preheader.i1323 ], [ %n.vec1672, %middle.block1680 ]
  br label %.lr.ph.i1325

.lr.ph.i1325:                                     ; preds = %.lr.ph.i1325.preheader, %.lr.ph.i1325
  %indvars.iv.i1326 = phi i64 [ %indvars.iv.next.i1327, %.lr.ph.i1325 ], [ %indvars.iv.i1326.ph, %.lr.ph.i1325.preheader ] ; 3 uses
  %i.dyw = trunc nuw nsw i64 %indvars.iv.i1326 to i32
  %i.dyx = uitofp nneg i32 %i.dyw to double       ; 2 uses
  %i.dyy = fadd nnan double %i.dyx, 1.100000e+00
  %i.dyz = fmul nnan double %i.dyj, %i.dyy
  %i.dza = fadd double %i.dyx, 1.123450e+00
  %i.dzb = fdiv double %i.dyz, %i.dza
  %i.dzc = getelementptr inbounds nuw [8 x i8], ptr %i.dyl, i64 %indvars.iv.i1326
  store double %i.dzb, ptr %i.dzc, align 8, !tbaa !73
  %indvars.iv.next.i1327 = add nuw nsw i64 %indvars.iv.i1326, 1 ; 2 uses
  %exitcond.not.i1328 = icmp eq i64 %indvars.iv.next.i1327, %wide.trip.count.i1324
  br i1 %exitcond.not.i1328, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit1329, label %.lr.ph.i1325, !llvm.loop !775

_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit1329: ; preds = %.lr.ph.i1325, %middle.block1680, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit1321
  %i.dzd = getelementptr inbounds nuw i8, ptr %i.a, i64 1352
  %i.dze = load i32, ptr %i.dzd, align 8, !tbaa !182
  %i.dzf = and i32 %i.dze, 1
  %.not.i1330 = icmp eq i32 %i.dzf, 0
  %i.dzg = select i1 %.not.i1330, double 2.000000e-01, double 1.000000e-01 ; 2 uses
  %i.dzh = getelementptr inbounds nuw i8, ptr %i.a, i64 1360
  %i.dzi = load ptr, ptr %i.dzh, align 8, !tbaa !183 ; 2 uses
  %i.dzj = getelementptr inbounds nuw i8, ptr %i.a, i64 1368
  %i.dzk = load i32, ptr %i.dzj, align 8, !tbaa !184 ; 3 uses
  %i.dzl = icmp sgt i32 %i.dzk, 0
  br i1 %i.dzl, label %.lr.ph.preheader.i1331, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit179

.lr.ph.preheader.i1331:                           ; preds = %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit1329
  %wide.trip.count.i1332 = zext nneg i32 %i.dzk to i64 ; 3 uses
  %min.iters.check1684 = icmp eq i32 %i.dzk, 1
  br i1 %min.iters.check1684, label %.lr.ph.i1333.preheader, label %vector.ph1685

vector.ph1685:                                    ; preds = %.lr.ph.preheader.i1331
  %n.vec1687 = and i64 %wide.trip.count.i1332, 2147483646 ; 3 uses
  %broadcast.splatinsert1688 = insertelement <2 x double> poison, double %i.dzg, i64 0
  %broadcast.splat1689 = shufflevector <2 x double> %broadcast.splatinsert1688, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1690

vector.body1690:                                  ; preds = %vector.body1690, %vector.ph1685
  %index1691 = phi i64 [ 0, %vector.ph1685 ], [ %index.next1693, %vector.body1690 ] ; 2 uses
  %vec.ind1692 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph1685 ], [ %vec.ind.next1694, %vector.body1690 ] ; 2 uses
  %i.dzm = uitofp nneg <2 x i32> %vec.ind1692 to <2 x double> ; 2 uses
  %i.dzn = fadd nnan <2 x double> %i.dzm, splat (double 1.100000e+00)
  %i.dzo = fmul nnan <2 x double> %broadcast.splat1689, %i.dzn
  %i.dzp = fadd <2 x double> %i.dzm, splat (double 1.123450e+00)
  %i.dzq = fdiv <2 x double> %i.dzo, %i.dzp
  %i.dzr = getelementptr inbounds nuw [8 x i8], ptr %i.dzi, i64 %index1691
  store <2 x double> %i.dzq, ptr %i.dzr, align 8, !tbaa !73
  %index.next1693 = add nuw i64 %index1691, 2     ; 2 uses
  %vec.ind.next1694 = add <2 x i32> %vec.ind1692, splat (i32 2)
  %i.dzs = icmp eq i64 %index.next1693, %n.vec1687
  br i1 %i.dzs, label %middle.block1695, label %vector.body1690, !llvm.loop !776

middle.block1695:                                 ; preds = %vector.body1690
  %cmp.n1696 = icmp eq i64 %n.vec1687, %wide.trip.count.i1332
  br i1 %cmp.n1696, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit179, label %.lr.ph.i1333.preheader

.lr.ph.i1333.preheader:                           ; preds = %.lr.ph.preheader.i1331, %middle.block1695
  %indvars.iv.i1334.ph = phi i64 [ 0, %.lr.ph.preheader.i1331 ], [ %n.vec1687, %middle.block1695 ]
  br label %.lr.ph.i1333

.lr.ph.i1333:                                     ; preds = %.lr.ph.i1333.preheader, %.lr.ph.i1333
  %indvars.iv.i1334 = phi i64 [ %indvars.iv.next.i1335, %.lr.ph.i1333 ], [ %indvars.iv.i1334.ph, %.lr.ph.i1333.preheader ] ; 3 uses
  %i.dzt = trunc nuw nsw i64 %indvars.iv.i1334 to i32
  %i.dzu = uitofp nneg i32 %i.dzt to double       ; 2 uses
  %i.dzv = fadd nnan double %i.dzu, 1.100000e+00
  %i.dzw = fmul nnan double %i.dzg, %i.dzv
  %i.dzx = fadd double %i.dzu, 1.123450e+00
  %i.dzy = fdiv double %i.dzw, %i.dzx
  %i.dzz = getelementptr inbounds nuw [8 x i8], ptr %i.dzi, i64 %indvars.iv.i1334
  store double %i.dzy, ptr %i.dzz, align 8, !tbaa !73
  %indvars.iv.next.i1335 = add nuw nsw i64 %indvars.iv.i1334, 1 ; 2 uses
  %exitcond.not.i1336 = icmp eq i64 %indvars.iv.next.i1335, %wide.trip.count.i1332
  br i1 %exitcond.not.i1336, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit179, label %.lr.ph.i1333, !llvm.loop !777

bb.af:                                            ; preds = %bb.a
  %i.eaa = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.eab = load i32, ptr %i.eaa, align 8, !tbaa !182
  %i.eac = and i32 %i.eab, 1
  %.not.i1338 = icmp eq i32 %i.eac, 0
  %i.ead = select i1 %.not.i1338, double 2.000000e-01, double 1.000000e-01 ; 2 uses
  %i.eae = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  %i.eaf = load ptr, ptr %i.eae, align 8, !tbaa !183 ; 2 uses
  %i.eag = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.eah = load i32, ptr %i.eag, align 8, !tbaa !184 ; 3 uses
  %i.eai = icmp sgt i32 %i.eah, 0
  br i1 %i.eai, label %.lr.ph.preheader.i1339, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit179

.lr.ph.preheader.i1339:                           ; preds = %bb.af
  %wide.trip.count.i1340 = zext nneg i32 %i.eah to i64 ; 3 uses
  %min.iters.check = icmp eq i32 %i.eah, 1
  br i1 %min.iters.check, label %.lr.ph.i1341.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i1339
  %n.vec = and i64 %wide.trip.count.i1340, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ead, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.eaj = uitofp nneg <2 x i32> %vec.ind to <2 x double> ; 2 uses
  %i.eak = fadd nnan <2 x double> %i.eaj, splat (double 1.100000e+00)
  %i.eal = fmul nnan <2 x double> %broadcast.splat, %i.eak
  %i.eam = fadd <2 x double> %i.eaj, splat (double 1.123450e+00)
  %i.ean = fdiv <2 x double> %i.eal, %i.eam
  %i.eao = getelementptr inbounds nuw [8 x i8], ptr %i.eaf, i64 %index
  store <2 x double> %i.ean, ptr %i.eao, align 8, !tbaa !73
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.eap = icmp eq i64 %index.next, %n.vec
  br i1 %i.eap, label %middle.block, label %vector.body, !llvm.loop !778

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i1340
  br i1 %cmp.n, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit179, label %.lr.ph.i1341.preheader

.lr.ph.i1341.preheader:                           ; preds = %.lr.ph.preheader.i1339, %middle.block
  %indvars.iv.i1342.ph = phi i64 [ 0, %.lr.ph.preheader.i1339 ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i1341

.lr.ph.i1341:                                     ; preds = %.lr.ph.i1341.preheader, %.lr.ph.i1341
  %indvars.iv.i1342 = phi i64 [ %indvars.iv.next.i1343, %.lr.ph.i1341 ], [ %indvars.iv.i1342.ph, %.lr.ph.i1341.preheader ] ; 3 uses
  %i.eaq = trunc nuw nsw i64 %indvars.iv.i1342 to i32
  %i.ear = uitofp nneg i32 %i.eaq to double       ; 2 uses
  %i.eas = fadd nnan double %i.ear, 1.100000e+00
  %i.eat = fmul nnan double %i.ead, %i.eas
  %i.eau = fadd double %i.ear, 1.123450e+00
  %i.eav = fdiv double %i.eat, %i.eau
  %i.eaw = getelementptr inbounds nuw [8 x i8], ptr %i.eaf, i64 %indvars.iv.i1342
  store double %i.eav, ptr %i.eaw, align 8, !tbaa !73
  %indvars.iv.next.i1343 = add nuw nsw i64 %indvars.iv.i1342, 1 ; 2 uses
  %exitcond.not.i1344 = icmp eq i64 %indvars.iv.next.i1343, %wide.trip.count.i1340
  br i1 %exitcond.not.i1344, label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit179, label %.lr.ph.i1341, !llvm.loop !779

bb.ag:                                            ; preds = %bb.a
  %i.eax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.36, i64 noundef 20) ; 0 uses
  %i.eay = zext i32 %0 to i64
  %i.eaz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.eay) ; 3 uses
  %i.eba = load ptr, ptr %i.eaz, align 8, !tbaa !107
  %i.ebb = getelementptr i8, ptr %i.eba, i64 -24
  %i.ebc = load i64, ptr %i.ebb, align 8
  %i.ebd = getelementptr inbounds i8, ptr %i.eaz, i64 %i.ebc
  %i.ebe = getelementptr inbounds nuw i8, ptr %i.ebd, i64 240
  %i.ebf = load ptr, ptr %i.ebe, align 8, !tbaa !109 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ebf, null
  br i1 %.not.i.i.i, label %bb.ah, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.ag
  %i.ebg = getelementptr inbounds nuw i8, ptr %i.ebf, i64 56
  %i.ebh = load i8, ptr %i.ebg, align 8, !tbaa !124
  %.not.i1.i.i = icmp eq i8 %i.ebh, 0
  br i1 %.not.i1.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ebi = getelementptr inbounds nuw i8, ptr %i.ebf, i64 67
  %i.ebj = load i8, ptr %i.ebi, align 1, !tbaa !81
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.aj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ebf)
  %i.ebk = load ptr, ptr %i.ebf, align 8, !tbaa !107
  %i.ebl = getelementptr inbounds nuw i8, ptr %i.ebk, i64 48
  %i.ebm = load ptr, ptr %i.ebl, align 8
  %i.ebn = tail call noundef signext i8 %i.ebm(ptr noundef nonnull align 8 dereferenceable(570) %i.ebf, i8 noundef signext 10), !inline_history !487
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.ai, %bb.aj
  %.0.i.i.i = phi i8 [ %i.ebj, %bb.ai ], [ %i.ebn, %bb.aj ]
  %i.ebo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eaz, i8 noundef signext %.0.i.i.i)
  %i.ebp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ebo) ; 0 uses
  br label %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit179

_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit179: ; preds = %.lr.ph.i1341, %.lr.ph.i1333, %.lr.ph.i1285, %.lr.ph.i1245, %.lr.ph.i1221, %.lr.ph.i1141, %.lr.ph.i1109, %.lr.ph.i935, %.lr.ph.i883, %.lr.ph.i867, %.lr.ph.i851, %.lr.ph.i835, %.lr.ph.i819, %.lr.ph.i763, %.lr.ph.i723, %.lr.ph.i699, %.lr.ph.i683, %.lr.ph.i667, %.lr.ph.i651, %.lr.ph.i619, %.lr.ph.i610, %.lr.ph.i570, %.lr.ph.i530, %.lr.ph.i490, %.lr.ph.i473, %.lr.ph.i423, %.lr.ph.i383, %.lr.ph.i351, %.lr.ph.i223, %.lr.ph.i175, %middle.block, %middle.block1695, %middle.block1770, %middle.block1815, %middle.block1965, %middle.block2025, %middle.block2190, %middle.block2430, %middle.block2460, %middle.block2490, %middle.block2520, %middle.block2550, %middle.block2655, %middle.block2730, %middle.block2775, %middle.block2805, %middle.block2835, %middle.block2865, %middle.block2925, %middle.block2940, %middle.block3015, %middle.block3090, %middle.block3165, %middle.block3195, %middle.block3284, %middle.block3359, %middle.block3419, %middle.block3659, %middle.block3749, %middle.block3794, %bb.af, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit1329, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit1281, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit1241, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit1217, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit1137, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit1105, %.lr.ph.preheader.i1024, %_ZN12_GLOBAL__N_18initDataERN8LoopData9IndxArrayE.exit1023, %_ZN12_GLOBAL__N_18initDataERN8LoopData9IndxArrayE.exit931, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit879, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit863, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit847, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit831, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit815, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit759, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit719, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit695, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit679, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit663, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit647, %_ZN12_GLOBAL__N_18initDataERN8LoopData9IndxArrayE.exit, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit606, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit566, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit526, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit486, %_ZN12_GLOBAL__N_18initDataERN8LoopData12ComplexArrayE.exit467, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit419, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit379, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit347, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit219, %_ZN12_GLOBAL__N_18initDataERN8LoopData9RealArrayE.exit171, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12loopFinalizejR8LoopStat10LoopLength(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.b ; 31 uses
  store x86_fp80 0.000000e+00, ptr %i.c, align 16, !tbaa !92
  %i.d = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8 ; 85 uses
  switch i32 %0, label %bb.af [
    i32 0, label %bb.aj
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.e
    i32 7, label %bb.f
    i32 8, label %bb.g
    i32 9, label %bb.h
    i32 10, label %bb.i
    i32 11, label %bb.j
    i32 12, label %bb.k
    i32 13, label %bb.l
    i32 14, label %bb.m
    i32 15, label %bb.n
    i32 16, label %bb.o
    i32 17, label %bb.p
    i32 18, label %bb.q
    i32 19, label %bb.r
    i32 20, label %bb.s
    i32 21, label %bb.t
    i32 22, label %bb.u
    i32 23, label %bb.v
    i32 24, label %bb.w
    i32 25, label %bb.x
    i32 26, label %bb.y
    i32 27, label %bb.z
    i32 28, label %bb.aa
    i32 29, label %bb.ab
    i32 30, label %bb.ac
    i32 31, label %bb.ad
    i32 32, label %bb.ae
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 520
  %.val247 = load ptr, ptr %i.e, align 8, !tbaa !183 ; 5 uses
  %i.f = getelementptr i8, ptr %i.d, i64 528
  %.val248 = load i32, ptr %i.f, align 8, !tbaa !184 ; 3 uses
  %i.g = icmp sgt i32 %.val248, 0
  br i1 %i.g, label %.lr.ph.preheader.i, label %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %.val248 to i64 ; 2 uses
  %xtraiter1093 = and i64 %wide.trip.count.i, 3   ; 3 uses
  %i.h = icmp ult i32 %.val248, 4
  br i1 %i.h, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter1098 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.0141.i = phi x86_fp80 [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.aj, %.lr.ph.i ]
  %niter1099 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter1099.next.3, %.lr.ph.i ]
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.i = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.j = uitofp nneg i32 %i.i to double
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val247, i64 %indvars.iv.i
  %i.l = load double, ptr %i.k, align 8, !tbaa !73
  %i.m = fmul double %i.l, %i.j
  %i.n = fpext double %i.m to x86_fp80
  %i.o = fadd x86_fp80 %.0141.i, %i.n
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  %i.q = uitofp nneg i32 %i.p to double
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val247, i64 %indvars.iv.next.i
  %i.s = load double, ptr %i.r, align 8, !tbaa !73
  %i.t = fmul double %i.s, %i.q
  %i.u = fpext double %i.t to x86_fp80
  %i.v = fadd x86_fp80 %i.o, %i.u
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val247, i64 %indvars.iv.next.i.1
  %i.z = load double, ptr %i.y, align 8, !tbaa !73
  %i.aa = fmul double %i.z, %i.x
  %i.ab = fpext double %i.aa to x86_fp80
  %i.ac = fadd x86_fp80 %i.v, %i.ab
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 3 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv.next.i.3 to i32
  %i.ae = uitofp nneg i32 %i.ad to double
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val247, i64 %indvars.iv.next.i.2
  %i.ag = load double, ptr %i.af, align 8, !tbaa !73
  %i.ah = fmul double %i.ag, %i.ae
  %i.ai = fpext double %i.ah to x86_fp80
  %i.aj = fadd x86_fp80 %i.ac, %i.ai              ; 3 uses
  %niter1099.next.3 = add i64 %niter1099, 4       ; 2 uses
  %niter1099.ncmp.3 = icmp eq i64 %niter1099.next.3, %unroll_iter1098
  br i1 %niter1099.ncmp.3, label %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !780

_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod1095.not = icmp eq i64 %xtraiter1093, 0
  br i1 %lcmp.mod1095.not, label %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit.loopexit.unr-lcssa ]
  %.0141.i.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.aj, %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit.loopexit.unr-lcssa ]
  %lcmp.mod1097 = icmp ne i64 %xtraiter1093, 0
  tail call void @llvm.assume(i1 %lcmp.mod1097)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.0141.i.epil = phi x86_fp80 [ %.0141.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.aq, %.lr.ph.i.epil ]
  %epil.iter1094 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter1094.next, %.lr.ph.i.epil ]
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1 ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next.i.epil to i32
  %i.al = uitofp nneg i32 %i.ak to double
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val247, i64 %indvars.iv.i.epil
  %i.an = load double, ptr %i.am, align 8, !tbaa !73
  %i.ao = fmul double %i.an, %i.al
  %i.ap = fpext double %i.ao to x86_fp80
  %i.aq = fadd x86_fp80 %.0141.i.epil, %i.ap      ; 2 uses
  %epil.iter1094.next = add i64 %epil.iter1094, 1 ; 2 uses
  %epil.iter1094.cmp.not = icmp eq i64 %epil.iter1094.next, %xtraiter1093
  br i1 %epil.iter1094.cmp.not, label %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit, label %.lr.ph.i.epil, !llvm.loop !781

_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit: ; preds = %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %.014.lcssa.i = phi x86_fp80 [ 0.000000e+00, %bb.b ], [ %i.aj, %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.i.epil ]
  store x86_fp80 %.014.lcssa.i, ptr %i.c, align 16, !tbaa !92
  br label %bb.aj

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.ar = getelementptr i8, ptr %i.d, i64 472
  %.val244 = load ptr, ptr %i.ar, align 8, !tbaa !183 ; 5 uses
  %i.as = getelementptr i8, ptr %i.d, i64 480
  %.val245 = load i32, ptr %i.as, align 8, !tbaa !184 ; 3 uses
  %i.at = icmp sgt i32 %.val245, 0
  br i1 %i.at, label %.lr.ph.preheader.i262, label %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit269

.lr.ph.preheader.i262:                            ; preds = %bb.c
  %wide.trip.count.i263 = zext nneg i32 %.val245 to i64 ; 2 uses
  %xtraiter1079 = and i64 %wide.trip.count.i263, 3 ; 3 uses
  %i.au = icmp ult i32 %.val245, 4
  br i1 %i.au, label %.lr.ph.i264.epil.preheader, label %.lr.ph.preheader.i262.new

.lr.ph.preheader.i262.new:                        ; preds = %.lr.ph.preheader.i262
  %unroll_iter1084 = and i64 %wide.trip.count.i263, 2147483644
  br label %.lr.ph.i264

.lr.ph.i264:                                      ; preds = %.lr.ph.i264, %.lr.ph.preheader.i262.new
  %indvars.iv.i265 = phi i64 [ 0, %.lr.ph.preheader.i262.new ], [ %indvars.iv.next.i267.3, %.lr.ph.i264 ] ; 5 uses
  %.0141.i266 = phi x86_fp80 [ 0.000000e+00, %.lr.ph.preheader.i262.new ], [ %i.bw, %.lr.ph.i264 ]
  %niter1085 = phi i64 [ 0, %.lr.ph.preheader.i262.new ], [ %niter1085.next.3, %.lr.ph.i264 ]
  %indvars.iv.next.i267 = or disjoint i64 %indvars.iv.i265, 1 ; 2 uses
  %i.av = trunc nuw nsw i64 %indvars.iv.next.i267 to i32
  %i.aw = uitofp nneg i32 %i.av to double
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val244, i64 %indvars.iv.i265
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !73
  %i.az = fmul double %i.ay, %i.aw
  %i.ba = fpext double %i.az to x86_fp80
  %i.bb = fadd x86_fp80 %.0141.i266, %i.ba
  %indvars.iv.next.i267.1 = or disjoint i64 %indvars.iv.i265, 2 ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv.next.i267.1 to i32
  %i.bd = uitofp nneg i32 %i.bc to double
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val244, i64 %indvars.iv.next.i267
  %i.bf = load double, ptr %i.be, align 8, !tbaa !73
  %i.bg = fmul double %i.bf, %i.bd
  %i.bh = fpext double %i.bg to x86_fp80
  %i.bi = fadd x86_fp80 %i.bb, %i.bh
  %indvars.iv.next.i267.2 = or disjoint i64 %indvars.iv.i265, 3 ; 2 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv.next.i267.2 to i32
  %i.bk = uitofp nneg i32 %i.bj to double
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val244, i64 %indvars.iv.next.i267.1
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !73
  %i.bn = fmul double %i.bm, %i.bk
  %i.bo = fpext double %i.bn to x86_fp80
  %i.bp = fadd x86_fp80 %i.bi, %i.bo
  %indvars.iv.next.i267.3 = add nuw nsw i64 %indvars.iv.i265, 4 ; 3 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv.next.i267.3 to i32
  %i.br = uitofp nneg i32 %i.bq to double
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.val244, i64 %indvars.iv.next.i267.2
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !73
  %i.bu = fmul double %i.bt, %i.br
  %i.bv = fpext double %i.bu to x86_fp80
  %i.bw = fadd x86_fp80 %i.bp, %i.bv              ; 3 uses
  %niter1085.next.3 = add i64 %niter1085, 4       ; 2 uses
  %niter1085.ncmp.3 = icmp eq i64 %niter1085.next.3, %unroll_iter1084
  br i1 %niter1085.ncmp.3, label %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit269.loopexit.unr-lcssa, label %.lr.ph.i264, !llvm.loop !780

_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit269.loopexit.unr-lcssa: ; preds = %.lr.ph.i264
  %lcmp.mod1081.not = icmp eq i64 %xtraiter1079, 0
  br i1 %lcmp.mod1081.not, label %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit269, label %.lr.ph.i264.epil.preheader

.lr.ph.i264.epil.preheader:                       ; preds = %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit269.loopexit.unr-lcssa, %.lr.ph.preheader.i262
  %indvars.iv.i265.epil.init = phi i64 [ 0, %.lr.ph.preheader.i262 ], [ %indvars.iv.next.i267.3, %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit269.loopexit.unr-lcssa ]
  %.0141.i266.epil.init = phi x86_fp80 [ 0.000000e+00, %.lr.ph.preheader.i262 ], [ %i.bw, %_ZN12_GLOBAL__N_112updateChksumER8LoopStat10LoopLengthRKN8LoopData9RealArrayEd.exit269.loopexit.unr-lcssa ]
  %lcmp.mod1083 = icmp ne i64 %xtraiter1079, 0
  tail call void @llvm.assume(i1 %lcmp.mod1083)
end_hunk_3
begin_hunk_4_@_Z12freeLoopDatav:bb.a
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !834 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.preheader41.9, label %bb.j

bb.j:                                             ; preds = %.preheader41.8
  tail call void @_ZdaPv(ptr noundef nonnull %i.cd) #23
  %.pre63 = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  br label %.preheader41.9

.preheader41.9:                                   ; preds = %bb.j, %.preheader41.8
  %i.cf = phi ptr [ %.pre63, %bb.j ], [ %i.bz, %.preheader41.8 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 336 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !834
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !820
  tail call void @free(ptr noundef %i.ci) #21
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !834 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.preheader41.10, label %bb.k

bb.k:                                             ; preds = %.preheader41.9
  tail call void @_ZdaPv(ptr noundef nonnull %i.cj) #23
  br label %.preheader41.10

.preheader41.10:                                  ; preds = %bb.k, %.preheader41.9
  %i.cl = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 344 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !834
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !820
  tail call void @free(ptr noundef %i.co) #21
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !834 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.preheader40, label %bb.l

bb.l:                                             ; preds = %.preheader41.10
  tail call void @_ZdaPv(ptr noundef nonnull %i.cp) #23
  %.pre64 = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  br label %.preheader40

.preheader40:                                     ; preds = %bb.l, %.preheader41.10
  %i.cr = phi ptr [ %.pre64, %bb.l ], [ %i.cl, %.preheader41.10 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 352 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !834
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !820
  tail call void @free(ptr noundef %i.cu) #21
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !834 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.preheader, label %bb.m

bb.m:                                             ; preds = %.preheader40
  tail call void @_ZdaPv(ptr noundef nonnull %i.cv) #23
  br label %.preheader

.preheader:                                       ; preds = %.preheader40, %bb.m
  %i.cx = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 360 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !845
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !834
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !820
  tail call void @free(ptr noundef %i.db) #21
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !845 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !834 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.dd) #23
  %.pre65 = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre65, i64 360
  %.pre66 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !845
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %bb.n
  %i.df = phi ptr [ %i.dc, %.preheader ], [ %.pre66, %bb.n ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !834 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.dh) #23
  %.pre67 = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert68 = getelementptr inbounds nuw i8, ptr %.pre67, i64 360
  %.pre69 = load ptr, ptr %.phi.trans.insert68, align 8, !tbaa !845 ; 2 uses
  %i.dj = icmp eq ptr %.pre69, null
  br i1 %i.dj, label %bb.q, label %.thread

.thread:                                          ; preds = %bb.o, %bb.p
  %i.dk = phi ptr [ %.pre69, %bb.p ], [ %i.df, %bb.o ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.dk) #23
  %.pre70 = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %i.dl = phi ptr [ %.pre67, %bb.p ], [ %.pre70, %.thread ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 368
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !845
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !834
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !820
  tail call void @free(ptr noundef %i.dp) #21
  %i.dq = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 368
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !845 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !834 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.dt) #23
  %.pre71 = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  %.phi.trans.insert73 = getelementptr inbounds nuw i8, ptr %.pre71, i64 368
  %.pre74 = load ptr, ptr %.phi.trans.insert73, align 8, !tbaa !845
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dv = phi ptr [ %.pre74, %bb.r ], [ %i.ds, %bb.q ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !834 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %.thread110, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdaPv(ptr noundef nonnull %i.dx) #23
  %.pre75 = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert77 = getelementptr inbounds nuw i8, ptr %.pre75, i64 368
  %.pre78 = load ptr, ptr %.phi.trans.insert77, align 8, !tbaa !845 ; 2 uses
  %i.dz = icmp eq ptr %.pre78, null
  br i1 %i.dz, label %bb.u, label %.thread110

.thread110:                                       ; preds = %bb.s, %bb.t
  %i.ea = phi ptr [ %.pre78, %bb.t ], [ %i.dv, %bb.s ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.ea) #23
  %.pre79 = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %.thread110, %bb.t
  %i.eb = phi ptr [ %.pre79, %.thread110 ], [ %.pre75, %bb.t ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 376
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !845
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !834
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !820
  tail call void @free(ptr noundef %i.ef) #21
  %i.eg = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 376
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !845 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !834 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdaPv(ptr noundef nonnull %i.ej) #23
  %.pre80 = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  %.phi.trans.insert82 = getelementptr inbounds nuw i8, ptr %.pre80, i64 376
  %.pre83 = load ptr, ptr %.phi.trans.insert82, align 8, !tbaa !845
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.el = phi ptr [ %.pre83, %bb.v ], [ %i.ei, %bb.u ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !834 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %.thread111, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.en) #23
  %.pre84 = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert86 = getelementptr inbounds nuw i8, ptr %.pre84, i64 376
  %.pre87 = load ptr, ptr %.phi.trans.insert86, align 8, !tbaa !845 ; 2 uses
  %i.ep = icmp eq ptr %.pre87, null
  br i1 %i.ep, label %.thread112, label %.thread111

.thread111:                                       ; preds = %bb.w, %bb.x
  %i.eq = phi ptr [ %.pre87, %bb.x ], [ %i.el, %bb.w ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.eq) #23
  %.pre88 = load ptr, ptr @_ZL11s_loop_data, align 8, !tbaa !8 ; 2 uses
  %i.er = icmp eq ptr %.pre88, null
  br i1 %i.er, label %bb.y, label %.thread112

.thread112:                                       ; preds = %bb.x, %.thread111
  %i.es = phi ptr [ %.pre88, %.thread111 ], [ %.pre84, %bb.x ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.es) #23
  br label %bb.y

bb.y:                                             ; preds = %.thread112, %.thread111
  store ptr null, ptr @_ZL11s_loop_data, align 8, !tbaa !8
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %bb.y
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z14recursiveMkdirRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80   ; 3 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = shl i64 %i.b, 32
  %sext = add i64 %i.d, 4294967296
  %i.e = ashr exact i64 %sext, 32
  %i.f = tail call i64 @llvm.smax.i64(i64 %i.e, i64 -1)
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #22 ; 14 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !76
  %strcpy = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %i.h) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.i = add nsw i32 %i.c, -1                     ; 2 uses
  %i.j = call i32 @stat(ptr noundef nonnull %i.g, ptr noundef nonnull %1) #21
  %i.k = icmp ne i32 %i.j, 0
  %i.l = icmp sgt i32 %i.c, 0                     ; 2 uses
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %.preheader, label %._crit_edge

.loopexit:                                        ; preds = %bb.b, %.thread94
  %.297 = phi i32 [ %.14478, %.thread94 ], [ %i.w, %bb.b ] ; 3 uses
  %i.n = call i32 @stat(ptr noundef nonnull %i.g, ptr noundef nonnull %1) #21
  %i.o = icmp ne i32 %i.n, 0
  %i.p = icmp sgt i32 %.297, -1                   ; 2 uses
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.preheader.backedge, label %._crit_edge

.preheader:                                       ; preds = %bb.a, %.preheader.backedge
  %.14478 = phi i32 [ %.14478.be, %.preheader.backedge ], [ %i.i, %bb.a ] ; 4 uses
  %i.r = zext nneg i32 %.14478 to i64             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !81
  %i.u = icmp eq i8 %i.t, 47
  br i1 %i.u, label %.thread94, label %bb.b

.thread94:                                        ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.r
  store i8 0, ptr %i.v, align 1, !tbaa !81
  br label %.loopexit

bb.b:                                             ; preds = %.preheader
  %i.w = add nsw i32 %.14478, -1                  ; 2 uses
  %i.x = icmp slt i32 %.14478, 1
  br i1 %i.x, label %.loopexit, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.b, %.loopexit
  %.14478.be = phi i32 [ %i.w, %bb.b ], [ %.297, %.loopexit ]
  br label %.preheader, !llvm.loop !858

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.043.lcssa = phi i32 [ %i.i, %bb.a ], [ %.297, %.loopexit ]
  %.lcssa77 = phi i1 [ %i.l, %bb.a ], [ %i.p, %.loopexit ]
  br i1 %.lcssa77, label %bb.c, label %bb.h

bb.c:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !859
  %i.aa = and i32 %i.z, 61440
  %i.ab = icmp eq i32 %i.aa, 16384
  br i1 %i.ab, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.43, i64 noundef 36) ; 0 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !76
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !80
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ad, i64 noundef %i.ae) ; 5 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.44, i64 noundef 54) ; 0 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.45, i64 noundef 18) ; 0 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !107
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.af, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !109 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !124
  %.not.i1.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 67
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !81
  br label %.thread.thread

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.an)
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !107
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef signext i8 %i.au(ptr noundef nonnull align 8 dereferenceable(570) %i.an, i8 noundef signext 10), !inline_history !487
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i8 [ %i.ar, %bb.f ], [ %i.av, %bb.g ]
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext %.0.i.i.i)
  br label %.thread71.sink.split

bb.h:                                             ; preds = %._crit_edge
  %i.ax = tail call i32 @mkdir(ptr noundef nonnull %i.g, i32 noundef 448) #21
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.46, i64 noundef 30) ; 0 uses
  %i.az = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #21
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.g, i64 noundef %i.az) ; 0 uses
  %i.bb = load ptr, ptr @_ZSt4cout, align 8, !tbaa !107
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !109 ; 6 uses
  %.not.i.i.i55 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i55, label %bb.j, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt16__throw_bad_castv() #24
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !124
  %.not.i1.i.i57 = icmp eq i8 %i.bi, 0
  br i1 %.not.i1.i.i57, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !81
  br label %.thread67

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i56
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bg)
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !107
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef signext i8 %i.bn(ptr noundef nonnull align 8 dereferenceable(570) %i.bg, i8 noundef signext 10), !inline_history !487
  br label %.thread67

.thread67:                                        ; preds = %bb.l, %bb.k
  %.0.i.i.i58 = phi i8 [ %i.bk, %bb.k ], [ %i.bo, %bb.l ]
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i58)
  br label %.thread71.sink.split

.thread:                                          ; preds = %bb.c, %bb.h
  %.3 = phi i32 [ %.043.lcssa, %bb.c ], [ 0, %bb.h ]
  %sext93 = shl i64 %i.b, 32
  %i.bq = ashr exact i64 %sext93, 32              ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.thread
  %.4 = phi i32 [ %.3, %.thread ], [ %i.bw, %bb.o ] ; 2 uses
  %.not86 = icmp slt i32 %.4, %i.c
  br i1 %.not86, label %.lr.ph.preheader, label %.thread71

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.br = sext i32 %.4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %indvars.iv = phi i64 [ %i.br, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %i.g, i64 %indvars.iv
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !81
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %.thread98, label %bb.n

.thread98:                                        ; preds = %.lr.ph
  %i.bv = getelementptr inbounds i8, ptr %i.g, i64 %indvars.iv
  store i8 47, ptr %i.bv, align 1, !tbaa !81
  %indvars.iv.next99 = add nsw i64 %indvars.iv, 1 ; 2 uses
  %.not114 = icmp slt i64 %indvars.iv.next99, %i.bq
  br i1 %.not114, label %bb.o, label %.thread71

bb.n:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not113 = icmp slt i64 %indvars.iv.next, %i.bq
  br i1 %.not113, label %.lr.ph, label %.thread71, !llvm.loop !862

bb.o:                                             ; preds = %.thread98
  %i.bw = trunc nsw i64 %indvars.iv.next99 to i32
  %i.bx = tail call i32 @mkdir(ptr noundef nonnull %i.g, i32 noundef 448) #21
  %.not51 = icmp eq i32 %i.bx, 0
  br i1 %.not51, label %bb.m, label %bb.p, !llvm.loop !863

bb.p:                                             ; preds = %bb.o
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.46, i64 noundef 30) ; 0 uses
  %i.bz = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #21
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.g, i64 noundef %i.bz) ; 0 uses
  %i.cb = load ptr, ptr @_ZSt4cout, align 8, !tbaa !107
  %i.cc = getelementptr i8, ptr %i.cb, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cd
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIeSaIeEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPeS1_EEmRKe:bb.a
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.07.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %i.d, %bb.m ] ; 2 uses
  store x86_fp80 %i.i, ptr %.07.i.i.i.i.i.i.i, align 16, !tbaa !92
  %i.au = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, %i.at
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !175

_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !93
  %i.av = icmp sgt i64 %i.k, 16
  br i1 %i.av, label %bb.n, label %bb.o, !prof !891

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %.0.i.i.i.i.i, ptr align 16 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !93
  br label %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit
  %i.aw = icmp eq i64 %i.k, 16
  br i1 %i.aw, label %bb.p, label %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.ax = load x86_fp80, ptr %1, align 16, !tbaa !92
  store x86_fp80 %i.ax, ptr %.0.i.i.i.i.i, align 16, !tbaa !92
  br label %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ay = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.k
  store ptr %i.az, ptr %i.c, align 8, !tbaa !93
  %.not6.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not6.i.i.i70, label %_ZSt4fillIPeeEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.ba, %.lr.ph.i.i.i71 ], [ %1, %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69 ] ; 2 uses
  store x86_fp80 %i.i, ptr %.07.i.i.i72, align 16, !tbaa !92
  %i.ba = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 16 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ba, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPeeEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !175

bb.q:                                             ; preds = %bb.b
  %i.bb = load ptr, ptr %0, align 8, !tbaa !89    ; 5 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = sub i64 %i.f, %i.bc
  %i.be = ashr exact i64 %i.bd, 4                 ; 4 uses
  %i.bf = sub nsw i64 576460752303423487, %i.be
  %i.bg = icmp ult i64 %i.bf, %2
  br i1 %i.bg, label %bb.r, label %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #24
  unreachable

_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 %2)
  %i.bh = add nsw i64 %.sroa.speculated.i, %i.be  ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.be
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 576460752303423487)
  %i.bk = select i1 %i.bi, i64 576460752303423487, i64 %i.bj ; 3 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.bc                    ; 4 uses
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit
  %i.bn = shl nuw nsw i64 %i.bk, 4
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit
  %i.bp = phi ptr [ %i.bo, %bb.s ], [ null, %_ZNKSt6vectorIeSaIeEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bm ; 4 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 4       ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i.i.i.i75
  %i.bs = load x86_fp80, ptr %3, align 16, !tbaa !92 ; 9 uses
  %i.bt = add nsw i64 %.idx.i.i.i.i.i75, -16      ; 2 uses
  %i.bu = lshr exact i64 %i.bt, 4
  %i.bv = add nuw nsw i64 %i.bu, 1
  %xtraiter115 = and i64 %i.bv, 7                 ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol

.lr.ph.i.i.i.i.i.i.i76.prol:                      ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i76.prol
  %.07.i.i.i.i.i.i.i77.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ %i.bq, %bb.t ] ; 2 uses
  %prol.iter117 = phi i64 [ %prol.iter117.next, %.lr.ph.i.i.i.i.i.i.i76.prol ], [ 0, %bb.t ]
  store x86_fp80 %i.bs, ptr %.07.i.i.i.i.i.i.i77.prol, align 16, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77.prol, i64 16 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i76.prol, !llvm.loop !901

.lr.ph.i.i.i.i.i.i.i76.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol, %bb.t
  %.07.i.i.i.i.i.i.i77.unr = phi ptr [ %i.bq, %bb.t ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i76.prol ]
  %i.bx = icmp ult i64 %i.bt, 112
  br i1 %i.bx, label %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.unr, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit ] ; 9 uses
  store x86_fp80 %i.bs, ptr %.07.i.i.i.i.i.i.i77, align 16, !tbaa !92
  %i.by = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 16
  store x86_fp80 %i.bs, ptr %i.by, align 16, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 32
  store x86_fp80 %i.bs, ptr %i.bz, align 16, !tbaa !92
  %i.ca = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 48
  store x86_fp80 %i.bs, ptr %i.ca, align 16, !tbaa !92
  %i.cb = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 64
  store x86_fp80 %i.bs, ptr %i.cb, align 16, !tbaa !92
  %i.cc = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 80
  store x86_fp80 %i.bs, ptr %i.cc, align 16, !tbaa !92
  %i.cd = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 96
  store x86_fp80 %i.bs, ptr %i.cd, align 16, !tbaa !92
  %i.ce = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 112
  store x86_fp80 %i.bs, ptr %i.ce, align 16, !tbaa !92
  %i.cf = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.i78.7 = icmp eq ptr %i.cf, %i.br
  br i1 %.not.i.i.i.i.i.i.i78.7, label %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !175

_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %.lr.ph.i.i.i.i.i.i.i76.prol.loopexit
  %i.cg = icmp sgt i64 %i.bm, 16
  br i1 %i.cg, label %bb.u, label %bb.v, !prof !891

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.bp, ptr align 16 %i.bb, i64 %i.bm, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPemeeET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.ch = icmp eq i64 %i.bm, 16
  br i1 %i.ch, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ci = load x86_fp80, ptr %i.bb, align 16, !tbaa !92
  store x86_fp80 %i.ci, ptr %i.bp, align 16, !tbaa !92
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %2 ; 3 uses
  %i.ck = sub i64 %i.f, %i.bl                     ; 4 uses
  %i.cl = icmp sgt i64 %i.ck, 16
  br i1 %i.cl, label %bb.x, label %bb.y, !prof !891

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.cj, ptr align 16 %1, i64 %i.ck, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit
  %i.cm = icmp eq i64 %i.ck, 16
  br i1 %i.cm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cn = load x86_fp80, ptr %1, align 16, !tbaa !92
  store x86_fp80 %i.cn, ptr %i.cj, align 16, !tbaa !92
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  %.not.i82 = icmp eq ptr %i.bb, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.bb) #23
  br label %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit

_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.bp, ptr %0, align 8, !tbaa !89
  store ptr %i.co, ptr %i.c, align 8, !tbaa !93
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bk
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !157
  br label %_ZSt4fillIPeeEvT_S1_RKT0_.exit

_ZSt4fillIPeeEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPeS0_SaIeEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIeSaIeEE13_M_deallocateEPem.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #16

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #24
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i)
  %10 = shl nuw nsw i64 %7, 5
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #22 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !79
  %i.k = load ptr, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !80   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.m, ptr %i.a, align 8, !tbaa !100
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !76
  %i.p = load i64, ptr %i.a, align 8, !tbaa !100
  store i64 %i.p, ptr %i.j, align 8, !tbaa !81
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !81
  store i8 %i.r, ptr %i.q, align 1, !tbaa !81
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !80
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %11, %bb.e ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i.i, align 8, !tbaa !79, !alias.scope !902, !noalias !905
  %i.x = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !76, !alias.scope !905, !noalias !902 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !80, !alias.scope !905, !noalias !902 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !907
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.x, ptr %.012.i.i.i.i, align 8, !tbaa !76, !alias.scope !902, !noalias !905
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !81, !alias.scope !905, !noalias !902
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !81, !alias.scope !902, !noalias !905
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !80, !alias.scope !905, !noalias !902
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !80, !alias.scope !902, !noalias !905
  store ptr %i.y, ptr %.0911.i.i.i.i, align 8, !tbaa !76, !alias.scope !905, !noalias !902
  store i64 0, ptr %i.ag, align 8, !tbaa !80, !alias.scope !905, !noalias !902
  store i8 0, ptr %i.y, align 8, !tbaa !81, !alias.scope !905, !noalias !902
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !877

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i = phi ptr [ %11, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33
  %.012.i.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i.i28, align 8, !tbaa !79, !alias.scope !908, !noalias !911
  %i.am = load ptr, ptr %.0911.i.i.i.i29, align 8, !tbaa !76, !alias.scope !911, !noalias !908 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !80, !alias.scope !911, !noalias !908 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !913
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i.i28, align 8, !tbaa !76, !alias.scope !908, !noalias !911
  %i.at = load i64, ptr %i.an, align 8, !tbaa !81, !alias.scope !911, !noalias !908
  store i64 %i.at, ptr %i.al, align 8, !tbaa !81, !alias.scope !908, !noalias !911
  %.phi.trans.insert.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %.pre.i.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i.i31, align 8, !tbaa !80, !alias.scope !911, !noalias !908
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !80, !alias.scope !908, !noalias !911
  store ptr %i.an, ptr %.0911.i.i.i.i29, align 8, !tbaa !76, !alias.scope !911, !noalias !908
  store i64 0, ptr %i.av, align 8, !tbaa !80, !alias.scope !911, !noalias !908
  store i8 0, ptr %i.an, align 8, !tbaa !81, !alias.scope !911, !noalias !908
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i.i27, !llvm.loop !877

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i33 ]
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  call void @_ZdlPv(ptr noundef nonnull %i.d) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %11, ptr %0, align 8, !tbaa !75
  store ptr %.0.lcssa.i.i.i.i35, ptr %i.b, align 8, !tbaa !74
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %7
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !130
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = call ptr @__cxa_begin_catch(ptr %i.bd) #21 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %11) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bb

bb.l:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #25
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8LoopStatC2ERKS_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !88   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = icmp ugt i64 %i.i, 384307168202282325
  br i1 %i.j, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIeSaIeEEE8allocateEmPKv.exit.i.i.i.i, !prof !82

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorISt6vectorIeSaIeEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIeSaIeEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.l = phi ptr [ null, %bb.a ], [ %i.k, %_ZNSt15__new_allocatorISt6vectorIeSaIeEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !153
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !152
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !152
  %i.r = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIeSaIeEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %i.p, ptr %i.q, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_IeSaIeEESaIS1_EEC2ERKS3_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !88   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZNSt6vectorImSaImEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit ], [ %i.s, %bb.e ], [ %i.s, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_IeSaIeEESaIS1_EEC2ERKS3_.exit:     ; preds = %bb.c
  store ptr %i.r, ptr %i.m, align 8, !tbaa !87
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !173  ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !172  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.not.i.i.i.i32 = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i32, label %.noexc34, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IeSaIeEESaIS1_EEC2ERKS3_.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %.noexc.i.i33, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, !prof !82

.noexc.i.i33:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.bd

.noexc:                                           ; preds = %.noexc.i.i33
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #22
          to label %.noexc34 unwind label %bb.bd

.noexc34:                                         ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IeSaIeEESaIS1_EEC2ERKS3_.exit
  %i.ae = phi ptr [ null, %_ZNSt6vectorIS_IeSaIeEESaIS1_EEC2ERKS3_.exit ], [ %i.ad, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !172
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !173
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !155
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !154 ; 3 uses
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !154
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 4 uses
  %i.an = icmp sgt i64 %i.am, 8
  br i1 %i.an, label %bb.g, label %bb.h, !prof !891

bb.g:                                             ; preds = %.noexc34
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ai, i64 %i.am, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %.noexc34
  %i.ao = icmp eq i64 %i.am, 8
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !100
  store i64 %i.ap, ptr %i.ae, align 8, !tbaa !100
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.aq = getelementptr inbounds i8, ptr %i.ae, i64 %i.am
  store ptr %i.aq, ptr %i.af, align 8, !tbaa !173
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !93 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !89 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %.not.i.i.i.i35 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i.i35, label %.noexc38, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = icmp ugt i64 %i.ay, 9223372036854775792
  br i1 %i.az, label %.noexc.i.i36, label %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i, !prof !82

.noexc.i.i36:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc37 unwind label %bb.be

.noexc37:                                         ; preds = %.noexc.i.i36
  unreachable

_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #22
          to label %.noexc38 unwind label %bb.be

.noexc38:                                         ; preds = %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bb = phi ptr [ null, %bb.j ], [ %i.ba, %_ZNSt15__new_allocatorIeE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.bb, ptr %i.ar, align 8, !tbaa !89
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !93
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ay
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !157
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !156 ; 3 uses
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !156
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 4 uses
  %i.bk = icmp sgt i64 %i.bj, 16
  br i1 %i.bk, label %bb.l, label %bb.m, !prof !891

bb.l:                                             ; preds = %.noexc38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 16 %i.bb, ptr align 16 %i.bf, i64 %i.bj, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %.noexc38
  %i.bl = icmp eq i64 %i.bj, 16
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = load x86_fp80, ptr %i.bf, align 16, !tbaa !92
  store x86_fp80 %i.bm, ptr %i.bb, align 16, !tbaa !92
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bn = getelementptr inbounds i8, ptr %i.bb, i64 %i.bj
  store ptr %i.bn, ptr %i.bc, align 8, !tbaa !93
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !93 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !89 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
end_hunk_5
