inline.NumInlined: 10318
inline.NumDeleted: 3952
begin_hunk_0_@_ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE:bb.a
  %39 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %40 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %41 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %.sroa.0.i.i.i542 = alloca { i64, i64 }, align 8 ; 4 uses
  %42 = alloca %"class.std::function.13", align 8 ; 9 uses
  %43 = alloca %"class.std::shared_ptr.40", align 16 ; 4 uses
  %.sroa.0.i.i.i474 = alloca { i64, i64 }, align 8 ; 4 uses
  %44 = alloca %"class.std::function.13", align 8 ; 9 uses
  %.sroa.0.i.i.i470 = alloca { i64, i64 }, align 8 ; 4 uses
  %45 = alloca %"class.std::function", align 8    ; 9 uses
  %46 = alloca %"class.std::function", align 8    ; 7 uses
  %47 = alloca %"class.std::shared_ptr.40", align 8 ; 5 uses
  %48 = alloca %"class.std::function", align 8    ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE:bb.a
  %83 = alloca %"class.std::shared_ptr.36", align 8 ; 6 uses
  %84 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %85 = alloca %"struct.arrow::compute::VectorKernel", align 8 ; 8 uses
  %.sroa.0.i.i.i112 = alloca { i64, i64 }, align 8 ; 4 uses
  %86 = alloca %"class.std::function.13", align 8 ; 9 uses
  %87 = alloca %"class.std::shared_ptr.40", align 16 ; 4 uses
  %.sroa.0.i.i.i68 = alloca { i64, i64 }, align 8 ; 4 uses
  %88 = alloca %"class.std::function.13", align 8 ; 9 uses
  %.sroa.0.i.i.i65 = alloca { i64, i64 }, align 8 ; 4 uses
  %89 = alloca %"class.std::function", align 8    ; 9 uses
  %90 = alloca %"class.std::function", align 8    ; 7 uses
  %91 = alloca %"class.std::shared_ptr.40", align 8 ; 5 uses
  %92 = alloca %"class.std::function", align 8    ; 7 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE:bb.a
  %i.agv = getelementptr inbounds nuw i8, ptr %89, i64 16
  %i.agw = getelementptr inbounds nuw i8, ptr %89, i64 8
  store i64 0, ptr %i.agw, align 8
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118DictionaryHashInitINS2_12UniqueActionEEENS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS7_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsE, ptr %89, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i65)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i65, ptr noundef nonnull align 8 dereferenceable(32) %89, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull align 16 dereferenceable(32) %i.agu, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i65, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i65)
  %i.agx = getelementptr inbounds nuw i8, ptr %130, i64 32 ; 6 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %130, i64 40 ; 2 uses
  %i.agz = load <2 x ptr>, ptr %i.agx, align 16, !tbaa !72
  %i.aha = load ptr, ptr %i.agx, align 16, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.agx, align 16, !tbaa !72
  store <2 x ptr> %i.agz, ptr %i.agv, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_, ptr %i.agy, align 8, !tbaa !72
  %.not.i.i66 = icmp eq ptr %i.aha, null
  br i1 %.not.i.i66, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit, label %bb.ky
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE:bb.a
  %i.ahe = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.ahf = getelementptr inbounds nuw i8, ptr %88, i64 8
  store i64 0, ptr %i.ahf, align 8
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_124UniqueFinalizeDictionaryEPNS0_13KernelContextEPSt6vectorINS_5DatumESaIS6_EE, ptr %88, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i68)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i68, ptr noundef nonnull align 8 dereferenceable(32) %88, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i68, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i68)
  %i.ahg = load <2 x ptr>, ptr %i.o, align 8, !tbaa !72
  %i.ahh = load ptr, ptr %i.o, align 8, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.o, align 8, !tbaa !72
  store <2 x ptr> %i.ahg, ptr %i.ahe, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E9_M_invokeERKSt9_Any_dataOS4_OS9_, ptr %i.p, align 16, !tbaa !72
  %.not.i.i69 = icmp eq ptr %i.ahh, null
  br i1 %.not.i.i69, label %_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEaSIRSA_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSF_.exit71, label %bb.la
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE:bb.a
  %i.anw = getelementptr inbounds nuw i8, ptr %86, i64 16
  %i.anx = getelementptr inbounds nuw i8, ptr %86, i64 8
  store i64 0, ptr %i.anx, align 8
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_119ValueCountsFinalizeEPNS0_13KernelContextEPSt6vectorINS_5DatumESaIS6_EE, ptr %86, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i112)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i112, ptr noundef nonnull align 8 dereferenceable(32) %86, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i112, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i112)
  %i.any = load <2 x ptr>, ptr %i.o, align 8, !tbaa !72
  %i.anz = load ptr, ptr %i.o, align 8, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.o, align 8, !tbaa !72
  store <2 x ptr> %i.any, ptr %i.anw, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E9_M_invokeERKSt9_Any_dataOS4_OS9_, ptr %i.p, align 16, !tbaa !72
  %.not.i.i113 = icmp eq ptr %i.anz, null
  br i1 %.not.i.i113, label %bb.np, label %bb.nm
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE:bb.a
  %i.bvi = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.bvj = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 0, ptr %i.bvj, align 8
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118DictionaryHashInitINS2_17ValueCountsActionEEENS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS7_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsE, ptr %45, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i470)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i470, ptr noundef nonnull align 8 dereferenceable(32) %45, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 16 dereferenceable(32) %i.agu, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i470, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i470)
  %i.bvk = load <2 x ptr>, ptr %i.agx, align 16, !tbaa !72
  %i.bvl = load ptr, ptr %i.agx, align 16, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.agx, align 16, !tbaa !72
  store <2 x ptr> %i.bvk, ptr %i.bvi, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_, ptr %i.agy, align 8, !tbaa !72
  %.not.i.i471 = icmp eq ptr %i.bvl, null
  br i1 %.not.i.i471, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit473, label %bb.zn
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE:bb.a
  %i.bvp = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.bvq = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 0, ptr %i.bvq, align 8
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_129ValueCountsFinalizeDictionaryEPNS0_13KernelContextEPSt6vectorINS_5DatumESaIS6_EE, ptr %44, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i474)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i474, ptr noundef nonnull align 8 dereferenceable(32) %44, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i474, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i474)
  %i.bvr = load <2 x ptr>, ptr %i.o, align 8, !tbaa !72
  %i.bvs = load ptr, ptr %i.o, align 8, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.o, align 8, !tbaa !72
  store <2 x ptr> %i.bvr, ptr %i.bvp, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E9_M_invokeERKSt9_Any_dataOS4_OS9_, ptr %i.p, align 16, !tbaa !72
  %.not.i.i475 = icmp eq ptr %i.bvs, null
  br i1 %.not.i.i475, label %_ZNSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEaSIRSA_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSB_E4typeEOSF_.exit477, label %bb.zp
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal18RegisterVectorHashEPNS0_16FunctionRegistryE:bb.a
  %i.ccf = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.ccg = getelementptr inbounds nuw i8, ptr %42, i64 8
  store i64 0, ptr %i.ccg, align 8
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_118DictEncodeFinalizeEPNS0_13KernelContextEPSt6vectorINS_5DatumESaIS6_EE, ptr %42, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i542)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i542, ptr noundef nonnull align 8 dereferenceable(32) %42, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i542, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i542)
  %i.cch = load <2 x ptr>, ptr %i.o, align 8, !tbaa !72
  %i.cci = load ptr, ptr %i.o, align 8, !tbaa !72 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.o, align 8, !tbaa !72
  store <2 x ptr> %i.cch, ptr %i.ccf, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEPSA_E9_M_invokeERKSt9_Any_dataOS4_OS9_, ptr %i.p, align 16, !tbaa !72
  %.not.i.i543 = icmp eq ptr %i.cci, null
  br i1 %.not.i.i543, label %bb.ace, label %bb.acb
end_hunk_7
begin_hunk_8_@_ZN5arrow14PrimitiveTypesEv
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function.22", align 8  ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute10OutputTypeC2ERKS1_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i, label %bb.i
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute10OutputTypeC2ERKS1_:bb.a
bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i5, label %.body, label %bb.l

end_hunk_10
begin_hunk_11_@_ZN5arrow7compute10OutputTypeC2ERKS1_:bb.a

_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i: ; preds = %bb.j, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.an = phi <2 x ptr> [ splat (ptr null), %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit ], [ %i.ah, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !115
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !72
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !72 ; 2 uses
  store <2 x ptr> %i.ap, ptr %i.ac, align 8, !tbaa !72
  store <2 x ptr> %i.an, ptr %i.ao, align 8, !tbaa !72
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.p, label %bb.n
end_hunk_11
