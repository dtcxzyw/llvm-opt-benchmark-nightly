Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpStdInterfaceTNLP?download=true
inline.NumInlined: 163
inline.NumDeleted: 45
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN5Ipopt24INVALID_STDINTERFACE_NLPC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i = comdat any

$_ZN5Ipopt14IpoptExceptionD2Ev = comdat any

$_ZN5Ipopt4TNLP20get_var_con_metadataEiRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EESt4lessIS7_ESaISt4pairIKS7_SA_EEERS1_IS7_S8_IiSaIiEESC_SaISD_ISE_SK_EEERS1_IS7_S8_IdSaIdEESC_SaISD_ISE_SQ_EEEiSI_SO_SU_ = comdat any

$_ZN5Ipopt4TNLP23get_variables_linearityEiPNS0_13LinearityTypeE = comdat any

$_ZN5Ipopt4TNLP25get_constraints_linearityEiPNS0_13LinearityTypeE = comdat any

$_ZN5Ipopt4TNLP22get_warm_start_iterateERNS_14IteratesVectorE = comdat any

$_ZN5Ipopt4TNLP33get_number_of_nonlinear_variablesEv = comdat any

$_ZN5Ipopt4TNLP31get_list_of_nonlinear_variablesEiPi = comdat any

$_ZN5Ipopt4TNLP17finalize_metadataEiRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EESt4lessIS7_ESaISt4pairIKS7_SA_EEERKS1_IS7_S8_IiSaIiEESC_SaISD_ISE_SL_EEERKS1_IS7_S8_IdSaIdEESC_SaISD_ISE_SS_EEEiSJ_SQ_SX_ = comdat any

$_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_ = comdat any

$_ZN5Ipopt24INVALID_STDINTERFACE_NLPD0Ev = comdat any

$_ZN5Ipopt14IpoptExceptionD0Ev = comdat any

$_ZTIN5Ipopt24INVALID_STDINTERFACE_NLPE = comdat any

$_ZTSN5Ipopt24INVALID_STDINTERFACE_NLPE = comdat any

$_ZTIN5Ipopt14IpoptExceptionE = comdat any

$_ZTSN5Ipopt14IpoptExceptionE = comdat any

$_ZTIN5Ipopt4TNLPE = comdat any

$_ZTSN5Ipopt4TNLPE = comdat any

$_ZTIN5Ipopt16ReferencedObjectE = comdat any

$_ZTSN5Ipopt16ReferencedObjectE = comdat any

$_ZTVN5Ipopt24INVALID_STDINTERFACE_NLPE = comdat any

$_ZTVN5Ipopt14IpoptExceptionE = comdat any

@_ZTVN5Ipopt16StdInterfaceTNLPE = constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr @_ZTIN5Ipopt16StdInterfaceTNLPE, ptr @_ZN5Ipopt16StdInterfaceTNLPD1Ev, ptr @_ZN5Ipopt16StdInterfaceTNLPD0Ev, ptr @_ZN5Ipopt16StdInterfaceTNLP12get_nlp_infoERiS1_S1_S1_RNS_4TNLP14IndexStyleEnumE, ptr @_ZN5Ipopt4TNLP20get_var_con_metadataEiRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EESt4lessIS7_ESaISt4pairIKS7_SA_EEERS1_IS7_S8_IiSaIiEESC_SaISD_ISE_SK_EEERS1_IS7_S8_IdSaIdEESC_SaISD_ISE_SQ_EEEiSI_SO_SU_, ptr @_ZN5Ipopt16StdInterfaceTNLP15get_bounds_infoEiPdS1_iS1_S1_, ptr @_ZN5Ipopt16StdInterfaceTNLP22get_scaling_parametersERdRbiPdS2_iS3_, ptr @_ZN5Ipopt4TNLP23get_variables_linearityEiPNS0_13LinearityTypeE, ptr @_ZN5Ipopt4TNLP25get_constraints_linearityEiPNS0_13LinearityTypeE, ptr @_ZN5Ipopt16StdInterfaceTNLP18get_starting_pointEibPdbS1_S1_ibS1_, ptr @_ZN5Ipopt4TNLP22get_warm_start_iterateERNS_14IteratesVectorE, ptr @_ZN5Ipopt16StdInterfaceTNLP6eval_fEiPKdbRd, ptr @_ZN5Ipopt16StdInterfaceTNLP11eval_grad_fEiPKdbPd, ptr @_ZN5Ipopt16StdInterfaceTNLP6eval_gEiPKdbiPd, ptr @_ZN5Ipopt16StdInterfaceTNLP10eval_jac_gEiPKdbiiPiS3_Pd, ptr @_ZN5Ipopt16StdInterfaceTNLP6eval_hEiPKdbdiS2_biPiS3_Pd, ptr @_ZN5Ipopt4TNLP33get_number_of_nonlinear_variablesEv, ptr @_ZN5Ipopt4TNLP31get_list_of_nonlinear_variablesEiPi, ptr @_ZN5Ipopt16StdInterfaceTNLP17finalize_solutionENS_12SolverReturnEiPKdS3_S3_iS3_S3_dPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesE, ptr @_ZN5Ipopt4TNLP17finalize_metadataEiRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EESt4lessIS7_ESaISt4pairIKS7_SA_EEERKS1_IS7_S8_IiSaIiEESC_SaISD_ISE_SL_EEERKS1_IS7_S8_IdSaIdEESC_SaISD_ISE_SS_EEEiSJ_SQ_SX_, ptr @_ZN5Ipopt16StdInterfaceTNLP21intermediate_callbackENS_13AlgorithmModeEiddddddddiPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesE] }, align 8
@.str = private unnamed_addr constant [11 x i8] c"n_var_ > 0\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c" evaluated false: \00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"The number of variables must be at least 1.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Interfaces/IpStdInterfaceTNLP.cpp\00", align 1
@_ZTIN5Ipopt24INVALID_STDINTERFACE_NLPE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt24INVALID_STDINTERFACE_NLPE, ptr @_ZTIN5Ipopt14IpoptExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt24INVALID_STDINTERFACE_NLPE = linkonce_odr constant [35 x i8] c"N5Ipopt24INVALID_STDINTERFACE_NLPE\00", comdat, align 1
@_ZTIN5Ipopt14IpoptExceptionE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5Ipopt14IpoptExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt14IpoptExceptionE = linkonce_odr constant [25 x i8] c"N5Ipopt14IpoptExceptionE\00", comdat, align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"n_con_ >= 0\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"The number of constrains must be non-negative.\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"x_L_\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"No lower bounds for variables provided.\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"x_U_\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"No upper bounds for variables provided.\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"g_L_ || n_con_ == 0\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"No lower bounds for constraints provided.\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"g_U_ || n_con_ == 0\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"No upper bounds for constraints provided.\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"nele_jac_ >= 0\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c"Number of non-zero elements in constraint Jacobian must be non-negative.\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"nele_hess_ >= 0\00", align 1
@.str.17 = private unnamed_addr constant [75 x i8] c"Number of non-zero elements in Hessian of Lagrangian must be non-negative.\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"index_style_ == 0 || index_style_ == 1\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"Valid index styles are 0 (C style) or 1 (Fortran style)\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"start_x_\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"No initial point for the variables provided.\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"eval_f_\00", align 1
@.str.23 = private unnamed_addr constant [78 x i8] c"No callback function for evaluating the value of objective function provided.\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"eval_g_\00", align 1
@.str.25 = private unnamed_addr constant [72 x i8] c"No callback function for evaluating the values of constraints provided.\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"eval_grad_f_\00", align 1
@.str.27 = private unnamed_addr constant [81 x i8] c"No callback function for evaluating the gradient of objective function provided.\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"eval_jac_g_\00", align 1
@.str.29 = private unnamed_addr constant [78 x i8] c"No callback function for evaluating the Jacobian of the constraints provided.\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"eval_h_\00", align 1
@.str.31 = private unnamed_addr constant [77 x i8] c"No callback function for evaluating the Hessian of the constraints provided.\00", align 1
@_ZTIN5Ipopt16StdInterfaceTNLPE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt16StdInterfaceTNLPE, ptr @_ZTIN5Ipopt4TNLPE }, align 8
@_ZTSN5Ipopt16StdInterfaceTNLPE = constant [27 x i8] c"N5Ipopt16StdInterfaceTNLPE\00", align 1
@_ZTIN5Ipopt4TNLPE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt4TNLPE, ptr @_ZTIN5Ipopt16ReferencedObjectE }, comdat, align 8
@_ZTSN5Ipopt4TNLPE = linkonce_odr constant [14 x i8] c"N5Ipopt4TNLPE\00", comdat, align 1
@_ZTIN5Ipopt16ReferencedObjectE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5Ipopt16ReferencedObjectE }, comdat, align 8
@_ZTSN5Ipopt16ReferencedObjectE = linkonce_odr constant [27 x i8] c"N5Ipopt16ReferencedObjectE\00", comdat, align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"INVALID_STDINTERFACE_NLP\00", align 1
@_ZTVN5Ipopt24INVALID_STDINTERFACE_NLPE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5Ipopt24INVALID_STDINTERFACE_NLPE, ptr @_ZN5Ipopt14IpoptExceptionD2Ev, ptr @_ZN5Ipopt24INVALID_STDINTERFACE_NLPD0Ev] }, comdat, align 8
@_ZTVN5Ipopt14IpoptExceptionE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5Ipopt14IpoptExceptionE, ptr @_ZN5Ipopt14IpoptExceptionD2Ev, ptr @_ZN5Ipopt14IpoptExceptionD0Ev] }, comdat, align 8
@.str.33 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN5Ipopt16StdInterfaceTNLPC1EiPKdS2_iS2_S2_iiiS2_S2_S2_S2_PFbiPdbS3_PvEPFbiS3_biS3_S4_ES6_PFbiS3_biiPiS9_S3_S4_EPFbiS3_bdiS3_biS9_S9_S3_S4_EPFbiiddddddddiS4_ES3_S3_S3_S3_S3_S3_S4_dS2_S2_ = unnamed_addr alias void (ptr, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, double, ptr, ptr), ptr @_ZN5Ipopt16StdInterfaceTNLPC2EiPKdS2_iS2_S2_iiiS2_S2_S2_S2_PFbiPdbS3_PvEPFbiS3_biS3_S4_ES6_PFbiS3_biiPiS9_S3_S4_EPFbiS3_bdiS3_biS9_S9_S3_S4_EPFbiiddddddddiS4_ES3_S3_S3_S3_S3_S3_S4_dS2_S2_
@_ZN5Ipopt16StdInterfaceTNLPD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5Ipopt16StdInterfaceTNLPD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt16StdInterfaceTNLPC2EiPKdS2_iS2_S2_iiiS2_S2_S2_S2_PFbiPdbS3_PvEPFbiS3_biS3_S4_ES6_PFbiS3_biiPiS9_S3_S4_EPFbiS3_bdiS3_biS9_S9_S3_S4_EPFbiiddddddddiS4_ES3_S3_S3_S3_S3_S3_S4_dS2_S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) initializes((0, 12), (16, 76), (80, 264)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, double noundef %27, ptr noundef %28, ptr noundef %29) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::allocator", align 1   ; 4 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::allocator", align 1   ; 5 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::allocator", align 1   ; 4 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::allocator", align 1   ; 5 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %39 = alloca %"class.std::allocator", align 1   ; 4 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %41 = alloca %"class.std::allocator", align 1   ; 5 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %43 = alloca %"class.std::allocator", align 1   ; 4 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %45 = alloca %"class.std::allocator", align 1   ; 5 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %47 = alloca %"class.std::allocator", align 1   ; 4 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::allocator", align 1   ; 5 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %51 = alloca %"class.std::allocator", align 1   ; 4 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %53 = alloca %"class.std::allocator", align 1   ; 5 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %55 = alloca %"class.std::allocator", align 1   ; 4 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %57 = alloca %"class.std::allocator", align 1   ; 5 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %59 = alloca %"class.std::allocator", align 1   ; 4 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %61 = alloca %"class.std::allocator", align 1   ; 5 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %63 = alloca %"class.std::allocator", align 1   ; 4 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %65 = alloca %"class.std::allocator", align 1   ; 5 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %67 = alloca %"class.std::allocator", align 1   ; 4 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %69 = alloca %"class.std::allocator", align 1   ; 5 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %71 = alloca %"class.std::allocator", align 1   ; 4 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %73 = alloca %"class.std::allocator", align 1   ; 5 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %75 = alloca %"class.std::allocator", align 1   ; 4 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %77 = alloca %"class.std::allocator", align 1   ; 5 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %79 = alloca %"class.std::allocator", align 1   ; 4 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %81 = alloca %"class.std::allocator", align 1   ; 5 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %83 = alloca %"class.std::allocator", align 1   ; 4 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %85 = alloca %"class.std::allocator", align 1   ; 5 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %87 = alloca %"class.std::allocator", align 1   ; 4 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %89 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN5Ipopt16StdInterfaceTNLPE, i64 16), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 %4, ptr %i.d, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %5, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %6, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %7, ptr %i.i, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %8, ptr %i.j, align 4, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %9, ptr %i.k, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %10, ptr %i.l, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %11, ptr %i.m, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %12, ptr %i.n, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %13, ptr %i.o, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %14, ptr %i.p, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %15, ptr %i.q, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %16, ptr %i.r, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %17, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %18, ptr %i.t, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %19, ptr %i.u, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %26, ptr %i.v, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %27, ptr %i.w, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store ptr %20, ptr %i.z, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %21, ptr %i.aa, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %22, ptr %i.ab, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %23, ptr %i.ac, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %24, ptr %i.ad, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %25, ptr %i.ae, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ag = icmp sgt i32 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br i1 %i.ag, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #12
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.1)
          to label %bb.d unwind label %bb.i       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.2)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = call ptr @__cxa_allocate_exception(i64 112) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5Ipopt24INVALID_STDINTERFACE_NLPC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 78)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN5Ipopt24INVALID_STDINTERFACE_NLPE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #13
          to label %bb.gm unwind label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #12
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %.078 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ao = load ptr, ptr %32, align 8, !tbaa !49   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !54
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #12
  br i1 %.078, label %bb.k, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #12
  br i1 %.078, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn293 = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.aj) #12
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn293, %bb.k ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.al, %bb.i ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.at = load ptr, ptr %30, align 8, !tbaa !49   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.l
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !54
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204 ], [ %.pn.pn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #12
  br label %bb.gj

bb.m:                                             ; preds = %bb.a
  %i.ay = icmp sgt i32 %4, -1
  br i1 %i.ay, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #12
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.1)
          to label %bb.p unwind label %bb.u       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.5)
          to label %bb.q unwind label %bb.u       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bb = call ptr @__cxa_allocate_exception(i64 112) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN5Ipopt24INVALID_STDINTERFACE_NLPC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 79)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN5Ipopt24INVALID_STDINTERFACE_NLPE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #13
          to label %bb.gm unwind label %bb.v

bb.t:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

bb.u:                                             ; preds = %bb.p, %bb.o
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209.thread: ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN5Ipopt16StdInterfaceTNLPC2EiPKdS2_iS2_S2_iiiS2_S2_S2_S2_PFbiPdbS3_PvEPFbiS3_biS3_S4_ES6_PFbiS3_biiPiS9_S3_S4_EPFbiS3_bdiS3_biS9_S9_S3_S4_EPFbiiddddddddiS4_ES3_S3_S3_S3_S3_S3_S4_dS2_S2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %83)
          to label %bb.fc unwind label %bb.fh

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #12
  %i.iy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @.str.1)
          to label %bb.fd unwind label %bb.fi     ; 0 uses

bb.fd:                                            ; preds = %bb.fc
  %i.iz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @.str.29)
          to label %bb.fe unwind label %bb.fi     ; 0 uses

bb.fe:                                            ; preds = %bb.fd
  %i.ja = call ptr @__cxa_allocate_exception(i64 112) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %85)
          to label %bb.ff unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN5Ipopt24INVALID_STDINTERFACE_NLPC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 8 dereferenceable(32) %84, i32 noundef 91)
          to label %bb.fg unwind label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  invoke void @__cxa_throw(ptr nonnull %i.ja, ptr nonnull @_ZTIN5Ipopt24INVALID_STDINTERFACE_NLPE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #13
          to label %bb.gm unwind label %bb.fj

bb.fh:                                            ; preds = %bb.fb
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

bb.fi:                                            ; preds = %bb.fd, %bb.fc
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread: ; preds = %bb.fe
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #12
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fg, %bb.ff
  %.052 = phi i1 [ false, %bb.fg ], [ true, %bb.ff ] ; 2 uses
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jf = load ptr, ptr %84, align 8, !tbaa !49   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %bb.fj
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !54
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #12
  br i1 %.052, label %bb.fk, label %bb.fl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #12
  br i1 %.052, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
  %.pn191332 = phi { ptr, i32 } [ %i.jd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.thread ], [ %i.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279 ]
  call void @__cxa_free_exception(ptr %i.ja) #12
  br label %bb.fl

bb.fl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %bb.fk, %bb.fi
  %.pn191.pn = phi { ptr, i32 } [ %.pn191332, %bb.fk ], [ %i.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ %i.jc, %bb.fi ], [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279 ] ; 2 uses
  %i.jk = load ptr, ptr %82, align 8, !tbaa !49   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %bb.fl
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !54
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282, %bb.fh
  %.pn191.pn.pn = phi { ptr, i32 } [ %i.jb, %bb.fh ], [ %.pn191.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282 ], [ %.pn191.pn, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #12
  br label %bb.gj

bb.fm:                                            ; preds = %bb.fa
  %.not195 = icmp eq ptr %18, null
  br i1 %.not195, label %bb.fn, label %bb.fy

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %87)
          to label %bb.fo unwind label %bb.ft

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #12
  %i.jp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull @.str.1)
          to label %bb.fp unwind label %bb.fu     ; 0 uses

bb.fp:                                            ; preds = %bb.fo
  %i.jq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull @.str.31)
          to label %bb.fq unwind label %bb.fu     ; 0 uses

bb.fq:                                            ; preds = %bb.fp
  %i.jr = call ptr @__cxa_allocate_exception(i64 112) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %89)
          to label %bb.fr unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZN5Ipopt24INVALID_STDINTERFACE_NLPC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull align 8 dereferenceable(32) %88, i32 noundef 92)
          to label %bb.fs unwind label %bb.fv

bb.fs:                                            ; preds = %bb.fr
  invoke void @__cxa_throw(ptr nonnull %i.jr, ptr nonnull @_ZTIN5Ipopt24INVALID_STDINTERFACE_NLPE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #13
          to label %bb.gm unwind label %bb.fv

bb.ft:                                            ; preds = %bb.fn
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

bb.fu:                                            ; preds = %bb.fp, %bb.fo
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread: ; preds = %bb.fq
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #12
  br label %bb.fw

bb.fv:                                            ; preds = %bb.fs, %bb.fr
  %.0 = phi i1 [ false, %bb.fs ], [ true, %bb.fr ] ; 2 uses
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jw = load ptr, ptr %88, align 8, !tbaa !49   ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %88, i64 16 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %bb.fv
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !54
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.ka) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #12
  br i1 %.0, label %bb.fw, label %bb.fx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #12
  br i1 %.0, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287
  %.pn196335 = phi { ptr, i32 } [ %i.ju, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.thread ], [ %i.jv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285 ]
  call void @__cxa_free_exception(ptr %i.jr) #12
  br label %bb.fx

bb.fx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %bb.fw, %bb.fu
  %.pn196.pn = phi { ptr, i32 } [ %.pn196335, %bb.fw ], [ %i.jv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287 ], [ %i.jt, %bb.fu ], [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285 ] ; 2 uses
  %i.kb = load ptr, ptr %86, align 8, !tbaa !49   ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.kd = icmp eq ptr %i.kb, %i.kc
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %bb.fx
  %i.ke = load i64, ptr %i.kc, align 8, !tbaa !54
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.kf) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288, %bb.ft
  %.pn196.pn.pn = phi { ptr, i32 } [ %i.js, %bb.ft ], [ %.pn196.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288 ], [ %.pn196.pn, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #12
  br label %bb.gj

bb.fy:                                            ; preds = %bb.fm
  %.not200 = icmp eq ptr %28, null
  br i1 %.not200, label %bb.gd, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.kg = zext nneg i32 %1 to i64
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kh) #15
          to label %bb.ga unwind label %bb.gc     ; 2 uses

bb.ga:                                            ; preds = %bb.fz
  invoke void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %1, ptr noundef nonnull %28, i32 noundef 1, ptr noundef nonnull %i.ki, i32 noundef 1)
          to label %bb.gb unwind label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  store ptr %i.ki, ptr %i.x, align 8, !tbaa !55
  br label %bb.gd

bb.gc:                                            ; preds = %bb.ga, %bb.fz
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.gd:                                            ; preds = %bb.gb, %bb.fy
  %.not201 = icmp eq ptr %29, null
  br i1 %.not201, label %bb.gi, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.kk = load i32, ptr %i.d, align 4, !tbaa !23  ; 3 uses
  %i.kl = sext i32 %i.kk to i64
  %i.km = icmp slt i32 %i.kk, 0
  %i.kn = shl nsw i64 %i.kl, 3
  %i.ko = select i1 %i.km, i64 -1, i64 %i.kn
  %i.kp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ko) #15
          to label %bb.gf unwind label %bb.gh     ; 2 uses

bb.gf:                                            ; preds = %bb.ge
  invoke void @_ZN5Ipopt10IpBlasCopyEiPKdiPdi(i32 noundef %i.kk, ptr noundef nonnull %29, i32 noundef 1, ptr noundef nonnull %i.kp, i32 noundef 1)
          to label %bb.gg unwind label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  store ptr %i.kp, ptr %i.y, align 8, !tbaa !56
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf, %bb.ge
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.gi:                                            ; preds = %bb.gg, %bb.gd
  ret void

bb.gj:                                            ; preds = %bb.gh, %bb.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %.pn202 = phi { ptr, i32 } [ %i.kq, %bb.gh ], [ %i.kj, %bb.gc ], [ %.pn196.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %.pn191.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284 ], [ %.pn186.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278 ], [ %.pn181.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ], [ %.pn176.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ], [ %.pn171.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ], [ %.pn166.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %.pn162.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ %.pn158.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %.pn154.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %.pn149.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %.pn144.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %.pn139.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %.pn135.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ]
  %i.kr = load ptr, ptr %i.b, align 8, !tbaa !12  ; 4 uses
  %.not.i.i = icmp eq ptr %i.kr, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !8
  %i.ku = add nsw i32 %i.kt, -1                   ; 2 uses
  store i32 %i.ku, ptr %i.ks, align 8, !tbaa !8
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %bb.gl, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit

bb.gl:                                            ; preds = %bb.gk
  %i.kw = load ptr, ptr %i.kr, align 8, !tbaa !10
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(40) %i.kr) #12, !inline_history !57
  br label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit:   ; preds = %bb.gj, %bb.gk, %bb.gl
  resume { ptr, i32 } %.pn202

bb.gm:                                            ; preds = %bb.fs, %bb.fg, %bb.eu, %bb.ei, %bb.dw, %bb.dk, %bb.cy, %bb.cm, %bb.ca, %bb.bo, %bb.bc, %bb.aq, %bb.ae, %bb.s, %bb.g
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !58
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.33) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.d, ptr %i.a, align 8, !tbaa !59
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !49
  %i.g = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.g, ptr %i.b, align 8, !tbaa !54
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !54
  store i8 %i.i, ptr %i.h, align 1, !tbaa !54
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !60
  %i.l = load ptr, ptr %0, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt24INVALID_STDINTERFACE_NLPC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 24, ptr %i.a, align 8, !tbaa !59
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !49
  %i.d = load i64, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(24) @.str.32, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !60
  %i.f = load ptr, ptr %4, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  invoke void @_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.h = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8, !tbaa !54
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt24INVALID_STDINTERFACE_NLPE, i64 16), ptr %0, align 8, !tbaa !10
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.b
  %i.o = load i64, ptr %i.b, align 8, !tbaa !54
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt14IpoptExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt14IpoptExceptionE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !54
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !54
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_1
