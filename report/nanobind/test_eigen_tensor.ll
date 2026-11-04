Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_eigen_tensor?download=true
inline.NumInlined: 1197
inline.NumDeleted: 635
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.6 = private unnamed_addr constant [12 x i8] c"add3dTensor\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"add3dTensor_nc\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"square3dTensorR\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"mul3dTensor\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"update3dTensorRef\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"add3dTensorCnstMap\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"castTo3iTensorMap\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"castTo3iTensorMapCnst\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"castTo3iTensorMapAligned\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"castTo0dTensorMap\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"mul3dTensorMap\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"mul3dTensorMapInPlace\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Buffer\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"ClassWithEigenMember\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"member_ro_ref\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"member_ro_copy\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_0N5Eigen19TensorCwiseBinaryOpINS4_8internal13scalar_sum_opIddEEKNS4_6TensorIdLi3ELi0ElEESB_EEJRSB_SD_EJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESH_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr" = internal constant %"struct.nanobind::detail::descr" { [181 x i8] c"({numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']}, {numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']}) -> numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']\00" }, align 1
@_Py_NoneStruct = external global %struct._object, align 8
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZTVN8nanobind4abi112python_errorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8nanobind4abi112python_errorE, ptr @_ZN8nanobind4abi112python_errorD2Ev, ptr @_ZN8nanobind4abi112python_errorD0Ev, ptr @_ZNK8nanobind4abi112python_error4whatEv] }, comdat, align 8
@"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_1N5Eigen19TensorCwiseBinaryOpINS4_8internal13scalar_sum_opIddEEKNS4_6TensorIdLi3ELi0ElEESB_EEJRSB_SD_EJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEESH_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr" = internal constant %"struct.nanobind::detail::descr" { [181 x i8] c"({numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']}, {numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']}) -> numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']\00" }, align 1
@"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_2N5Eigen18TensorCwiseUnaryOpINS4_8internal16scalar_square_opIdEEKNS4_6TensorIdLi3ELi1ElEEEEJRSB_EJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr" = internal constant %"struct.nanobind::detail::descr.56" { [121 x i8] c"({numpy.ndarray[dtype=float64, shape=(*, *, *), order='C']}) -> numpy.ndarray[dtype=float64, shape=(*, *, *), order='C']\00" }, align 1
@"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_3N5Eigen6TensorIdLi3ELi0ElEEJdRKS6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESC_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr" = internal constant %"struct.nanobind::detail::descr.84" { [130 x i8] c"({float}, {numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']}) -> numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']\00" }, align 1
@"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_4vJN5Eigen9TensorRefINS4_6TensorIdLi3ELi0ElEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr" = internal constant %"struct.nanobind::detail::descr.97" { [69 x i8] c"({numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']}) -> None\00" }, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_5N5Eigen6TensorIdLi3ELi0ElEEJNS4_9TensorMapIKS6_Li0ENS4_11MakePointerEEESA_EJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESE_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr" = internal constant %"struct.nanobind::detail::descr.113" { [213 x i8] c"({numpy.ndarray[dtype=float64, shape=(*, *, *), order='F', writable=False]}, {numpy.ndarray[dtype=float64, shape=(*, *, *), order='F', writable=False]}) -> numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']\00" }, align 1
@"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_6N5Eigen9TensorMapINS4_6TensorIiLi3ELi0ElEELi0ENS4_11MakePointerEEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr" = internal constant %"struct.nanobind::detail::descr.97" { [69 x i8] c"({object}) -> numpy.ndarray[dtype=int32, shape=(*, *, *), order='F']\00" }, align 1
@_ZTISt8bad_cast = external constant ptr
@_ZTVSt8bad_cast = external constant { [5 x ptr] }, align 8
@"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_7N5Eigen9TensorMapIKNS4_6TensorIiLi3ELi0ElEELi0ENS4_11MakePointerEEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr" = internal constant %"struct.nanobind::detail::descr.146" { [85 x i8] c"({object}) -> numpy.ndarray[dtype=int32, shape=(*, *, *), order='F', writable=False]\00" }, align 1
@"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_8N5Eigen9TensorMapINS4_6TensorIiLi3ELi0ElEELi16ENS4_11MakePointerEEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr" = internal constant %"struct.nanobind::detail::descr.97" { [69 x i8] c"({object}) -> numpy.ndarray[dtype=int32, shape=(*, *, *), order='F']\00" }, align 1
@"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_9N5Eigen9TensorMapINS4_6TensorIdLi0ELi0ElEELi0ENS4_11MakePointerEEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr" = internal constant %"struct.nanobind::detail::descr.168" { [64 x i8] c"({object}) -> numpy.ndarray[dtype=float64, shape=(), order='F']\00" }, align 1
@"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE4$_10N5Eigen6TensorIdLi3ELi0ElEEJdNS4_9TensorMapIKS6_Li0ENS4_11MakePointerEEEEJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESE_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr" = internal constant %"struct.nanobind::detail::descr.185" { [146 x i8] c"({float}, {numpy.ndarray[dtype=float64, shape=(*, *, *), order='F', writable=False]}) -> numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']\00" }, align 1
@"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE4$_11vJdN5Eigen9TensorMapINS4_6TensorIdLi3ELi0ElEELi0ENS4_11MakePointerEEEEJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESD_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr" = internal constant %"struct.nanobind::detail::descr.201" { [78 x i8] c"({float}, {numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']}) -> None\00" }, align 1
@_ZTIZL40nanobind_test_eigen_tensor_ext_exec_implN8nanobind7module_EE6Buffer = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZL40nanobind_test_eigen_tensor_ext_exec_implN8nanobind7module_EE6Buffer }, align 8
@_ZTSZL40nanobind_test_eigen_tensor_ext_exec_implN8nanobind7module_EE6Buffer = internal constant [72 x i8] c"ZL40nanobind_test_eigen_tensor_ext_exec_implN8nanobind7module_EE6Buffer\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"__init__\00", align 1
@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_IZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE6BufferJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EEE_vJSG_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr = internal constant %"struct.nanobind::detail::descr.217" { [14 x i8] c"({%}) -> None\00" }, align 1
@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE6BufferN5Eigen9TensorMapINS5_6TensorIjLi3ELi0ElEELi0ENS5_11MakePointerEEES4_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSE_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_E_SA_JSS_EJLm0EEJSB_SC_SD_SH_EEEP7_objectOSI_PFT2_DpSO_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr = internal constant %"struct.nanobind::detail::descr.226" { [65 x i8] c"({%}) -> numpy.ndarray[dtype=uint32, shape=(*, *, *), order='F']\00" }, align 1
@_ZTIZL40nanobind_test_eigen_tensor_ext_exec_implN8nanobind7module_EE20ClassWithEigenMember = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSZL40nanobind_test_eigen_tensor_ext_exec_implN8nanobind7module_EE20ClassWithEigenMember }, align 8
@_ZTSZL40nanobind_test_eigen_tensor_ext_exec_implN8nanobind7module_EE20ClassWithEigenMember = internal constant [87 x i8] c"ZL40nanobind_test_eigen_tensor_ext_exec_implN8nanobind7module_EE20ClassWithEigenMember\00", align 1
@_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_IZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE20ClassWithEigenMemberJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS7_EEE_vJSG_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr = internal constant %"struct.nanobind::detail::descr.236" { [14 x i8] c"({%}) -> None\00" }, align 1
@_ZZN8nanobind6detail11func_createILb1ELb1EZNS_12cpp_functionIZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE20ClassWithEigenMemberRKN5Eigen6TensorIdLi3ELi0ElEES4_JEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSC_5valueE6EEEEEENS_6objectEMT1_FT0_DpT2_EDpRKT3_EUlPS4_E_S9_JSR_EJLm0EEJSA_SB_SF_EEEP7_objectOSH_PFT2_DpSN_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr = internal constant %"struct.nanobind::detail::descr.252" { [66 x i8] c"({%}) -> numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']\00" }, align 1
@_ZZN8nanobind6detail11func_createILb1ELb1EZNS_12cpp_functionIZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE20ClassWithEigenMemberKN5Eigen6TensorIdLi3ELi0ElEES4_JEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSB_5valueE6EEEEEENS_6objectEMT1_FT0_DpT2_EDpRKT3_EUlPS4_E_S8_JSQ_EJLm0EEJS9_SA_SE_EEEP7_objectOSG_PFT2_DpSM_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr = internal constant %"struct.nanobind::detail::descr.252" { [66 x i8] c"({%}) -> numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']\00" }, align 1
@_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE20ClassWithEigenMemberJEE6def_rwIS4_N5Eigen6TensorIdLi3ELi0ElEEJEEERS5_PKcMT_T0_DpRKT1_EUlRKS4_E_RKS9_JSL_EJLm0EEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSR_5valueE6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr = internal constant %"struct.nanobind::detail::descr.252" { [66 x i8] c"({%}) -> numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']\00" }, align 1
@_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_IZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE20ClassWithEigenMemberJEE6def_rwIS4_N5Eigen6TensorIdLi3ELi0ElEEJEEERS5_PKcMT_T0_DpRKT1_EUlRS4_OS9_E_vJSK_SL_EJLm0ELm1EEJNS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr = internal constant %"struct.nanobind::detail::descr.270" { [74 x i8] c"({%}, {numpy.ndarray[dtype=float64, shape=(*, *, *), order='F']}) -> None\00" }, align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nounwind optsize uwtable
define ptr @PyInit_test_eigen_tensor_ext() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZL34nanobind_test_eigen_tensor_ext_def, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN8nanobind6detail10module_newEPKcS2_Pvj(ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull @_ZL35nanobind_test_eigen_tensor_ext_execP7_object, i32 noundef 0) #24 ; 2 uses
  store ptr %i.b, ptr @_ZL34nanobind_test_eigen_tensor_ext_def, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  ret ptr %i.c
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail10module_newEPKcS2_Pvj(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef range(i32 -1, 1) i32 @_ZL35nanobind_test_eigen_tensor_ext_execP7_object(ptr noundef %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.nanobind::handle", align 8  ; 4 uses
  %2 = alloca %"class.nanobind::handle", align 8  ; 4 uses
  %3 = alloca %"class.nanobind::handle", align 8  ; 4 uses
  %4 = alloca %"class.nanobind::handle", align 8  ; 4 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %5 = alloca %"struct.nanobind::detail::func_data_init", align 8 ; 16 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %6 = alloca %"struct.nanobind::detail::func_data_init", align 8 ; 16 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  %7 = alloca %"struct.nanobind::detail::func_data_init.132", align 8 ; 10 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %8 = alloca %"struct.nanobind::detail::func_data_init.132", align 8 ; 10 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %9 = alloca %"struct.nanobind::detail::func_data_init.132", align 8 ; 10 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %10 = alloca %"struct.nanobind::detail::func_data_init.132", align 8 ; 10 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %11 = alloca %"struct.nanobind::detail::func_data_init", align 8 ; 16 uses
  %i.h = alloca [1 x ptr], align 8                ; 4 uses
  %12 = alloca %"struct.nanobind::detail::func_data_init.57", align 8 ; 13 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
  %13 = alloca %"struct.nanobind::detail::func_data_init", align 8 ; 16 uses
  %i.j = alloca [1 x ptr], align 8                ; 4 uses
  %14 = alloca %"struct.nanobind::detail::func_data_init.57", align 8 ; 13 uses
  %i.k = alloca [1 x ptr], align 8                ; 4 uses
  %15 = alloca %"struct.nanobind::detail::func_data_init", align 8 ; 16 uses
  %i.l = alloca [1 x ptr], align 8                ; 4 uses
  %16 = alloca %"struct.nanobind::detail::func_data_init", align 8 ; 16 uses
  %i.m = alloca [2 x ptr], align 16               ; 5 uses
  %17 = alloca %"struct.nanobind::detail::func_data_init.132", align 8 ; 9 uses
  %i.n = alloca [2 x ptr], align 16               ; 5 uses
  %18 = alloca %"struct.nanobind::detail::func_data_init.132", align 8 ; 9 uses
  %19 = alloca %"class.nanobind::object", align 8 ; 4 uses
  %20 = alloca %"class.nanobind::object", align 8 ; 4 uses
  %21 = alloca %"class.nanobind::object", align 8 ; 4 uses
  %22 = alloca %"class.nanobind::object", align 8 ; 4 uses
  %i.o = alloca [2 x ptr], align 16               ; 5 uses
  %23 = alloca %"struct.nanobind::detail::func_data_init.132", align 8 ; 10 uses
  %24 = alloca %"class.nanobind::object", align 8 ; 4 uses
  %25 = alloca %"class.nanobind::object", align 8 ; 4 uses
  %26 = alloca %"class.nanobind::object", align 8 ; 4 uses
  %i.p = alloca [2 x ptr], align 16               ; 5 uses
  %27 = alloca %"struct.nanobind::detail::func_data_init.132", align 8 ; 10 uses
  %28 = alloca %"class.nanobind::object", align 8 ; 4 uses
  %29 = alloca %"class.nanobind::object", align 8 ; 4 uses
  %30 = alloca %"class.nanobind::object", align 8 ; 4 uses
  %i.q = alloca [2 x ptr], align 16               ; 5 uses
  %31 = alloca %"struct.nanobind::detail::func_data_init.132", align 8 ; 10 uses
  %i.r = alloca [2 x ptr], align 16               ; 5 uses
  %32 = alloca %"struct.nanobind::detail::func_data_init.132", align 8 ; 12 uses
  %i.s = alloca [2 x ptr], align 16               ; 5 uses
  %33 = alloca %"struct.nanobind::detail::func_data_init.132", align 8 ; 10 uses
  %34 = alloca %"struct.nanobind::detail::type_data_init", align 8 ; 7 uses
  %35 = alloca %"struct.nanobind::detail::type_data_init", align 8 ; 7 uses
  %36 = alloca %"class.nanobind::class_", align 8 ; 4 uses
  %37 = alloca %"class.nanobind::class_.25", align 8 ; 5 uses
  %38 = alloca %"class.nanobind::module_", align 8 ; 5 uses
  %i.t = tail call noundef ptr @_ZN8nanobind6detail14nb_module_initEPKcP7_object(ptr noundef nonnull @.str.4, ptr noundef %0) #24 ; 4 uses
  store ptr %i.t, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %38, align 8
  %.not.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %0, align 8, !tbaa !14
  %i.v = add i32 %i.u, 1                          ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.v, ptr %0, align 8, !tbaa !14
  %.pre = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.x = phi ptr [ %i.t, %bb.b ], [ %i.t, %bb.c ], [ %.pre, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  store ptr null, ptr %i.l, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_0N5Eigen19TensorCwiseBinaryOpINS4_8internal13scalar_sum_opIddEEKNS4_6TensorIdLi3ELi0ElEESB_EEJRSB_SD_EJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESH_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSJ_jPNS0_12cleanup_listEE_8__invokeESX_SY_jS10_", ptr %i.y, align 8, !tbaa !124
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_0N5Eigen19TensorCwiseBinaryOpINS4_8internal13scalar_sum_opIddEEKNS4_6TensorIdLi3ELi0ElEESB_EEJRSB_SD_EJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESH_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.z, align 8, !tbaa !125
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 48
  store ptr %i.l, ptr %i.aa, align 8, !tbaa !126
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 60
  store <2 x i16> splat (i16 2), ptr %i.ab, align 4, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 112
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 144
  store i32 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 80
  store ptr %0, ptr %i.ah, align 8, !tbaa !127
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 64
  store ptr @.str.6, ptr %i.ai, align 8, !tbaa !128
  store i32 11, ptr %i.ag, align 8, !tbaa !129
  store ptr @.str.7, ptr %i.ac, align 8, !tbaa !131
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  store ptr @.str.8, ptr %i.ae, align 8, !tbaa !131
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.x, ptr noundef nonnull %16) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  store ptr null, ptr %i.k, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_1N5Eigen19TensorCwiseBinaryOpINS4_8internal13scalar_sum_opIddEEKNS4_6TensorIdLi3ELi0ElEESB_EEJRSB_SD_EJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEESH_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSJ_jPNS0_12cleanup_listEE_8__invokeESX_SY_jS10_", ptr %i.am, align 8, !tbaa !124
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_1N5Eigen19TensorCwiseBinaryOpINS4_8internal13scalar_sum_opIddEEKNS4_6TensorIdLi3ELi0ElEESB_EEJRSB_SD_EJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEESH_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.an, align 8, !tbaa !125
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 48
  store ptr %i.k, ptr %i.ao, align 8, !tbaa !126
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 60
  store <2 x i16> splat (i16 2), ptr %i.ap, align 4, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 112
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 144
  store i32 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 56
  %39 = getelementptr inbounds nuw i8, ptr %15, i64 80
  store ptr %0, ptr %39, align 8, !tbaa !127
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 64
  store ptr @.str.9, ptr %i.av, align 8, !tbaa !128
  store i32 11, ptr %i.au, align 8, !tbaa !129
  store ptr @.str.7, ptr %i.aq, align 8, !tbaa !131
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  store ptr @.str.8, ptr %i.as, align 8, !tbaa !131
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.az = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.ay, ptr noundef nonnull %15) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store ptr null, ptr %i.j, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_2N5Eigen18TensorCwiseUnaryOpINS4_8internal16scalar_square_opIdEEKNS4_6TensorIdLi3ELi1ElEEEEJRSB_EJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSJ_jPNS0_12cleanup_listEE_8__invokeESX_SY_jS10_", ptr %i.bb, align 8, !tbaa !124
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_2N5Eigen18TensorCwiseUnaryOpINS4_8internal16scalar_square_opIdEEKNS4_6TensorIdLi3ELi1ElEEEEJRSB_EJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.bc, align 8, !tbaa !125
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %i.j, ptr %i.bd, align 8, !tbaa !126
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 60
  store <2 x i16> splat (i16 1), ptr %i.be, align 4, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 80
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 112
  store i32 0, ptr %i.bi, align 8
  store ptr %0, ptr %i.bh, align 8, !tbaa !127
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 64
  store ptr @.str.10, ptr %i.bj, align 8, !tbaa !128
  store i32 11, ptr %i.ba, align 8, !tbaa !129
  store ptr @.str.7, ptr %i.bf, align 8, !tbaa !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.bk = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.bl = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.bk, ptr noundef nonnull %14) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  store ptr null, ptr %i.i, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_3N5Eigen6TensorIdLi3ELi0ElEEJdRKS6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESC_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_", ptr %i.bm, align 8, !tbaa !124
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_3N5Eigen6TensorIdLi3ELi0ElEEJdRKS6_EJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESC_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.bn, align 8, !tbaa !125
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %i.i, ptr %i.bo, align 8, !tbaa !126
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 60
  store <2 x i16> splat (i16 2), ptr %i.bp, align 4, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 112
  store i32 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 120
  %i.bt = getelementptr inbounds nuw i8, ptr %13, i64 144
  store i32 0, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 80
  store ptr %0, ptr %i.bv, align 8, !tbaa !127
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 64
  store ptr @.str.11, ptr %i.bw, align 8, !tbaa !128
  store i32 11, ptr %i.bu, align 8, !tbaa !129
  store ptr @.str.7, ptr %i.bq, align 8, !tbaa !131
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store ptr @.str.8, ptr %i.bs, align 8, !tbaa !131
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  %i.bz = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.ca = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.bz, ptr noundef nonnull %13) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  %.sroa.0.0.copyload.i77.i = load ptr, ptr %38, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  store ptr null, ptr %i.h, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_4vJN5Eigen9TensorRefINS4_6TensorIdLi3ELi0ElEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_", ptr %i.cc, align 8, !tbaa !124
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_4vJN5Eigen9TensorRefINS4_6TensorIdLi3ELi0ElEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.cd, align 8, !tbaa !125
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %i.h, ptr %i.ce, align 8, !tbaa !126
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 60
  store <2 x i16> splat (i16 1), ptr %i.cf, align 4, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 112
  store i32 0, ptr %i.cj, align 8
  store ptr %.sroa.0.0.copyload.i77.i, ptr %i.ci, align 8, !tbaa !127
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr @.str.12, ptr %i.ck, align 8, !tbaa !128
  store i32 11, ptr %i.cb, align 8, !tbaa !129
  store ptr @.str.7, ptr %i.cg, align 8, !tbaa !131
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false)
  %i.cl = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.cm = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.cl, ptr noundef nonnull %12) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store ptr null, ptr %i.g, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_5N5Eigen6TensorIdLi3ELi0ElEEJNS4_9TensorMapIKS6_Li0ENS4_11MakePointerEEESA_EJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESE_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSG_jPNS0_12cleanup_listEE_8__invokeESU_SV_jSX_", ptr %i.cn, align 8, !tbaa !124
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_5N5Eigen6TensorIdLi3ELi0ElEEJNS4_9TensorMapIKS6_Li0ENS4_11MakePointerEEESA_EJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEESE_EEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.co, align 8, !tbaa !125
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.g, ptr %i.cp, align 8, !tbaa !126
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 60
  store <2 x i16> splat (i16 2), ptr %i.cq, align 4, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 112
  store i32 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 144
  store i32 0, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 80
  store ptr %.sroa.0.0.copyload.i77.i, ptr %i.cw, align 8, !tbaa !127
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr @.str.13, ptr %i.cx, align 8, !tbaa !128
  store i32 11, ptr %i.cv, align 8, !tbaa !129
  store ptr @.str.7, ptr %i.cr, align 8, !tbaa !131
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  store ptr @.str.8, ptr %i.ct, align 8, !tbaa !131
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.db = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.da, ptr noundef nonnull %11) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store ptr null, ptr %i.f, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_6N5Eigen9TensorMapINS4_6TensorIiLi3ELi0ElEELi0ENS4_11MakePointerEEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_", ptr %i.dd, align 8, !tbaa !124
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_6N5Eigen9TensorMapINS4_6TensorIiLi3ELi0ElEELi0ENS4_11MakePointerEEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.de, align 8, !tbaa !125
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.f, ptr %i.df, align 8, !tbaa !126
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 60
  store <2 x i16> splat (i16 1), ptr %i.dg, align 4, !tbaa !17
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %.sroa.0.0.copyload.i77.i, ptr %i.dh, align 8, !tbaa !127
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr @.str.14, ptr %i.di, align 8, !tbaa !128
  store i32 3, ptr %i.dc, align 8, !tbaa !129
  %i.dj = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.dk = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.dj, ptr noundef nonnull %10) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store ptr null, ptr %i.e, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_7N5Eigen9TensorMapIKNS4_6TensorIiLi3ELi0ElEELi0ENS4_11MakePointerEEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSF_jPNS0_12cleanup_listEE_8__invokeEST_SU_jSW_", ptr %i.dm, align 8, !tbaa !124
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_7N5Eigen9TensorMapIKNS4_6TensorIiLi3ELi0ElEELi0ENS4_11MakePointerEEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.dn, align 8, !tbaa !125
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %i.e, ptr %i.do, align 8, !tbaa !126
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 60
  store <2 x i16> splat (i16 1), ptr %i.dp, align 4, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr %.sroa.0.0.copyload.i77.i, ptr %i.dq, align 8, !tbaa !127
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr @.str.15, ptr %i.dr, align 8, !tbaa !128
  store i32 3, ptr %i.dl, align 8, !tbaa !129
  %i.ds = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.dt = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.ds, ptr noundef nonnull %9) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %.sroa.0.0.copyload.i82.i = load ptr, ptr %38, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store ptr null, ptr %i.d, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_8N5Eigen9TensorMapINS4_6TensorIiLi3ELi0ElEELi16ENS4_11MakePointerEEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_", ptr %i.dv, align 8, !tbaa !124
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_8N5Eigen9TensorMapINS4_6TensorIiLi3ELi0ElEELi16ENS4_11MakePointerEEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.dw, align 8, !tbaa !125
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.d, ptr %i.dx, align 8, !tbaa !126
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 60
  store <2 x i16> splat (i16 1), ptr %i.dy, align 4, !tbaa !17
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 80
  store ptr %.sroa.0.0.copyload.i82.i, ptr %i.dz, align 8, !tbaa !127
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 64
  store ptr @.str.16, ptr %i.ea, align 8, !tbaa !128
  store i32 3, ptr %i.du, align 8, !tbaa !129
  %i.eb = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.ec = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.eb, ptr noundef nonnull %8) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr null, ptr %i.c, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_9N5Eigen9TensorMapINS4_6TensorIdLi0ELi0ElEELi0ENS4_11MakePointerEEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_", ptr %i.ee, align 8, !tbaa !124
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL40nanobind_test_eigen_tensor_ext_exec_implNS_7module_EE3$_9N5Eigen9TensorMapINS4_6TensorIdLi0ELi0ElEELi0ENS4_11MakePointerEEEJNS_6objectEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ef, align 8, !tbaa !125
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 48
end_hunk_0
