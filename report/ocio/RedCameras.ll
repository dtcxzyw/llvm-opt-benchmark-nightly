Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/RedCameras?download=true
inline.NumInlined: 128
inline.NumDeleted: 85
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA3RED11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %3 = alloca %"class.std::shared_ptr.25", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZNK16OpenColorIO_v2_59LogOpData5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(252) @_ZN16OpenColorIO_v2_525RED_LOG3G10_RWG_to_LINEARL3logE)
  invoke void @_ZN16OpenColorIO_v2_511CreateLogOpERNS_10OpRcPtrVecERSt10shared_ptrINS_9LogOpDataEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  invoke void @_ZN16OpenColorIO_v2_523build_conversion_matrixERKNS_9PrimariesES2_NS_16AdaptationMethodE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.25") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL9primariesE, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_58ACES_AP09primariesE, i32 noundef 1)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN16OpenColorIO_v2_514CreateMatrixOpERNS_10OpRcPtrVecERSt10shared_ptrINS_12MatrixOpData11MatrixArrayEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.c, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !22
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !33
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !inline_history !33
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.h ], [ %i.p, %bb.i ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.j, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !28

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 8 uses
  %.not.i.i7.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i7.i.i.i, label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.t, align 8, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !22
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16, !inline_history !34
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16, !inline_history !34
  br label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.m:                                             ; preds = %bb.k
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i8.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i8.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i10.i.i.i = phi i32 [ %i.w, %bb.n ], [ %i.ag, %bb.o ]
  %i.ah = icmp eq i32 %.0.i.i.i.i10.i.i.i, 1
  br i1 %i.ah, label %bb.p, label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", !prof !28

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #16
  br label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.q:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %i.aj, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.t ], [ %i.ai, %bb.q ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn.pn.i.i.i

"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA3RED11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS_28BuiltinTransformRegistryImplEE3$_1", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !30
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA3RED11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_RedCameras.cpp() #13 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store <2 x double> <double 7.803080e-01, double 3.042530e-01>, ptr @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL6red_xyE, align 16, !tbaa !35
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL6red_xyE) ; 0 uses
  store <2 x double> <double 1.215950e-01, double f0x3FF7E76640A6B93D>, ptr @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL6grn_xyE, align 16, !tbaa !35
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL6grn_xyE) ; 0 uses
  store <2 x double> <double 9.561200e-02, double f0xBFB5A79FEC99F1AE>, ptr @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL6blu_xyE, align 16, !tbaa !35
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL6blu_xyE) ; 0 uses
  store <2 x double> <double 3.127000e-01, double 3.290000e-01>, ptr @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL6wht_xyE, align 16, !tbaa !35
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL6wht_xyE) ; 0 uses
  store <2 x double> <double 7.803080e-01, double 3.042530e-01>, ptr @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL9primariesE, align 16, !tbaa !35
  store <2 x double> <double 1.215950e-01, double f0x3FF7E76640A6B93D>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL9primariesE, i64 16), align 16, !tbaa !35
  store <2 x double> <double 9.561200e-02, double f0xBFB5A79FEC99F1AE>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL9primariesE, i64 32), align 16, !tbaa !35
  store <2 x double> <double 3.127000e-01, double 3.290000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL9primariesE, i64 48), align 16, !tbaa !35
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZN16OpenColorIO_v2_518RED_WIDE_GAMUT_RGBL9primariesE) ; 0 uses
  store double f0x3FF02CB5DA4944C2, ptr @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL4gainE, align 8, !tbaa !35
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL4gainE) ; 0 uses
  store double f0x3F865AED24A26100, ptr @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL6offsetE, align 8, !tbaa !35
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL6offsetE) ; 0 uses
  store double f0x3FEFA78B793D0BD5, ptr @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL12linSideSlopeE, align 8, !tbaa !35
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL12linSideSlopeE) ; 0 uses
  store double f0x3F861D21B0BD0ACE, ptr @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL13linSideOffsetE, align 8, !tbaa !35
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL13linSideOffsetE) ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL6paramsE, i8 0, i64 24, i1 false)
  %i.j = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #17
          to label %__cxx_global_var_init.6.exit unwind label %bb.b ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL6paramsE, align 8, !tbaa !8 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i4.i.i, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.c, %bb.b
  %.sink8.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL6paramsE, i64 16), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_525RED_LOG3G10_RWG_to_LINEARL6paramsE, i64 16), %bb.c ]
  %.sink7 = phi ptr [ %i.l, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %common.resume.op.ph = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.t, %bb.c ]
  %.sink8 = load ptr, ptr %.sink8.in, align 8, !tbaa !12
  %i.m = ptrtoint ptr %.sink8 to i64
  %i.n = ptrtoint ptr %.sink7 to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink7, i64 noundef %i.o) #14
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.c, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.t, %bb.c ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.6.exit:                     ; preds = %bb.a
  store ptr %i.j, ptr @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL6paramsE, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL6paramsE, i64 16), align 8, !tbaa !12
  store <2 x double> <double f0x3FD2C4B12C4B12C4, double f0x3FE56D5B56D5B56D>, ptr %i.j, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <2 x double> <double f0x3FEFA78B793D0BD5, double f0x3F861D21B0BD0ACE>, ptr %.sroa.6.0..sroa_idx.i, align 8
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL6paramsE, i64 8), align 8, !tbaa !37
  %i.q = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIdSaIdEED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL6paramsE, ptr nonnull @__dso_handle) #16 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_59LogOpDataC1EdRKSt6vectorIdSaIdEES5_S5_NS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(252) @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL3logE, double noundef 1.000000e+01, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL6paramsE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL6paramsE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL6paramsE, i32 noundef 1)
  %i.r = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_59LogOpDataD1Ev, ptr nonnull @_ZN16OpenColorIO_v2_528RED_REDLOGFILM_RWG_to_LINEARL3logE, ptr nonnull @__dso_handle) #16 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_525RED_LOG3G10_RWG_to_LINEARL6paramsE, i8 0, i64 24, i1 false)
  %i.s = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #17
          to label %__cxx_global_var_init.8.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %__cxx_global_var_init.6.exit
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr @_ZN16OpenColorIO_v2_525RED_LOG3G10_RWG_to_LINEARL6paramsE, align 8, !tbaa !8 ; 2 uses
  %.not.i.i4.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i4.i.i1, label %common.resume, label %common.resume.sink.split

__cxx_global_var_init.8.exit:                     ; preds = %__cxx_global_var_init.6.exit
  store ptr %i.s, ptr @_ZN16OpenColorIO_v2_525RED_LOG3G10_RWG_to_LINEARL6paramsE, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_525RED_LOG3G10_RWG_to_LINEARL6paramsE, i64 16), align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) @constinit, i64 40, i1 false)
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_525RED_LOG3G10_RWG_to_LINEARL6paramsE, i64 8), align 8, !tbaa !37
  %i.w = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIdSaIdEED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_525RED_LOG3G10_RWG_to_LINEARL6paramsE, ptr nonnull @__dso_handle) #16 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_59LogOpDataC1EdRKSt6vectorIdSaIdEES5_S5_NS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(252) @_ZN16OpenColorIO_v2_525RED_LOG3G10_RWG_to_LINEARL3logE, double noundef 1.000000e+01, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_525RED_LOG3G10_RWG_to_LINEARL6paramsE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_525RED_LOG3G10_RWG_to_LINEARL6paramsE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_525RED_LOG3G10_RWG_to_LINEARL6paramsE, i32 noundef 1)
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_59LogOpDataD1Ev, ptr nonnull @_ZN16OpenColorIO_v2_525RED_LOG3G10_RWG_to_LINEARL3logE, ptr nonnull @__dso_handle) #16 ; 0 uses
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 double", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 16}
!13 = !{!14, !11, i64 24}
!14 = !{!"_ZTSSt8functionIFvRN16OpenColorIO_v2_510OpRcPtrVecEEE", !15, i64 0, !11, i64 24}
!15 = !{!"_ZTSSt14_Function_base", !6, i64 0, !11, i64 16}
!16 = !{!15, !11, i64 16}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!19 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!20 = !{!21, !5, i64 8}
!21 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!22 = !{!21, !5, i64 12}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !7, i64 0}
!25 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!26 = !{!6, !6, i64 0}
!27 = !{!5, !5, i64 0}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!30 = !{!11, !11, i64 0}
!31 = distinct !{null, null}
!32 = distinct !{null}
!33 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!34 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!35 = !{!36, !36, i64 0}
!36 = !{!"double", !6, i64 0}
!37 = !{!9, !10, i64 8}
end_hunk_0
