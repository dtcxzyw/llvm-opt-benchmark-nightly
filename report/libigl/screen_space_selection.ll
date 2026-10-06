Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/screen_space_selection?download=true
inline.NumInlined: 1003
inline.NumDeleted: 653
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.anon.166 = type { i8 }
%class.anon.167 = type { ptr }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase.21" }
%"class.Eigen::PlainObjectBase.21" = type { %"class.Eigen::DenseStorage.28" }
%"class.Eigen::DenseStorage.28" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [3 x double] }
%class.anon = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.Eigen::Matrix.68" = type { %"class.Eigen::PlainObjectBase.69" }
%"class.Eigen::PlainObjectBase.69" = type { %"class.Eigen::DenseStorage.76" }
%"class.Eigen::DenseStorage.76" = type { ptr, i64 }
%"class.Eigen::Matrix.77" = type { %"class.Eigen::PlainObjectBase.78" }
%"class.Eigen::PlainObjectBase.78" = type { %"class.Eigen::DenseStorage.85" }
%"class.Eigen::DenseStorage.85" = type { ptr, i64 }
%"class.Eigen::Matrix.114" = type { %"class.Eigen::PlainObjectBase.115" }
%"class.Eigen::PlainObjectBase.115" = type { %"class.Eigen::DenseStorage.116" }
%"class.Eigen::DenseStorage.116" = type { ptr, i64, i64 }
%"class.Eigen::Array" = type { %"class.Eigen::PlainObjectBase.62" }
%"class.Eigen::PlainObjectBase.62" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { ptr, i64 }
%"struct.igl::Hit" = type { i32, i32, double, double, double }
%class.anon.168 = type { ptr }
%"class.std::vector.169" = type { %"struct.std::_Vector_base.170" }
%"struct.std::_Vector_base.170" = type { %"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl" }
%"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::thread, std::allocator<std::thread>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.210" }
%"struct.std::_Head_base.210" = type { ptr }

$_ZN3igl22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES5_NS2_IfLi4ELi1ELi0ELi4ELi1EEEfNS2_IdLin1ELi1ELi0ELin1ELi1EEENS1_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNSA_IT0_EERKNS_4AABBISB_Li3EEERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKSt6vectorINS2_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS11_EERNS1_15PlainObjectBaseIT5_EERNS16_IT6_EE = comdat any

$_ZN3igl22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEEfNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKSt6vectorINS2_IT3_Li1ELi2ELi1ELi1ELi2EEESaISQ_EERNS1_15PlainObjectBaseIT4_EE = comdat any

$_ZN3igl22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEENS2_IdLin1ELi2ELi0ELin1ELi2EEENS2_IiLin1ELi2ELi0ELin1ELi2EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EERNS1_15PlainObjectBaseIT5_EE = comdat any

$__clang_call_terminate = comdat any

$_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IfLi4ELi4ELi0ELi4ELi4EEES7_NS4_IfLi4ELi1ELi0ELi4ELi1EEEfNS4_IdLin1ELi1ELi0ELin1ELi1EEENS3_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSC_IT0_EERKNS_4AABBISD_Li3EEERKNSC_IT1_EERKNSC_IT2_EERKNSC_IT3_EERKSt6vectorINS4_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS13_EERNS3_15PlainObjectBaseIT5_EERNS18_IT6_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS1_IlS1F_EEbSD_S1H_mEUllmE_S1I_EEbSD_S1H_RKSP_RKST_m = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IfLi4ELi4ELi0ELi4ELi4EEESC_NS9_IfLi4ELi1ELi0ELi4ELi1EEEfNS9_IdLin1ELi1ELi0ELin1ELi1EEENS8_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERKNSH_IT0_EERKNS4_4AABBISI_Li3EEERKNSH_IT1_EERKNSH_IT2_EERKNSH_IT3_EERKS_INS9_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS8_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSI_RKSM_mEUlmE_ZNS6_IlS1J_EEbSI_S1L_mEUllmE_S1M_EEbSI_S1L_RKSU_RKSY_mEUlllmE_RlS1V_RmEEERS0_DpOT_ = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IfLi4ELi4ELi0ELi4ELi4EEESC_NS9_IfLi4ELi1ELi0ELi4ELi1EEEfNS9_IdLin1ELi1ELi0ELin1ELi1EEENS8_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERKNSH_IT0_EERKNS4_4AABBISI_Li3EEERKNSH_IT1_EERKNSH_IT2_EERKNSH_IT3_EERKS_INS9_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS8_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSI_RKSM_mEUlmE_ZNS6_IlS1J_EEbSI_S1L_mEUllmE_S1M_EEbSI_S1L_RKSU_RKSY_mEUlllmE_RlRKlRmEEERS0_DpOT_ = comdat any

$_ZNSt6vectorISt6threadSaIS0_EED2Ev = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IfLi4ELi4ELi0ELi4ELi4EEESC_NS9_IfLi4ELi1ELi0ELi4ELi1EEEfNS9_IdLin1ELi1ELi0ELin1ELi1EEENS8_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERKNSH_IT0_EERKNS4_4AABBISI_Li3EEERKNSH_IT1_EERKNSH_IT2_EERKNSH_IT3_EERKS_INS9_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS8_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSI_RKSM_mEUlmE_ZNS6_IlS1J_EEbSI_S1L_mEUllmE_S1M_EEbSI_S1L_RKSU_RKSY_mEUlllmE_RlS1V_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IfLi4ELi4ELi0ELi4ELi4EEESB_NS8_IfLi4ELi1ELi0ELi4ELi1EEEfNS8_IdLin1ELi1ELi0ELin1ELi1EEENS7_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERKNSG_IT0_EERKNS3_4AABBISH_Li3EEERKNSG_IT1_EERKNSG_IT2_EERKNSG_IT3_EERKSt6vectorINS8_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS7_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS5_IlS1J_EEbSH_S1L_mEUllmE_S1M_EEbSH_S1L_RKST_RKSX_mEUlllmE_llmEEEEED0Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IfLi4ELi4ELi0ELi4ELi4EEESB_NS8_IfLi4ELi1ELi0ELi4ELi1EEEfNS8_IdLin1ELi1ELi0ELin1ELi1EEENS7_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERKNSG_IT0_EERKNS3_4AABBISH_Li3EEERKNSG_IT1_EERKNSG_IT2_EERKNSG_IT3_EERKSt6vectorINS8_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS7_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS5_IlS1J_EEbSH_S1L_mEUllmE_S1M_EEbSH_S1L_RKST_RKSX_mEUlllmE_llmEEEEE6_M_runEv = comdat any

$_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS2_12parallel_forIlZNS2_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IiLin1ELin1ELi0ELin1ELin1EEENS7_IfLi4ELi4ELi0ELi4ELi4EEESA_NS7_IfLi4ELi1ELi0ELi4ELi1EEEfNS7_IdLin1ELi1ELi0ELin1ELi1EEENS6_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS6_10MatrixBaseIT_EERKNSF_IT0_EERKNS2_4AABBISG_Li3EEERKNSF_IT1_EERKNSF_IT2_EERKNSF_IT3_EERKSt6vectorINS7_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS16_EERNS6_15PlainObjectBaseIT5_EERNS1B_IT6_EEEUliE_EEbSG_RKSK_mEUlmE_ZNS4_IlS1I_EEbSG_S1K_mEUllmE_S1L_EEbSG_S1K_RKSS_RKSW_mEUlllmE_llmEEE9_M_invokeIJLm0ELm1ELm2ELm3EEEEvSt12_Index_tupleIJXspT_EEE = comdat any

$_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IfLi4ELi4ELi0ELi4ELi4EEESC_NS9_IfLi4ELi1ELi0ELi4ELi1EEEfNS9_IdLin1ELi1ELi0ELin1ELi1EEENS8_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS8_10MatrixBaseIT_EERKNSH_IT0_EERKNS4_4AABBISI_Li3EEERKNSH_IT1_EERKNSH_IT2_EERKNSH_IT3_EERKS_INS9_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS8_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSI_RKSM_mEUlmE_ZNS6_IlS1J_EEbSI_S1L_mEUllmE_S1M_EEbSI_S1L_RKSU_RKSY_mEUlllmE_RlRKlRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE6resizeEll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE6resizeEll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IfLi4ELi4ELi0ELi4ELi4EEESB_NS8_IfLi4ELi1ELi0ELi4ELi1EEEfNS8_IdLin1ELi1ELi0ELin1ELi1EEENS7_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERKNSG_IT0_EERKNS3_4AABBISH_Li3EEERKNSG_IT1_EERKNSG_IT2_EERKNSG_IT3_EERKSt6vectorINS8_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS7_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS5_IlS1J_EEbSH_S1L_mEUllmE_S1M_EEbSH_S1L_RKST_RKSX_mEUlllmE_llmEEEEEE = comdat any

$_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IfLi4ELi4ELi0ELi4ELi4EEESB_NS8_IfLi4ELi1ELi0ELi4ELi1EEEfNS8_IdLin1ELi1ELi0ELin1ELi1EEENS7_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERKNSG_IT0_EERKNS3_4AABBISH_Li3EEERKNSG_IT1_EERKNSG_IT2_EERKNSG_IT3_EERKSt6vectorINS8_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS7_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS5_IlS1J_EEbSH_S1L_mEUllmE_S1M_EEbSH_S1L_RKST_RKSX_mEUlllmE_llmEEEEEE = comdat any

$_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IfLi4ELi4ELi0ELi4ELi4EEESB_NS8_IfLi4ELi1ELi0ELi4ELi1EEEfNS8_IdLin1ELi1ELi0ELin1ELi1EEENS7_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERKNSG_IT0_EERKNS3_4AABBISH_Li3EEERKNSG_IT1_EERKNSG_IT2_EERKNSG_IT3_EERKSt6vectorINS8_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS7_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS5_IlS1J_EEbSH_S1L_mEUllmE_S1M_EEbSH_S1L_RKST_RKSX_mEUlllmE_llmEEEEEE = comdat any

@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IfLi4ELi4ELi0ELi4ELi4EEESB_NS8_IfLi4ELi1ELi0ELi4ELi1EEEfNS8_IdLin1ELi1ELi0ELin1ELi1EEENS7_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERKNSG_IT0_EERKNS3_4AABBISH_Li3EEERKNSG_IT1_EERKNSG_IT2_EERKNSG_IT3_EERKSt6vectorINS8_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS7_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS5_IlS1J_EEbSH_S1L_mEUllmE_S1M_EEbSH_S1L_RKST_RKSX_mEUlllmE_llmEEEEEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IfLi4ELi4ELi0ELi4ELi4EEESB_NS8_IfLi4ELi1ELi0ELi4ELi1EEEfNS8_IdLin1ELi1ELi0ELin1ELi1EEENS7_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERKNSG_IT0_EERKNS3_4AABBISH_Li3EEERKNSG_IT1_EERKNSG_IT2_EERKNSG_IT3_EERKSt6vectorINS8_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS7_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS5_IlS1J_EEbSH_S1L_mEUllmE_S1M_EEbSH_S1L_RKST_RKSX_mEUlllmE_llmEEEEEE, ptr @_ZNSt6thread6_StateD2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IfLi4ELi4ELi0ELi4ELi4EEESB_NS8_IfLi4ELi1ELi0ELi4ELi1EEEfNS8_IdLin1ELi1ELi0ELin1ELi1EEENS7_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERKNSG_IT0_EERKNS3_4AABBISH_Li3EEERKNSG_IT1_EERKNSG_IT2_EERKNSG_IT3_EERKSt6vectorINS8_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS7_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS5_IlS1J_EEbSH_S1L_mEUllmE_S1M_EEbSH_S1L_RKST_RKSX_mEUlllmE_llmEEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IfLi4ELi4ELi0ELi4ELi4EEESB_NS8_IfLi4ELi1ELi0ELi4ELi1EEEfNS8_IdLin1ELi1ELi0ELin1ELi1EEENS7_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERKNSG_IT0_EERKNS3_4AABBISH_Li3EEERKNSG_IT1_EERKNSG_IT2_EERKNSG_IT3_EERKSt6vectorINS8_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS7_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS5_IlS1J_EEbSH_S1L_mEUllmE_S1M_EEbSH_S1L_RKST_RKSX_mEUlllmE_llmEEEEE6_M_runEv] }, comdat, align 8
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IfLi4ELi4ELi0ELi4ELi4EEESB_NS8_IfLi4ELi1ELi0ELi4ELi1EEEfNS8_IdLin1ELi1ELi0ELin1ELi1EEENS7_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERKNSG_IT0_EERKNS3_4AABBISH_Li3EEERKNSG_IT1_EERKNSG_IT2_EERKNSG_IT3_EERKSt6vectorINS8_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS7_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS5_IlS1J_EEbSH_S1L_mEUllmE_S1M_EEbSH_S1L_RKST_RKSX_mEUlllmE_llmEEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IfLi4ELi4ELi0ELi4ELi4EEESB_NS8_IfLi4ELi1ELi0ELi4ELi1EEEfNS8_IdLin1ELi1ELi0ELin1ELi1EEENS7_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERKNSG_IT0_EERKNS3_4AABBISH_Li3EEERKNSG_IT1_EERKNSG_IT2_EERKNSG_IT3_EERKSt6vectorINS8_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS7_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS5_IlS1J_EEbSH_S1L_mEUllmE_S1M_EEbSH_S1L_RKST_RKSX_mEUlllmE_llmEEEEEE, ptr @_ZTINSt6thread6_StateE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IfLi4ELi4ELi0ELi4ELi4EEESB_NS8_IfLi4ELi1ELi0ELi4ELi1EEEfNS8_IdLin1ELi1ELi0ELin1ELi1EEENS7_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERKNSG_IT0_EERKNS3_4AABBISH_Li3EEERKNSG_IT1_EERKNSG_IT2_EERKNSG_IT3_EERKSt6vectorINS8_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS7_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS5_IlS1J_EEbSH_S1L_mEUllmE_S1M_EEbSH_S1L_RKST_RKSX_mEUlllmE_llmEEEEEE = linkonce_odr dso_local constant [602 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IfLi4ELi4ELi0ELi4ELi4EEESB_NS8_IfLi4ELi1ELi0ELi4ELi1EEEfNS8_IdLin1ELi1ELi0ELin1ELi1EEENS7_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS7_10MatrixBaseIT_EERKNSG_IT0_EERKNS3_4AABBISH_Li3EEERKNSG_IT1_EERKNSG_IT2_EERKNSG_IT3_EERKSt6vectorINS8_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS17_EERNS7_15PlainObjectBaseIT5_EERNS1C_IT6_EEEUliE_EEbSH_RKSL_mEUlmE_ZNS5_IlS1J_EEbSH_S1L_mEUllmE_S1M_EEbSH_S1L_RKST_RKSX_mEUlllmE_llmEEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external constant ptr
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES5_NS2_IfLi4ELi1ELi0ELi4ELi1EEEfNS2_IdLin1ELi1ELi0ELin1ELi1EEENS1_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNSA_IT0_EERKNS_4AABBISB_Li3EEERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKSt6vectorINS2_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS11_EERNS1_15PlainObjectBaseIT5_EERNS16_IT6_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(76) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %class.anon.166, align 1            ; 4 uses
  %10 = alloca %class.anon.167, align 8           ; 4 uses
  %11 = alloca %"class.Eigen::Matrix", align 16   ; 5 uses
  %12 = alloca %class.anon, align 8               ; 9 uses
  tail call void @_ZN3igl22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEEfNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKSt6vectorINS2_IT3_Li1ELi2ELi1ELi1ELi2EEESaISQ_EERNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %13 = load <8 x float>, ptr %3, align 16        ; 8 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <4 x float>, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16 ; 7 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !tbaa !13 ; 8 uses
  %i.a = shufflevector <8 x float> %13, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %14 = shufflevector <8 x float> %13, <8 x float> poison, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 3 uses
  %i.b = shufflevector <4 x float> %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x float> %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.c = shufflevector <4 x float> %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x float> %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x i32> <i32 6, i32 7, i32 2, i32 3> ; 2 uses
  %15 = shufflevector <8 x float> %13, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 0, i32 0>
  %i.d = fmul <4 x float> %14, %15
  %i.e = shufflevector <8 x float> %13, <8 x float> poison, <4 x i32> <i32 1, i32 1, i32 4, i32 4>
  %16 = shufflevector <8 x float> %13, <8 x float> poison, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.f = fmul <4 x float> %i.e, %16
  %i.g = fsub <4 x float> %i.d, %i.f              ; 3 uses
  %i.h = shufflevector <4 x float> %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x float> %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x i32> <i32 3, i32 3, i32 6, i32 6>
  %i.i = fmul <4 x float> %i.b, %i.h
  %i.j = shufflevector <4 x float> %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x float> %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x i32> <i32 3, i32 3, i32 6, i32 6>
  %i.k = shufflevector <4 x float> %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x float> %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.l = fmul <4 x float> %i.j, %i.k
  %i.m = fsub <4 x float> %i.i, %i.l              ; 3 uses
  %17 = shufflevector <8 x float> %13, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 1, i32 1>
  %i.n = fmul <4 x float> %i.a, %17               ; 2 uses
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.p = fsub <4 x float> %i.n, %i.o              ; 2 uses
  %18 = shufflevector <8 x float> %13, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 3, i32 3>
  %i.q = fmul <4 x float> %14, %18                ; 2 uses
  %i.r = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.s = fsub <4 x float> %i.q, %i.r
  %i.t = shufflevector <4 x float> %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x float> %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.u = fmul <4 x float> %i.b, %i.t              ; 2 uses
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.w = fsub <4 x float> %i.u, %i.v              ; 2 uses
  %i.x = shufflevector <4 x float> %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x float> %.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x i32> <i32 3, i32 3, i32 7, i32 7>
  %i.y = fmul <4 x float> %i.c, %i.x              ; 2 uses
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.aa = fsub <4 x float> %i.y, %i.z
  %i.ab = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ac = fmul <4 x float> %i.g, %i.ab            ; 2 uses
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ae = fadd <4 x float> %i.ac, %i.ad           ; 2 uses
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ag = fadd <4 x float> %i.ae, %i.af
  %i.ah = fmul <4 x float> %i.p, %i.aa
  %i.ai = fmul <4 x float> %i.s, %i.w
  %i.aj = fadd <4 x float> %i.ah, %i.ai
  %i.ak = fsub <4 x float> %i.aj, %i.ag
  %i.al = fdiv <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, %i.ak
  %i.am = bitcast <4 x float> %i.al to <4 x i32>
  %i.an = shufflevector <4 x i32> %i.am, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ao = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ap = fmul <4 x float> %i.b, %i.ao
  %i.aq = shufflevector <4 x float> %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.ar = fmul <4 x float> %i.aq, %i.g
  %i.as = fadd <4 x float> %i.ap, %i.ar
  %i.at = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.au = fmul <4 x float> %i.c, %i.at
  %i.av = fsub <4 x float> %i.au, %i.as
  %i.aw = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 3, i32 poison>
  %i.ax = fmul <4 x float> %i.a, %i.aw
  %i.ay = shufflevector <8 x float> %13, <8 x float> poison, <4 x i32> <i32 1, i32 poison, i32 5, i32 poison>
  %i.az = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 2, i32 poison>
  %i.ba = fmul <4 x float> %i.ay, %i.az
  %i.bb = fsub <4 x float> %i.ax, %i.ba
  %i.bc = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.bd = fmul <4 x float> %14, %i.bc
  %i.be = fsub <4 x float> %i.bd, %i.bb
  %i.bf = xor <4 x i32> %i.an, <i32 0, i32 -2147483648, i32 -2147483648, i32 0>
  %i.bg = bitcast <4 x i32> %i.bf to <4 x float>  ; 2 uses
  %i.bh = fmul <4 x float> %i.be, %i.bg
  %i.bi = fmul <4 x float> %i.av, %i.bg
  %i.bj = shufflevector <4 x float> %i.bh, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.bk = fpext <2 x float> %i.bj to <2 x double>
  store <2 x double> %i.bk, ptr %11, align 16, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bm = extractelement <4 x float> %i.bi, i64 2
  %i.bn = fpext float %i.bm to double
  store double %i.bn, ptr %i.bl, align 16, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr %7, ptr %12, align 8, !tbaa !74
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %2, ptr %i.bq, align 8, !tbaa !75
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %0, ptr %i.br, align 8, !tbaa !76
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %1, ptr %i.bs, align 8, !tbaa !77
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %11, ptr %i.bt, align 8, !tbaa !78
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %8, ptr %i.bu, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr %12, ptr %10, align 8, !tbaa !27
  %i.bv = call noundef zeroext i1 @_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IfLi4ELi4ELi0ELi4ELi4EEES7_NS4_IfLi4ELi1ELi0ELi4ELi1EEEfNS4_IdLin1ELi1ELi0ELin1ELi1EEENS3_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSC_IT0_EERKNS_4AABBISD_Li3EEERKNSC_IT1_EERKNSC_IT2_EERKNSC_IT3_EERKSt6vectorINS4_IT4_Li1ELi2ELi1ELi1ELi2EEESaIS13_EERNS3_15PlainObjectBaseIT5_EERNS18_IT6_EEEUliE_EEbSD_RKSH_mEUlmE_ZNS1_IlS1F_EEbSD_S1H_mEUllmE_S1I_EEbSD_S1H_RKSP_RKST_m(i64 noundef %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %9, i64 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl22screen_space_selectionIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEEfNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKSt6vectorINS2_IT3_Li1ELi2ELi1ELi1ELi2EEESaISQ_EERNS1_15PlainObjectBaseIT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix.68", align 8  ; 11 uses
  %7 = alloca %"class.Eigen::Matrix.77", align 8  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = load ptr, ptr %4, align 8, !tbaa !87
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi2ELi0ELin1ELi2EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.g, i64 noundef 2)
          to label %_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit unwind label %bb.b

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.b ], [ %.pn24.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %6, align 8, !tbaa !29
  call void @free(ptr noundef %i.i) #20
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.k = load ptr, ptr %4, align 8, !tbaa !87
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi2ELi0ELin1ELi2EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef %i.o, i64 noundef 2)
          to label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.preheader unwind label %bb.c

_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.preheader: ; preds = %_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !32   ; 13 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.preheader
  %i.s = load ptr, ptr %4, align 8, !tbaa !87     ; 5 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !29, !noalias !88 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !33   ; 6 uses
  %i.w = load ptr, ptr %7, align 8, !tbaa !34     ; 5 uses
  %.not = icmp eq i64 %i.q, 1
  br i1 %.not, label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.x = add nsw i64 %i.q, -1                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 5
  br i1 %min.iters.check, label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split
  %i.y = shl nsw i64 %i.v, 3
  %i.z = add i64 %i.y, -1
  %diff.check = icmp ult i64 %i.z, 15
  br i1 %diff.check, label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, -2                       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind36 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next38, %vector.body ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.aa, align 4, !tbaa !90 ; 2 uses
  %strided.vec = shufflevector <4 x float> %wide.vec, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec37 = shufflevector <4 x float> %wide.vec, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ac = fpext <2 x float> %strided.vec to <2 x double>
  store <2 x double> %i.ac, ptr %i.ab, align 8, !tbaa !15
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.v
  %i.ae = fpext <2 x float> %strided.vec37 to <2 x double>
  store <2 x double> %i.ae, ptr %i.ad, align 8, !tbaa !15
  %i.af = getelementptr [4 x i8], ptr %i.w, i64 %index ; 2 uses
  store <2 x i32> %vec.ind36, ptr %i.af, align 4, !tbaa !91
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %i.q
  %i.ah = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ai = add <2 x i32> %i.ah, splat (i32 1)
  store <2 x i32> %i.ai, ptr %i.ag, align 4, !tbaa !91
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %vec.ind.next38 = add <2 x i32> %vec.ind36, splat (i32 2)
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.peel.begin, label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.preheader39

_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.preheader39: ; preds = %vector.memcheck, %.lr.ph.split, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split ], [ %n.vec, %middle.block ] ; 7 uses
  %i.ak = add nsw i64 %i.q, -2
  %i.al = and i64 %i.q, 1
  %lcmp.mod.not.not = icmp eq i64 %i.al, 0
  br i1 %lcmp.mod.not.not, label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.prol, label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.prol.loopexit

_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.prol: ; preds = %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.preheader39
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.ph
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.ph ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.v
  %i.ap = load <2 x float>, ptr %i.am, align 4, !tbaa !90
  %i.aq = fpext <2 x float> %i.ap to <2 x double> ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  store double %i.ar, ptr %i.an, align 8, !tbaa !15
  %i.as = extractelement <2 x double> %i.aq, i64 1
  store double %i.as, ptr %i.ao, align 8, !tbaa !15
  %i.at = getelementptr [4 x i8], ptr %i.w, i64 %indvars.iv.ph ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv.ph to i32
  store i32 %i.au, ptr %i.at, align 4, !tbaa !91
  %i.av = getelementptr [4 x i8], ptr %i.at, i64 %i.q
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 3 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !91
  br label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.prol.loopexit

_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.prol.loopexit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.prol, %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.preheader39
  %indvars.iv.next.lcssa.unr = phi i64 [ poison, %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.preheader39 ], [ %indvars.iv.next.prol, %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.preheader39 ], [ %indvars.iv.next.prol, %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.prol ]
  %i.ax = icmp eq i64 %i.ak, %indvars.iv.ph
  br i1 %i.ax, label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.peel.begin, label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.preheader39.new

_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.preheader39.new: ; preds = %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.prol.loopexit
  %i.ay = add nsw i64 %i.q, -3
  br label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit

bb.c:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.peel.begin: ; preds = %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.prol.loopexit, %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit, %middle.block, %.lr.ph
  %i.ba = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ], [ %indvars.iv.next.lcssa.unr, %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit.prol.loopexit ], [ %indvars.iv.next.1, %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ba ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.v
  %i.be = load <2 x float>, ptr %i.bb, align 4, !tbaa !90
  %i.bf = fpext <2 x float> %i.be to <2 x double> ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 0
  store double %i.bg, ptr %i.bc, align 8, !tbaa !15
  %i.bh = extractelement <2 x double> %i.bf, i64 1
  store double %i.bh, ptr %i.bd, align 8, !tbaa !15
  %i.bi = getelementptr [4 x i8], ptr %i.w, i64 %i.ba ; 2 uses
  %i.bj = trunc nuw nsw i64 %i.ba to i32
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !91
  %i.bk = getelementptr [4 x i8], ptr %i.bi, i64 %i.q
  %indvars.iv.next.peel = add nuw nsw i64 %i.ba, 1 ; 2 uses
  %i.bl = icmp eq i64 %indvars.iv.next.peel, %i.q
  %i.bm = trunc nuw nsw i64 %indvars.iv.next.peel to i32
  %i.bn = select i1 %i.bl, i32 0, i32 %i.bm
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !91
  br label %_ZN5Eigen6MatrixIiLin1ELi2ELi0ELin1ELi2EEC2ImiEERKT_RKT0_.exit._crit_edge

end_hunk_0
