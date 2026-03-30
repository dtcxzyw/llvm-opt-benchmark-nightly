begin_hunk_0
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute10OutputTypeC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i, label %bb.i
end_hunk_1
begin_hunk_2

bb.j:                                             ; preds = %bb.i
  %i.ah = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !67
  %.sroa.0.0.copyload.i.i.pre.i = load <2 x i64>, ptr %2, align 16, !tbaa !54
  br label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.ac, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i5, label %.body, label %bb.l

end_hunk_2
begin_hunk_3
  unreachable

_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i: ; preds = %bb.j, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %.sroa.0.0.copyload.i.i.i = phi <2 x i64> [ zeroinitializer, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit ], [ %.sroa.0.0.copyload.i.i.pre.i, %bb.j ]
  %3 = phi <2 x ptr> [ zeroinitializer, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit ], [ %i.ah, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !90
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %i.b, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !67
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !67 ; 2 uses
  store <2 x ptr> %i.ao, ptr %i.ac, align 16, !tbaa !67
  store <2 x ptr> %3, ptr %i.an, align 8, !tbaa !67
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.p, label %bb.n
end_hunk_3
begin_hunk_4
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute10OutputTypeC2EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 16    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
end_hunk_4
begin_hunk_5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i, label %bb.h
end_hunk_5
begin_hunk_6

bb.i:                                             ; preds = %bb.h
  %i.ab = load <2 x ptr>, ptr %i.x, align 8, !tbaa !67
  %.sroa.0.0.copyload.i.i.pre.i = load <2 x i64>, ptr %2, align 16, !tbaa !54
  br label %_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.w, align 16, !tbaa !52 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %.body, label %bb.k

end_hunk_6
begin_hunk_7
  unreachable

_ZNSt8functionIFN5arrow6ResultINS0_10TypeHolderEEEPNS0_7compute13KernelContextERKSt6vectorIS2_SaIS2_EEEEC2ERKSD_.exit.i: ; preds = %bb.i, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit
  %.sroa.0.0.copyload.i.i.i = phi <2 x i64> [ zeroinitializer, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit ], [ %.sroa.0.0.copyload.i.i.pre.i, %bb.i ]
  %3 = phi <2 x ptr> [ zeroinitializer, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit ], [ %i.ab, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !90
  store <2 x i64> %.sroa.0.0.copyload.i.i.i, ptr %i.b, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !67
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !67 ; 2 uses
  store <2 x ptr> %i.ai, ptr %i.w, align 16, !tbaa !67
  store <2 x ptr> %3, ptr %i.ah, align 8, !tbaa !67
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.o, label %bb.m
end_hunk_7
begin_hunk_8
  %5 = alloca %"class.std::vector.41", align 16   ; 7 uses
  %6 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  %7 = alloca %"class.std::shared_ptr.169", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !213
  store <2 x ptr> %i.b, ptr %5, align 16, !tbaa !213
end_hunk_8
begin_hunk_9

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 3 uses
end_hunk_9
begin_hunk_10
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2EOSF_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 8, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2EOSF_.exit

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2EOSF_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi <2 x i64> [ zeroinitializer, %bb.c ], [ %.sroa.0.0.copyload, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load <2 x ptr>, ptr %4, align 16, !tbaa !67
  store ptr null, ptr %i.j, align 8, !tbaa !46
end_hunk_10
begin_hunk_11

_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit: ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2EOSF_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %.sroa.0.0, ptr %i.l, align 8, !tbaa !54
  store ptr %i.i, ptr %i.n, align 8, !tbaa !52
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_11
