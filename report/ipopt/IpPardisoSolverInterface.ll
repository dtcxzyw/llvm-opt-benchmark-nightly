Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpPardisoSolverInterface?download=true
inline.NumInlined: 727
inline.NumDeleted: 100
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.35 }
%union.anon.35 = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$__clang_call_terminate = comdat any

$_ZNK5Ipopt22PardisoSolverInterface15ProvidesInertiaEv = comdat any

$_ZNK5Ipopt22PardisoSolverInterface12MatrixFormatEv = comdat any

$_ZNK5Ipopt30SparseSymLinearSolverInterface27ProvidesDegeneracyDetectionEv = comdat any

$_ZN5Ipopt30SparseSymLinearSolverInterface22DetermineDependentRowsEPKiS2_RNSt7__cxx114listIiSaIiEEE = comdat any

$_ZN5Ipopt23AlgorithmStrategyObjectD2Ev = comdat any

$_ZN5Ipopt23AlgorithmStrategyObjectD0Ev = comdat any

$_ZTIN5Ipopt23DYNAMIC_LIBRARY_FAILUREE = comdat any

$_ZTSN5Ipopt23DYNAMIC_LIBRARY_FAILUREE = comdat any

$_ZTIN5Ipopt14IpoptExceptionE = comdat any

$_ZTSN5Ipopt14IpoptExceptionE = comdat any

$_ZTIN5Ipopt30SparseSymLinearSolverInterfaceE = comdat any

$_ZTSN5Ipopt30SparseSymLinearSolverInterfaceE = comdat any

$_ZTIN5Ipopt23AlgorithmStrategyObjectE = comdat any

$_ZTSN5Ipopt23AlgorithmStrategyObjectE = comdat any

$_ZTIN5Ipopt16ReferencedObjectE = comdat any

$_ZTSN5Ipopt16ReferencedObjectE = comdat any

$_ZTVN5Ipopt23AlgorithmStrategyObjectE = comdat any

@_ZTVN5Ipopt22PardisoSolverInterfaceE = constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN5Ipopt22PardisoSolverInterfaceE, ptr @_ZN5Ipopt22PardisoSolverInterfaceD1Ev, ptr @_ZN5Ipopt22PardisoSolverInterfaceD0Ev, ptr @_ZN5Ipopt22PardisoSolverInterface14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN5Ipopt22PardisoSolverInterface19InitializeStructureEiiPKiS2_, ptr @_ZN5Ipopt22PardisoSolverInterface17GetValuesArrayPtrEv, ptr @_ZN5Ipopt22PardisoSolverInterface10MultiSolveEbPKiS2_iPdbi, ptr @_ZNK5Ipopt22PardisoSolverInterface16NumberOfNegEValsEv, ptr @_ZN5Ipopt22PardisoSolverInterface15IncreaseQualityEv, ptr @_ZNK5Ipopt22PardisoSolverInterface15ProvidesInertiaEv, ptr @_ZNK5Ipopt22PardisoSolverInterface12MatrixFormatEv, ptr @_ZNK5Ipopt30SparseSymLinearSolverInterface27ProvidesDegeneracyDetectionEv, ptr @_ZN5Ipopt30SparseSymLinearSolverInterface22DetermineDependentRowsEPKiS2_RNSt7__cxx114listIiSaIiEEE] }, align 8
@.str = private unnamed_addr constant [26 x i8] c"pardiso_matching_strategy\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Matching strategy to be used by Pardiso\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"complete+2x2\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Match complete (IPAR(13)=1)\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Match complete+2x2 (IPAR(13)=2)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"constraints\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Match constraints (IPAR(13)=3)\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"This is IPAR(13) in Pardiso manual.\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"pardiso_redo_symbolic_fact_only_if_inertia_wrong\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"Toggle for handling case when elements were perturbed by Pardiso.\00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"Always redo symbolic factorization when elements were perturbed\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.14 = private unnamed_addr constant [92 x i8] c"Only redo symbolic factorization when elements were perturbed if also the inertia was wrong\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"pardiso_repeated_perturbation_means_singular\00", align 1
@.str.17 = private unnamed_addr constant [106 x i8] c"Whether to assume that matrix is singular if elements were perturbed after recent symbolic factorization.\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"pardiso_msglvl\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Pardiso message level\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"This is MSGLVL in the Pardiso manual.\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"pardiso_skip_inertia_check\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"Whether to pretend that inertia is correct.\00", align 1
@.str.23 = private unnamed_addr constant [195 x i8] c"Setting this option to \22yes\22 essentially disables inertia check. This option makes the algorithm non-robust and easily fail, but it might give some insight into the necessity of inertia control.\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"pardiso_max_iterative_refinement_steps\00", align 1
@.str.25 = private unnamed_addr constant [47 x i8] c"Limit on number of iterative refinement steps.\00", align 1
@.str.26 = private unnamed_addr constant [530 x i8] c"The solver does not perform more than the absolute value of this value steps of iterative refinement and stops the process if a satisfactory level of accuracy of the solution in terms of backward error is achieved. If negative, the accumulation of the residue uses extended precision real and complex data types. Perturbed pivots result in iterative refinement. The solver automatically performs two steps of iterative refinements when perturbed pivots are obtained during the numerical factorization and this option is set to 0.\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"pardiso_order\00", align 1
@.str.28 = private unnamed_addr constant [72 x i8] c"Controls the fill-in reduction ordering algorithm for the input matrix.\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"metis\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"amd\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"minimum degree algorithm\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"MeTiS nested dissection algorithm\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"pmetis\00", align 1
@.str.35 = private unnamed_addr constant [63 x i8] c"parallel (OpenMP) version of MeTiS nested dissection algorithm\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"pardiso_max_iter\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"Maximum number of Krylov-Subspace Iteration\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"pardiso_iter_relative_tol\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"Relative Residual Convergence\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"pardiso_iter_coarse_size\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"Maximum Size of Coarse Grid Matrix\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"pardiso_iter_max_levels\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"Maximum Size of Grid Levels\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"pardiso_iter_dropping_factor\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"dropping value for incomplete factor\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"pardiso_iter_dropping_schur\00", align 1
@.str.54 = private unnamed_addr constant [52 x i8] c"dropping value for sparsify schur complement factor\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"pardiso_iter_max_row_fill\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"max fill for each row\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"pardiso_iter_inverse_norm_factor\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"pardiso_iterative\00", align 1
@.str.62 = private unnamed_addr constant [47 x i8] c"Switch for iterative solver in Pardiso library\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"pardiso_max_droptol_corrections\00", align 1
@.str.64 = private unnamed_addr constant [64 x i8] c"Maximal number of decreases of drop tolerance during one solve.\00", align 1
@.str.65 = private unnamed_addr constant [53 x i8] c"This is relevant only for iterative Pardiso options.\00", align 1
@_ZN5IpoptL16user_pardisoinitE = internal unnamed_addr global ptr null, align 8
@_ZN5IpoptL12user_pardisoE = internal unnamed_addr global ptr null, align 8
@_ZN5IpoptL15user_isparallelE = internal unnamed_addr global i8 0, align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"pardisoinit\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"pardiso\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"pardiso_ipopt_newinterface\00", align 1
@_ZTIN5Ipopt23DYNAMIC_LIBRARY_FAILUREE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt23DYNAMIC_LIBRARY_FAILUREE, ptr @_ZTIN5Ipopt14IpoptExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt23DYNAMIC_LIBRARY_FAILUREE = linkonce_odr constant [34 x i8] c"N5Ipopt23DYNAMIC_LIBRARY_FAILUREE\00", comdat, align 1
@_ZTIN5Ipopt14IpoptExceptionE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5Ipopt14IpoptExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt14IpoptExceptionE = linkonce_odr constant [25 x i8] c"N5Ipopt14IpoptExceptionE\00", comdat, align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"pardiso_exist_parallel\00", align 1
@.str.70 = private unnamed_addr constant [59 x i8] c"Problem with Pardiso license (error %d from pardisoinit).\0A\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1
@.str.72 = private unnamed_addr constant [43 x i8] c"Invalid value for OMP_NUM_THREADS (\22%s\22).\0A\00", align 1
@.str.73 = private unnamed_addr constant [81 x i8] c"Using environment OMP_NUM_THREADS = %d as the number of processors for PARDISO.\0A\00", align 1
@.str.74 = private unnamed_addr constant [113 x i8] c"You should set the environment variable OMP_NUM_THREADS to the number of processors used in Pardiso (e.g., 1).\0A\0A\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"Pardiso matrix ordering     (IPARM(2)): %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"Pardiso max. iterref. steps (IPARM(8)): %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"Pardiso matching strategy  (IPARM(13)): %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [45 x i8] c"Calling Pardiso for symbolic factorization.\0A\00", align 1
@.str.79 = private unnamed_addr constant [73 x i8] c"Pardiso symbolic factorization returns ERROR = %d.  Matrix is singular.\0A\00", align 1
@.str.80 = private unnamed_addr constant [68 x i8] c"Error in Pardiso during symbolic factorization phase.  ERROR = %d.\0A\00", align 1
@.str.81 = private unnamed_addr constant [61 x i8] c"Memory in KB required for the symbolic factorization  = %d.\0A\00", align 1
@.str.82 = private unnamed_addr constant [70 x i8] c"Integer memory in KB required for the numerical factorization  = %d.\0A\00", align 1
@.str.83 = private unnamed_addr constant [70 x i8] c"Double  memory in KB required for the numerical factorization  = %d.\0A\00", align 1
@.str.84 = private unnamed_addr constant [36 x i8] c"Calling Pardiso for factorization.\0A\00", align 1
@.str.85 = private unnamed_addr constant [64 x i8] c"Pardiso factorization returns ERROR = %d.  Matrix is singular.\0A\00", align 1
@.str.86 = private unnamed_addr constant [59 x i8] c"Error in Pardiso during factorization phase.  ERROR = %d.\0A\00", align 1
@.str.87 = private unnamed_addr constant [57 x i8] c"Number of perturbed pivots in factorization phase = %d.\0A\00", align 1
@.str.91 = private unnamed_addr constant [48 x i8] c"Wrong inertia: required are %d, but we got %d.\0A\00", align 1
@.str.92 = private unnamed_addr constant [59 x i8] c"Iterative solver in Pardiso did not converge (ERROR = %d)\0A\00", align 1
@.str.93 = private unnamed_addr constant [69 x i8] c"  Decreasing drop tolerances from DPARM_[4] = %e and DPARM_[5] = %e\0A\00", align 1
@.str.94 = private unnamed_addr constant [69 x i8] c"                               to DPARM_[4] = %e and DPARM_[5] = %e\0A\00", align 1
@.str.95 = private unnamed_addr constant [44 x i8] c"Number of iterative refinement steps = %d.\0A\00", align 1
@.str.97 = private unnamed_addr constant [51 x i8] c"Error in Pardiso during solve phase.  ERROR = %d.\0A\00", align 1
@_ZTIN5Ipopt22PardisoSolverInterfaceE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt22PardisoSolverInterfaceE, ptr @_ZTIN5Ipopt30SparseSymLinearSolverInterfaceE }, align 8
@_ZTSN5Ipopt22PardisoSolverInterfaceE = constant [33 x i8] c"N5Ipopt22PardisoSolverInterfaceE\00", align 1
@_ZTIN5Ipopt30SparseSymLinearSolverInterfaceE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt30SparseSymLinearSolverInterfaceE, ptr @_ZTIN5Ipopt23AlgorithmStrategyObjectE }, comdat, align 8
@_ZTSN5Ipopt30SparseSymLinearSolverInterfaceE = linkonce_odr constant [41 x i8] c"N5Ipopt30SparseSymLinearSolverInterfaceE\00", comdat, align 1
@_ZTIN5Ipopt23AlgorithmStrategyObjectE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt23AlgorithmStrategyObjectE, ptr @_ZTIN5Ipopt16ReferencedObjectE }, comdat, align 8
@_ZTSN5Ipopt23AlgorithmStrategyObjectE = linkonce_odr constant [34 x i8] c"N5Ipopt23AlgorithmStrategyObjectE\00", comdat, align 1
@_ZTIN5Ipopt16ReferencedObjectE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5Ipopt16ReferencedObjectE }, comdat, align 8
@_ZTSN5Ipopt16ReferencedObjectE = linkonce_odr constant [27 x i8] c"N5Ipopt16ReferencedObjectE\00", comdat, align 1
@_ZTVN5Ipopt23AlgorithmStrategyObjectE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5Ipopt23AlgorithmStrategyObjectE, ptr @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev, ptr @_ZN5Ipopt23AlgorithmStrategyObjectD0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.98 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"IPOPT_WRITE_MAT\00", align 1
@.str.100 = private unnamed_addr constant [19 x i8] c"IPOPT_WRITE_PREFIX\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"mat-ipopt\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"%s_%03d-%02d.iajaa\00", align 1
@.str.103 = private unnamed_addr constant [20 x i8] c"IPOPT_WRITE_MAT_MTX\00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"%s_%03d-%02d.mtx\00", align 1

@_ZN5Ipopt22PardisoSolverInterfaceC1ENS_8SmartPtrINS_13LibraryLoaderEEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5Ipopt22PardisoSolverInterfaceC2ENS_8SmartPtrINS_13LibraryLoaderEEE
@_ZN5Ipopt22PardisoSolverInterfaceD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5Ipopt22PardisoSolverInterfaceD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt22PardisoSolverInterfaceC2ENS_8SmartPtrINS_13LibraryLoaderEEE(ptr noundef nonnull align 8 dereferenceable(177) initializes((0, 12), (16, 49), (64, 76), (92, 93), (104, 116), (136, 144), (152, 177)) %0, ptr nofree noundef readonly align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i8 0, i64 33, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5Ipopt22PardisoSolverInterfaceE, i64 16), ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 -1, ptr %i.d, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.e, align 4, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 1, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 1, ptr %i.g, align 4, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 -2, ptr %i.h, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 -1, ptr %i.j, align 4, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !39
  %i.l = load ptr, ptr %1, align 8, !tbaa !39     ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.l, null            ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !8
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.l, ptr %i.k, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.p, i8 0, i64 17, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znam(i64 noundef 512) #19
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.q, ptr %i.r, align 8, !tbaa !40
  %i.s = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #19
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.s, ptr %i.t, align 8, !tbaa !41
  %i.u = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znam(i64 noundef 512) #19
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.u, ptr %i.v, align 8, !tbaa !42
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrINS_13LibraryLoaderEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !8
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.x, align 8, !tbaa !8
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %_ZN5Ipopt8SmartPtrINS_13LibraryLoaderEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #20, !inline_history !43
  br label %_ZN5Ipopt8SmartPtrINS_13LibraryLoaderEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_13LibraryLoaderEED2Ev.exit: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) #20
  resume { ptr, i32 } %i.w
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Ipopt22PardisoSolverInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(177) dereferenceable(177) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca double, align 8                   ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5Ipopt22PardisoSolverInterfaceE, i64 16), ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.h = load i8, ptr %i.g, align 4, !tbaa !33, !range !44, !noundef !45
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 -1, ptr %i.a, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47
  store i32 %i.k, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 0, ptr %i.e, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  invoke void %i.m(ptr noundef %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d, ptr noundef %i.w)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.y) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ab) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_13LibraryLoaderEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !8
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !8
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.n, label %_ZN5Ipopt8SmartPtrINS_13LibraryLoaderEED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(56) %i.ak) #20, !inline_history !43
  br label %_ZN5Ipopt8SmartPtrINS_13LibraryLoaderEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_13LibraryLoaderEED2Ev.exit: ; preds = %bb.l, %bb.m, %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt23AlgorithmStrategyObjectE, i64 16), ptr %0, align 8, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !51 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_13LibraryLoaderEED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !8
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !8
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.p, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(2185) %i.at) #20, !inline_history !52
  br label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i

_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i: ; preds = %bb.p, %bb.o, %_ZN5Ipopt8SmartPtrINS_13LibraryLoaderEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !53 ; 4 uses
  %.not.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !8
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !8
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.r, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i

bb.r:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(2232) %i.bc) #20, !inline_history !54
  br label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i

_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i:    ; preds = %bb.r, %bb.q, %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !55 ; 4 uses
  %.not.i.i2.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i2.i, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !8
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !8
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.t, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(24) %i.bl) #20, !inline_history !56
  br label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i

_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i:     ; preds = %bb.t, %bb.s, %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !57 ; 4 uses
  %.not.i.i3.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i3.i, label %_ZN5Ipopt23AlgorithmStrategyObjectD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !8
  %i.bx = add nsw i32 %i.bw, -1                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Ipopt22PardisoSolverInterface13FactorizationEPKiS2_bi:bb.a
_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i48
  %i.he = load ptr, ptr %6, align 8, !tbaa !67    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.gv
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit51
  %i.hg = load i64, ptr %i.gv, align 8, !tbaa !69
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.loopexit

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i48, %bb.af
  %i.hi = landingpad { ptr, i32 }
          cleanup
  %i.hj = load ptr, ptr %6, align 8, !tbaa !67    ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.gv
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.ag
  %i.hl = load i64, ptr %i.gv, align 8, !tbaa !69
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ao

bb.ah:                                            ; preds = %bb.y
  %i.hn = load ptr, ptr %i.k, align 8, !tbaa !53  ; 3 uses
  %.not81 = icmp eq ptr %i.hn, null
  br i1 %.not81, label %.critedge, label %._crit_edge.i.i58

._crit_edge.i.i58:                                ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %i.ac, ptr %7, align 8, !tbaa !62
  store i16 28752, ptr %i.ac, align 8
  store i64 2, ptr %i.ad, align 8, !tbaa !70
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 18
  store i8 0, ptr %i.ho, align 2, !tbaa !69
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 168
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !70
  %i.hr = and i64 %i.hq, -2
  %i.hs = icmp eq i64 %i.hr, 4611686018427387902
  br i1 %i.hs, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i62

bb.ai:                                            ; preds = %._crit_edge.i.i58
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.98) #23
          to label %.noexc63 unwind label %.loopexit.split-lp84

.noexc63:                                         ; preds = %bb.ai
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i62: ; preds = %._crit_edge.i.i58
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 160
  %i.hu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ht, ptr noundef nonnull %i.ac, i64 noundef 2)
          to label %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit65 unwind label %.loopexit83 ; 0 uses

_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i62
  %i.hv = load ptr, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.ac
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit65
  %i.hx = load i64, ptr %i.ac, align 8, !tbaa !69
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.critedge

.loopexit83:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i62
  %lpad.loopexit85 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp84:                             ; preds = %bb.ai
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp84, %.loopexit83
  %lpad.phi87 = phi { ptr, i32 } [ %lpad.loopexit85, %.loopexit83 ], [ %lpad.loopexit.split-lp86, %.loopexit.split-lp84 ]
  %i.hz = load ptr, ptr %7, align 8, !tbaa !67    ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.ac
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.aj
  %i.ib = load i64, ptr %i.ac, align 8, !tbaa !69
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ao

.critedge:                                        ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %bb.ad, %bb.ah
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 83
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !106, !range !44, !noundef !45
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge
  %i.ig = load i32, ptr %i.x, align 8, !tbaa !32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge
  %.022 = phi i32 [ %i.ig, %bb.ak ], [ %4, %.critedge ] ; 2 uses
  br i1 %3, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.ih = load i32, ptr %i.x, align 8, !tbaa !32  ; 2 uses
  %.not = icmp eq i32 %.022, %i.ih
  br i1 %.not, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ii = load ptr, ptr %i.l, align 8, !tbaa !57  ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !10
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  call void (ptr, i32, i32, ptr, ...) %i.il(ptr noundef nonnull align 8 dereferenceable(40) %i.ii, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.91, i32 noundef %.022, i32 noundef %i.ih)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Ipopt9TimedTask3EndEv.exit38, %bb.al, %bb.am, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.an, %bb.v, %bb.u, %bb.i, %bb.h
  %.023 = phi i32 [ 1, %bb.u ], [ 1, %bb.ae ], [ 4, %bb.v ], [ 0, %bb.al ], [ 1, %bb.h ], [ 4, %bb.i ], [ 2, %bb.an ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ 0, %bb.am ], [ 1, %_ZN5Ipopt9TimedTask3EndEv.exit38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.023

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.pn34.pn = phi { ptr, i32 } [ %i.hi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %lpad.phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %lpad.phi87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %.pn34.pn
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 5) i32 @_ZN5Ipopt22PardisoSolverInterface5SolveEPKiS2_iPd(ptr noundef nonnull align 8 dereferenceable(177) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 5 uses
  %5 = alloca %"class.std::basic_ofstream", align 8 ; 14 uses
  %i.e = alloca [128 x i8], align 16              ; 5 uses
  %6 = alloca %"class.std::basic_ofstream", align 8 ; 13 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53   ; 7 uses
  %.not49 = icmp eq ptr %i.l, null
  br i1 %.not49, label %_ZN5Ipopt9TimedTask5StartEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1232
  %i.n = load i8, ptr %i.m, align 8, !tbaa !80, !range !44, !noundef !45
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZN5Ipopt9TimedTask5StartEv.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 1184
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 1234
  store i8 0, ptr %i.q, align 2, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1233
  store i8 1, ptr %i.r, align 1, !tbaa !83
  %i.s = tail call noundef double @_ZN5Ipopt7CpuTimeEv()
  store double %i.s, ptr %i.p, align 8, !tbaa !84
  %i.t = tail call noundef double @_ZN5Ipopt7SysTimeEv()
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 1200
  store double %i.t, ptr %i.u, align 8, !tbaa !85
  %i.v = tail call noundef double @_ZN5Ipopt13WallclockTimeEv()
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 1216
  store double %i.v, ptr %i.w, align 8, !tbaa !86
  br label %_ZN5Ipopt9TimedTask5StartEv.exit

_ZN5Ipopt9TimedTask5StartEv.exit:                 ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  store i32 33, ptr %i.f, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !47   ; 10 uses
  store i32 %i.y, ptr %i.g, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i32 %3, ptr %i.i, align 4, !tbaa !46
  %i.z = mul nsw i32 %i.y, %3                     ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i32 %i.z, 0
  %i.ac = shl nsw i64 %i.aa, 3
  %i.ad = select i1 %i.ab, i64 -1, i64 %i.ac      ; 2 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #19 ; 3 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.ag = icmp sgt i32 %i.y, 0                    ; 3 uses
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN5Ipopt9TimedTask5StartEv.exit
  %i.ah = zext nneg i32 %i.y to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ae, i8 0, i64 %i.ai, i1 false), !tbaa !48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %4, i64 %i.ai, i1 false), !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN5Ipopt9TimedTask5StartEv.exit
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !53  ; 2 uses
  %.not50 = icmp eq ptr %i.aj, null
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 68
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !90
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.038 = phi i32 [ %i.al, %bb.d ], [ 0, %._crit_edge ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !101 ; 2 uses
  %i.aq = tail call ptr @getenv(ptr noundef nonnull @.str.99) #20
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ar = sext i32 %i.y to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !46 ; 2 uses
  %i.au = add i32 %i.at, -1                       ; 2 uses
  %i.av = tail call ptr @getenv(ptr noundef nonnull @.str.100) #20 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  %spec.store.select.i = select i1 %i.aw, ptr @.str.101, ptr %i.av
  %i.ax = call noundef i32 (ptr, i64, ptr, ...) @_ZN5Ipopt8SnprintfEPclPKcz(ptr noundef nonnull %i.d, i64 noundef 127, ptr noundef nonnull @.str.102, ptr noundef nonnull %spec.store.select.i, i32 noundef %.038, i32 noundef %i.ap) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef nonnull %i.d, i32 noundef 16)
  %i.ay = load ptr, ptr %5, align 8, !tbaa !10
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds i8, ptr %5, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 16, ptr %i.bc, align 8, !tbaa !107
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.y)
          to label %bb.g unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !10
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !116 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i, label %.invoke.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !123
  %.not.i1.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i1.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 67
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !69
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bj)
          to label %.noexc82.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc82.i:                                       ; preds = %bb.i
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef signext i8 %i.bq(ptr noundef nonnull align 8 dereferenceable(570) %i.bj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !inline_history !128

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc82.i, %bb.h
  %.0.i.i.i.i = phi i8 [ %i.bn, %bb.h ], [ %i.br, %.noexc82.i ]
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i8 noundef signext %.0.i.i.i.i)
          to label %.noexc84.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc84.i:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %_ZNSolsEPFRSoS_E.exit.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

_ZNSolsEPFRSoS_E.exit.i:                          ; preds = %.noexc84.i
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.au)
          to label %bb.j unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 3 uses

bb.j:                                             ; preds = %_ZNSolsEPFRSoS_E.exit.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !10
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 240
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !116 ; 6 uses
  %.not.i.i.i86.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i86.i, label %.invoke.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i87.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i87.i: ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !123
  %.not.i1.i.i88.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i1.i.i88.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i87.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 67
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !69
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i89.i

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i87.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ca)
          to label %.noexc92.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc92.i:                                       ; preds = %bb.l
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef signext i8 %i.ch(ptr noundef nonnull align 8 dereferenceable(570) %i.ca, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i89.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !inline_history !128

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i89.i: ; preds = %.noexc92.i, %bb.k
  %.0.i.i.i90.i = phi i8 [ %i.ce, %bb.k ], [ %i.ci, %.noexc92.i ]
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i8 noundef signext %.0.i.i.i90.i)
          to label %.noexc94.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.noexc94.i:                                       ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i89.i
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %_ZNSolsEPFRSoS_E.exit60.preheader.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

_ZNSolsEPFRSoS_E.exit60.preheader.i:              ; preds = %.noexc94.i
  %.not56172.i = icmp slt i32 %i.y, 0
  br i1 %.not56172.i, label %.preheader163.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSolsEPFRSoS_E.exit60.preheader.i
  %i.cl = add nuw i32 %i.y, 1
  %wide.trip.count.i = zext i32 %i.cl to i64
  br label %.lr.ph.i

.preheader163.i:                                  ; preds = %_ZNSolsEPFRSoS_E.exit61.i, %_ZNSolsEPFRSoS_E.exit60.preheader.i
  %i.cm = icmp sgt i32 %i.at, 1
  br i1 %i.cm, label %.lr.ph175.preheader.i, label %._crit_edge.i

.lr.ph175.preheader.i:                            ; preds = %.preheader163.i
  %wide.trip.count191.i = zext nneg i32 %i.au to i64 ; 2 uses
  br label %.lr.ph175.i

.lr.ph.i:                                         ; preds = %_ZNSolsEPFRSoS_E.exit61.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNSolsEPFRSoS_E.exit61.i ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !46
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.co)
          to label %bb.m unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 3 uses

bb.m:                                             ; preds = %.lr.ph.i
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !10
  %i.cr = getelementptr i8, ptr %i.cq, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 240
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !116 ; 6 uses
  %.not.i.i.i97.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i97.i, label %.invoke.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i98.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i98.i: ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !123
  %.not.i1.i.i99.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i1.i.i99.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i98.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 67
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !69
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i100.i

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i98.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cv)
          to label %.noexc103.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc103.i:                                      ; preds = %bb.o
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef signext i8 %i.dc(ptr noundef nonnull align 8 dereferenceable(570) %i.cv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i100.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.i, !inline_history !128

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i100.i: ; preds = %.noexc103.i, %bb.n
  %.0.i.i.i101.i = phi i8 [ %i.cz, %bb.n ], [ %i.dd, %.noexc103.i ]
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, i8 noundef signext %.0.i.i.i101.i)
          to label %.noexc105.i unwind label %.loopexit.split-lp155.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc105.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i100.i
end_hunk_1
