begin_hunk_0
  %15 = alloca %"struct.arrow::compute::Arity", align 8 ; 5 uses
  %16 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 13 uses
  %17 = alloca %"class.std::vector.10", align 8   ; 11 uses
  %18 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 21 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 12 uses
  %21 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 6 uses
end_hunk_0
begin_hunk_1
  %23 = alloca %"class.std::shared_ptr.27", align 8 ; 4 uses
  %24 = alloca %"class.std::unique_ptr.30", align 8 ; 7 uses
  %25 = alloca %"class.std::vector.10", align 8   ; 11 uses
  %26 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 21 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 12 uses
  %29 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 6 uses
end_hunk_1
begin_hunk_2
  %i.e = getelementptr inbounds nuw i8, ptr %18, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  store i32 2, ptr %i.e, align 8, !tbaa !63
  %40 = getelementptr inbounds nuw i8, ptr %18, i64 124
  store i32 1, ptr %40, align 4, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 128
  store i8 1, ptr %i.f, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 129
  store i8 1, ptr %i.g, align 1, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 130
  store i8 1, ptr %i.h, align 2, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @_ZN5arrow7compute8internal14OptionsWrapperINS0_13FilterOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.j, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 40
end_hunk_2
begin_hunk_3
  store i32 1, ptr %i.cy, align 4, !tbaa !68
  %i.cz = getelementptr inbounds nuw i8, ptr %26, i64 128
  store i8 1, ptr %i.cz, align 8, !tbaa !69
  %41 = getelementptr inbounds nuw i8, ptr %26, i64 129
  %i.da = getelementptr inbounds nuw i8, ptr %26, i64 130
  store i8 1, ptr %i.da, align 2, !tbaa !71
  %i.db = getelementptr inbounds nuw i8, ptr %26, i64 16
  store ptr @_ZN5arrow7compute8internal14OptionsWrapperINS0_11TakeOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE, ptr %i.db, align 8
  %.sroa.4319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 24
  store i64 0, ptr %.sroa.4319.0..sroa_idx, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.dc, align 8, !tbaa !72
  %i.dd = getelementptr inbounds nuw i8, ptr %26, i64 40
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_, ptr %i.dd, align 8, !tbaa !72
  store i8 0, ptr %41, align 1, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  %i.de = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.de, ptr %27, align 8, !tbaa !33
end_hunk_3
