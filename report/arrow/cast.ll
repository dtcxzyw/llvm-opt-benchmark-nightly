begin_hunk_0
; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE, ptr %4, align 16, !tbaa !106
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %4, align 16, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !107
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %i.a, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !106
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.d, align 8, !tbaa !106
  store <2 x ptr> %i.f, ptr %i.b, align 16, !tbaa !106
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_, ptr %i.e, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit, label %bb.b
end_hunk_1
begin_hunk_2
_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i, label %bb.g
end_hunk_2
begin_hunk_3
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute10OutputTypeC2EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.48", align 16 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !108  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i, label %bb.h
end_hunk_4
begin_hunk_5

bb.i:                                             ; preds = %bb.h
  %i.ab = load <2 x ptr>, ptr %i.x, align 8, !tbaa !106
  %.sroa.0.0.copyload.i.i.pre.i = load <2 x i64>, ptr %2, align 16, !tbaa !40
  br label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.w, align 16, !tbaa !108 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %.body, label %bb.k

end_hunk_5
begin_hunk_6
  unreachable

_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i: ; preds = %bb.i, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit
  %.sroa.0.0.copyload.i.i.i = phi <2 x i64> [ zeroinitializer, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit ], [ %.sroa.0.0.copyload.i.i.pre.i, %bb.i ]
  %3 = phi <2 x ptr> [ zeroinitializer, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit ], [ %i.ab, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !107
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %i.b, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !106
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !106 ; 2 uses
  store <2 x ptr> %i.ai, ptr %i.w, align 16, !tbaa !106
  store <2 x ptr> %3, ptr %i.ah, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.o, label %bb.m
end_hunk_6
