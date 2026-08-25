Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestSPIRVCPURunnerPipeline?download=true
inline.NumInlined: 158
inline.NumDeleted: 110
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.mlir::PassPipelineRegistration" = type { i8 }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.std::unique_ptr.10" = type { %"struct.std::__uniq_ptr_data.11" }
%"struct.std::__uniq_ptr_data.11" = type { %"class.std::__uniq_ptr_impl.12" }
%"class.std::__uniq_ptr_impl.12" = type { %"class.std::tuple.13" }
%"class.std::tuple.13" = type { %"struct.std::_Tuple_impl.14" }
%"struct.std::_Tuple_impl.14" = type { %"struct.std::_Head_base.17" }
%"struct.std::_Head_base.17" = type { ptr }
%"class.std::function.38" = type { %"class.std::_Function_base", ptr }
%class.anon = type { %"class.std::function" }
%"class.std::function.35" = type { %"class.std::_Function_base", ptr }

$_ZN4mlir24PassPipelineRegistrationINS_20EmptyPipelineOptionsEEC2EN4llvm9StringRefES4_RKSt8functionIFvRNS_13OpPassManagerEEE = comdat any

$_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir13OpPassManagerENS0_9StringRefENS0_12function_refIFS1_RKNS0_5TwineEEEEEZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ES5_S5_RKSt8functionIFvS4_EEEUlS4_S5_SB_E_E9_M_invokeERKSt9_Any_dataS4_OS5_OSB_ = comdat any

$_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir13OpPassManagerENS0_9StringRefENS0_12function_refIFS1_RKNS0_5TwineEEEEEZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ES5_S5_RKSt8functionIFvS4_EEEUlS4_S5_SB_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFvN4llvm12function_refIFvRKN4mlir6detail11PassOptionsEEEEEZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ENS0_9StringRefESD_RKSt8functionIFvRNS2_13OpPassManagerEEEEUlS8_E_E9_M_invokeERKSt9_Any_dataOS8_ = comdat any

$_ZNSt17_Function_handlerIFvN4llvm12function_refIFvRKN4mlir6detail11PassOptionsEEEEEZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ENS0_9StringRefESD_RKSt8functionIFvRNS2_13OpPassManagerEEEEUlS8_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFvRN4mlir13OpPassManagerEEPS3_E9_M_invokeERKSt9_Any_dataS2_ = comdat any

$_ZNSt17_Function_handlerIFvRN4mlir13OpPassManagerEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [31 x i8] c"test-spirv-cpu-runner-pipeline\00", align 1
@.str.1 = private unnamed_addr constant [116 x i8] c"Runs a series of passes for lowering SPIR-V-dialect MLIR to LLVM-dialect MLIR intended for SPIR-V CPU Runner tests.\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"spirv.module\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4test34registerTestSPIRVCPURunnerPipelineEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %"struct.mlir::PassPipelineRegistration", align 1
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN12_GLOBAL__N_131buildTestSPIRVCPURunnerPipelineERN4mlir13OpPassManagerE, ptr %1, align 8, !tbaa !8
  store ptr @_ZNSt17_Function_handlerIFvRN4mlir13OpPassManagerEEPS3_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.b, align 8, !tbaa !10
  store ptr @_ZNSt17_Function_handlerIFvRN4mlir13OpPassManagerEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, ptr %i.a, align 8, !tbaa !13
  call void @_ZN4mlir24PassPipelineRegistrationINS_20EmptyPipelineOptionsEEC2EN4llvm9StringRefES4_RKSt8functionIFvRNS_13OpPassManagerEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull @.str, i64 30, ptr nonnull @.str.1, i64 115, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #7, !inline_history !14 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_131buildTestSPIRVCPURunnerPipelineERN4mlir13OpPassManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.2", align 8 ; 3 uses
  %2 = alloca %"class.std::unique_ptr.2", align 8 ; 3 uses
  %3 = alloca %"class.std::unique_ptr.10", align 8 ; 6 uses
  %4 = alloca %"class.std::unique_ptr.2", align 8 ; 3 uses
  %5 = alloca %"class.std::unique_ptr.2", align 8 ; 3 uses
  %6 = alloca %"class.std::unique_ptr.2", align 8 ; 3 uses
  %7 = alloca %"class.std::unique_ptr.2", align 8 ; 3 uses
  call void @_ZN4mlir28createGpuKernelOutliningPassEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %1) #7
  call void @_ZN4mlir13OpPassManager7addPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %1) #7
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dereferenceable(336) %i.a) #7, !inline_history !19
  br label %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN4mlir27createConvertGPUToSPIRVPassEb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.10") align 8 %3, i1 noundef zeroext true) #7
  %i.e = load ptr, ptr %3, align 8, !tbaa !20
  store ptr null, ptr %3, align 8, !tbaa !20
  store ptr %i.e, ptr %2, align 8, !tbaa !22
  call void @_ZN4mlir13OpPassManager7addPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %2) #7
  %i.f = load ptr, ptr %2, align 8, !tbaa !15     ; 3 uses
  %.not.i7 = icmp eq ptr %i.f, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit9, label %_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i8

_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i8: ; preds = %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(336) %i.f) #7, !inline_history !19
  br label %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit9

_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit9: ; preds = %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i8
  %i.j = load ptr, ptr %3, align 8, !tbaa !20     ; 3 uses
  %.not.i10 = icmp eq ptr %i.j, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN4mlir13OperationPassINS0_8ModuleOpEEESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13OperationPassINS0_8ModuleOpEEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4mlir13OperationPassINS0_8ModuleOpEEEEclEPS3_.exit.i: ; preds = %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit9
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(336) %i.j) #7, !inline_history !24
  br label %_ZNSt10unique_ptrIN4mlir13OperationPassINS0_8ModuleOpEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir13OperationPassINS0_8ModuleOpEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit9, %_ZNKSt14default_deleteIN4mlir13OperationPassINS0_8ModuleOpEEEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir13OpPassManager4nestEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.2, i64 12) #7 ; 2 uses
  call void @_ZN4mlir5spirv33createSPIRVLowerABIAttributesPassEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %4) #7
  call void @_ZN4mlir13OpPassManager7addPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nofree noundef nonnull align 8 dereferenceable(8) %4) #7
  %i.o = load ptr, ptr %4, align 8, !tbaa !15     ; 3 uses
  %.not.i11 = icmp eq ptr %i.o, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit13, label %_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i12

_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i12: ; preds = %_ZNSt10unique_ptrIN4mlir13OperationPassINS0_8ModuleOpEEESt14default_deleteIS3_EED2Ev.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(336) %i.o) #7, !inline_history !19
  br label %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit13

_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit13: ; preds = %_ZNSt10unique_ptrIN4mlir13OperationPassINS0_8ModuleOpEEESt14default_deleteIS3_EED2Ev.exit, %_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i12
  call void @_ZN4mlir5spirv24createSPIRVUpdateVCEPassEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %5) #7
  call void @_ZN4mlir13OpPassManager7addPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr nofree noundef nonnull align 8 dereferenceable(8) %5) #7
  %i.s = load ptr, ptr %5, align 8, !tbaa !15     ; 3 uses
  %.not.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit16, label %_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i15

_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i15: ; preds = %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit13
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(336) %i.s) #7, !inline_history !19
  br label %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit16: ; preds = %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit13, %_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i15
  call void @_ZN4mlir29createLowerHostCodeToLLVMPassEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %6) #7
  call void @_ZN4mlir13OpPassManager7addPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %6) #7
  %i.w = load ptr, ptr %6, align 8, !tbaa !15     ; 3 uses
  %.not.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit19, label %_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i18

_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i18: ; preds = %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(336) %i.w) #7, !inline_history !19
  br label %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit19: ; preds = %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit16, %_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i18
  call void @_ZN4mlir28createConvertSPIRVToLLVMPassEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %7) #7
  call void @_ZN4mlir13OpPassManager7addPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %7) #7
  %i.aa = load ptr, ptr %7, align 8, !tbaa !15    ; 3 uses
  %.not.i20 = icmp eq ptr %i.aa, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i21: ; preds = %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit19
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(336) %i.aa) #7, !inline_history !19
  br label %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNSt10unique_ptrIN4mlir4PassESt14default_deleteIS1_EED2Ev.exit19, %_ZNKSt14default_deleteIN4mlir4PassEEclEPS1_.exit.i21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir24PassPipelineRegistrationINS_20EmptyPipelineOptionsEEC2EN4llvm9StringRefES4_RKSt8functionIFvRNS_13OpPassManagerEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.std::function.38", align 8  ; 9 uses
  %7 = alloca %class.anon, align 8                ; 9 uses
  %8 = alloca %"class.std::function.35", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN4mlir13OpPassManagerEEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 2) #7, !inline_history !25 ; 0 uses
  %i.e = load <2 x ptr>, ptr %i.a, align 8, !tbaa !8
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !8
  br label %_ZNSt8functionIFvRN4mlir13OpPassManagerEEEC2ERKS4_.exit

_ZNSt8functionIFvRN4mlir13OpPassManagerEEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  %9 = load ptr, ptr %i.h, align 8, !tbaa !13     ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %9, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8functionIFN4llvm13LogicalResultERN4mlir13OpPassManagerENS0_9StringRefENS0_12function_refIFS1_RKNS0_5TwineEEEEEEC2IZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ES5_S5_RKS_IFvS4_EEEUlS4_S5_SB_E_vEEOT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8functionIFvRN4mlir13OpPassManagerEEEC2ERKS4_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 2) #7, !inline_history !26 ; 0 uses
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !8
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !8
  br label %_ZNSt8functionIFN4llvm13LogicalResultERN4mlir13OpPassManagerENS0_9StringRefENS0_12function_refIFS1_RKNS0_5TwineEEEEEEC2IZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ES5_S5_RKS_IFvS4_EEEUlS4_S5_SB_E_vEEOT_.exit

_ZNSt8functionIFN4llvm13LogicalResultERN4mlir13OpPassManagerENS0_9StringRefENS0_12function_refIFS1_RKNS0_5TwineEEEEEEC2IZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ES5_S5_RKS_IFvS4_EEEUlS4_S5_SB_E_vEEOT_.exit: ; preds = %_ZNSt8functionIFvRN4mlir13OpPassManagerEEEC2ERKS4_.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !8
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir13OpPassManagerENS0_9StringRefENS0_12function_refIFS1_RKNS0_5TwineEEEEEZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ES5_S5_RKSt8functionIFvS4_EEEUlS4_S5_SB_E_E9_M_invokeERKSt9_Any_dataS4_OS5_OSB_, ptr %i.l, align 8, !tbaa !27
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir13OpPassManagerENS0_9StringRefENS0_12function_refIFS1_RKNS0_5TwineEEEEEZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ES5_S5_RKSt8functionIFvS4_EEEUlS4_S5_SB_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.m, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFvN4llvm12function_refIFvRKN4mlir6detail11PassOptionsEEEEEZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ENS0_9StringRefESD_RKSt8functionIFvRNS2_13OpPassManagerEEEEUlS8_E_E9_M_invokeERKSt9_Any_dataOS8_, ptr %i.o, align 8, !tbaa !29
  store ptr @_ZNSt17_Function_handlerIFvN4llvm12function_refIFvRKN4mlir6detail11PassOptionsEEEEEZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ENS0_9StringRefESD_RKSt8functionIFvRNS2_13OpPassManagerEEEEUlS8_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation, ptr %i.n, align 8, !tbaa !13
  call void @_ZN4mlir20registerPassPipelineEN4llvm9StringRefES1_RKSt8functionIFNS0_13LogicalResultERNS_13OpPassManagerES1_NS0_12function_refIFS3_RKNS0_5TwineEEEEEES2_IFvNS6_IFvRKNS_6detail11PassOptionsEEEEEE(ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nofree noundef nonnull align 8 dereferenceable(32) %8) #7
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFN4llvm13LogicalResultERN4mlir13OpPassManagerENS0_9StringRefENS0_12function_refIFS1_RKNS0_5TwineEEEEEEC2IZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ES5_S5_RKS_IFvS4_EEEUlS4_S5_SB_E_vEEOT_.exit
  %i.q = call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3) #7, !inline_history !14 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFN4llvm13LogicalResultERN4mlir13OpPassManagerENS0_9StringRefENS0_12function_refIFS1_RKNS0_5TwineEEEEEEC2IZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ES5_S5_RKS_IFvS4_EEEUlS4_S5_SB_E_vEEOT_.exit, %bb.d
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %.not.i7 = icmp eq ptr %i.r, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #7, !inline_history !14 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit8

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.e
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZZN4mlir24PassPipelineRegistrationINS_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES4_RKSt8functionIFvRNS_13OpPassManagerEEEENUlS7_S4_NS3_12function_refIFNS3_13LogicalResultERKNS3_5TwineEEEEE_D2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit8
  %i.u = call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3) #7, !inline_history !31 ; 0 uses
  br label %_ZZN4mlir24PassPipelineRegistrationINS_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES4_RKSt8functionIFvRNS_13OpPassManagerEEEENUlS7_S4_NS3_12function_refIFNS3_13LogicalResultERKNS3_5TwineEEEEE_D2Ev.exit

_ZZN4mlir24PassPipelineRegistrationINS_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES4_RKSt8functionIFvRNS_13OpPassManagerEEEENUlS7_S4_NS3_12function_refIFNS3_13LogicalResultERKNS3_5TwineEEEEE_D2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit8, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4mlir13OpPassManager7addPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir28createGpuKernelOutliningPassEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8) local_unnamed_addr #2

declare void @_ZN4mlir27createConvertGPUToSPIRVPassEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.10") align 8, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN4mlir5spirv33createSPIRVLowerABIAttributesPassEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8) local_unnamed_addr #2

declare void @_ZN4mlir5spirv24createSPIRVUpdateVCEPassEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8) local_unnamed_addr #2

declare void @_ZN4mlir29createLowerHostCodeToLLVMPassEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8) local_unnamed_addr #2

declare void @_ZN4mlir28createConvertSPIRVToLLVMPassEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir13OpPassManager4nestEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir20registerPassPipelineEN4llvm9StringRefES1_RKSt8functionIFNS0_13LogicalResultERNS_13OpPassManagerES1_NS0_12function_refIFS3_RKNS0_5TwineEEEEEES2_IFvNS6_IFvRKNS_6detail11PassOptionsEEEEEE(ptr, i64, ptr, i64, ptr noundef nonnull align 8 dereferenceable(32), ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir13OpPassManagerENS0_9StringRefENS0_12function_refIFS1_RKNS0_5TwineEEEEEZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ES5_S5_RKSt8functionIFvS4_EEEUlS4_S5_SB_E_E9_M_invokeERKSt9_Any_dataS4_OS5_OSB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !32
  %i.b = icmp eq i64 %.sroa.22.0.copyload.i.i, 0
  br i1 %i.b, label %bb.b, label %_ZSt10__invoke_rIN4llvm13LogicalResultERZN4mlir24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ENS0_9StringRefES6_RKSt8functionIFvRNS2_13OpPassManagerEEEEUlS9_S6_NS0_12function_refIFS1_RKNS0_5TwineEEEEE_JS9_S6_SJ_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt8functionIFvRN4mlir13OpPassManagerEEEclES2_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt25__throw_bad_function_callv() #9
  unreachable

_ZNKSt8functionIFvRN4mlir13OpPassManagerEEEclES2_.exit.i.i.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1) #7, !inline_history !34
  br label %_ZSt10__invoke_rIN4llvm13LogicalResultERZN4mlir24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ENS0_9StringRefES6_RKSt8functionIFvRNS2_13OpPassManagerEEEEUlS9_S6_NS0_12function_refIFS1_RKNS0_5TwineEEEEE_JS9_S6_SJ_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit

_ZSt10__invoke_rIN4llvm13LogicalResultERZN4mlir24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ENS0_9StringRefES6_RKSt8functionIFvRNS2_13OpPassManagerEEEEUlS9_S6_NS0_12function_refIFS1_RKNS0_5TwineEEEEE_JS9_S6_SJ_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESN_E4typeEOSO_DpOSP_.exit: ; preds = %bb.a, %_ZNKSt8functionIFvRN4mlir13OpPassManagerEEEclES2_.exit.i.i.i
  %.sroa.02.0.i.i.i = phi i8 [ 1, %_ZNKSt8functionIFvRN4mlir13OpPassManagerEEEclES2_.exit.i.i.i ], [ 0, %bb.a ]
  ret i8 %.sroa.02.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir13OpPassManagerENS0_9StringRefENS0_12function_refIFS1_RKNS0_5TwineEEEEEZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ES5_S5_RKSt8functionIFvS4_EEEUlS4_S5_SB_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlS9_S6_NS5_12function_refIFNS5_13LogicalResultERKNS5_5TwineEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlS9_S6_NS5_12function_refIFNS5_13LogicalResultERKNS5_5TwineEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !35
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlS9_S6_NS5_12function_refIFNS5_13LogicalResultERKNS5_5TwineEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlS9_S6_NS5_12function_refIFNS5_13LogicalResultERKNS5_5TwineEEEEE_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 2) #7, !inline_history !37 ; 0 uses
  %i.h = load <2 x ptr>, ptr %i.d, align 8, !tbaa !8
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !8
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlS9_S6_NS5_12function_refIFNS5_13LogicalResultERKNS5_5TwineEEEEE_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i

_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlS9_S6_NS5_12function_refIFNS5_13LogicalResultERKNS5_5TwineEEEEE_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !8
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlS9_S6_NS5_12function_refIFNS5_13LogicalResultERKNS5_5TwineEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !8      ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlS9_S6_NS5_12function_refIFNS5_13LogicalResultERKNS5_5TwineEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZZN4mlir24PassPipelineRegistrationINS_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES4_RKSt8functionIFvRNS_13OpPassManagerEEEENUlS7_S4_NS3_12function_refIFNS3_13LogicalResultERKNS3_5TwineEEEEE_D2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3) #7, !inline_history !38 ; 0 uses
  br label %_ZZN4mlir24PassPipelineRegistrationINS_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES4_RKSt8functionIFvRNS_13OpPassManagerEEEENUlS7_S4_NS3_12function_refIFNS3_13LogicalResultERKNS3_5TwineEEEEE_D2Ev.exit.i.i

_ZZN4mlir24PassPipelineRegistrationINS_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES4_RKSt8functionIFvRNS_13OpPassManagerEEEENUlS7_S4_NS3_12function_refIFNS3_13LogicalResultERKNS3_5TwineEEEEE_D2Ev.exit.i.i: ; preds = %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 32) #10
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlS9_S6_NS5_12function_refIFNS5_13LogicalResultERKNS5_5TwineEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlS9_S6_NS5_12function_refIFNS5_13LogicalResultERKNS5_5TwineEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit: ; preds = %bb.a, %_ZZN4mlir24PassPipelineRegistrationINS_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES4_RKSt8functionIFvRNS_13OpPassManagerEEEENUlS7_S4_NS3_12function_refIFNS3_13LogicalResultERKNS3_5TwineEEEEE_D2Ev.exit.i.i, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlS9_S6_NS5_12function_refIFNS5_13LogicalResultERKNS5_5TwineEEEEE_E15_M_init_functorIRKSL_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvN4llvm12function_refIFvRKN4mlir6detail11PassOptionsEEEEEZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ENS0_9StringRefESD_RKSt8functionIFvRNS2_13OpPassManagerEEEEUlS8_E_E9_M_invokeERKSt9_Any_dataOS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvN4llvm12function_refIFvRKN4mlir6detail11PassOptionsEEEEEZNS2_24PassPipelineRegistrationINS2_20EmptyPipelineOptionsEEC1ENS0_9StringRefESD_RKSt8functionIFvRNS2_13OpPassManagerEEEEUlS8_E_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlNS5_12function_refIFvRKNS1_6detail11PassOptionsEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlNS5_12function_refIFvRKNS1_6detail11PassOptionsEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlNS5_12function_refIFvRKNS1_6detail11PassOptionsEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlNS5_12function_refIFvRKNS1_6detail11PassOptionsEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !8
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlNS5_12function_refIFvRKNS1_6detail11PassOptionsEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlNS5_12function_refIFvRKNS1_6detail11PassOptionsEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir24PassPipelineRegistrationINS1_20EmptyPipelineOptionsEEC1EN4llvm9StringRefES6_RKSt8functionIFvRNS1_13OpPassManagerEEEEUlNS5_12function_refIFvRKNS1_6detail11PassOptionsEEEEE_E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
