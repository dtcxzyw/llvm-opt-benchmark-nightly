begin_hunk_0
  %3 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 14 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::shared_ptr.28", align 8 ; 6 uses
  %.sroa.0.i.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %6 = alloca %"class.std::function", align 8     ; 9 uses
  %7 = alloca %"struct.arrow::compute::VectorKernel", align 16 ; 27 uses
  %8 = alloca %"class.std::shared_ptr.47", align 16 ; 7 uses
  %9 = alloca %"class.std::vector.56", align 8    ; 10 uses
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i64 0, ptr %i.aq, align 8
  store ptr @_ZN5arrow7compute8internal14OptionsWrapperINS0_25InversePermutationOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE, ptr %6, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %i.ao, i64 16, i1 false), !tbaa.struct !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %i.gq = load <2 x ptr>, ptr %i.ar, align 16, !tbaa !121
  %i.gr = load ptr, ptr %i.ar, align 16, !tbaa !121 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.ar, align 16, !tbaa !121
  store <2 x ptr> %i.gq, ptr %i.ap, align 8, !tbaa !121
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_, ptr %i.as, align 8, !tbaa !121
  %.not.i.i33.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i33.i.i, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit.i.i, label %bb.bf
end_hunk_1
