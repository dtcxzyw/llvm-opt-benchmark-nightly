Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Displays?download=true
inline.NumInlined: 967
inline.NumDeleted: 447
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_18E9_M_invokeERKSt9_Any_dataS2_":bb.a

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i.i.i.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #19
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i.i.i.i:          ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_18JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_18E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_18E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_18E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_18E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_18E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS_28BuiltinTransformRegistryImplEE4$_18", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !18
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_18E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_18E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_18E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_19E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS1_10OpRcPtrVecEE3$_0E9_M_invokeERKSt9_Any_dataOd", ptr %i.b, align 8, !tbaa !14
  store ptr @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateHLGToLinearOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.a, align 8, !tbaa !15
  invoke void @_ZN16OpenColorIO_v2_513CreateHalfLutERNS_10OpRcPtrVecESt8functionIFfdEE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_19JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_19JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit" unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i2.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i2.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit3.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i.i.i.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #19
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i.i.i.i:          ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_19JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_19E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_19E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_19E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_19E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_19E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS_28BuiltinTransformRegistryImplEE4$_19", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !18
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_19E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_19E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_19E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_20E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E9_M_invokeERKSt9_Any_dataOd", ptr %i.b, align 8, !tbaa !14
  store ptr @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.a, align 8, !tbaa !15
  invoke void @_ZN16OpenColorIO_v2_513CreateHalfLutERNS_10OpRcPtrVecESt8functionIFfdEE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_20JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_20JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit" unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i2.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i2.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit3.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i.i.i.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #19
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i.i.i.i:          ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_20JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_20E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_20E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_20E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_20E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_20E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS_28BuiltinTransformRegistryImplEE4$_20", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !18
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_20E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_20E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_20E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 10 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = alloca [4 x double], align 16            ; 6 uses
  %4 = alloca %"class.std::vector.71", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN16OpenColorIO_v2_536build_conversion_matrix_from_XYZ_D65ERKNS_9PrimariesENS_16AdaptationMethodE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) @_ZN16OpenColorIO_v2_57REC20209primariesE, i32 noundef 0)
  invoke void @_ZN16OpenColorIO_v2_514CreateMatrixOpERNS_10OpRcPtrVecERSt10shared_ptrINS_12MatrixOpData11MatrixArrayEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN16OpenColorIO_v2_513CreateScaleOpERNS_10OpRcPtrVecEPKdNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull @"_ZZZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS_28BuiltinTransformRegistryImplEENK4$_21clERNS_10OpRcPtrVecEE6scale4", i32 noundef 0)
          to label %bb.c unwind label %bb.v

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store <2 x double> splat (double f0x3F6E9D761DF2020C), ptr %i.a, align 16, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> <double f0x3F6E9D761DF2020C, double 1.000000e+00>, ptr %i.b, align 16, !tbaa !17
  invoke void @_ZN16OpenColorIO_v2_513CreateScaleOpERNS_10OpRcPtrVecEPKdNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %i.a, i32 noundef 0)
          to label %bb.d unwind label %bb.w

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.c = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.f:                                             ; preds = %bb.d
  store ptr %i.c, ptr %4, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !26
  store double f0x3FEAAAAAAAAAAAAB, ptr %i.c, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.e, ptr %i.g, align 8, !tbaa !27
  invoke void @_ZN16OpenColorIO_v2_521CreateFixedFunctionOpERNS_10OpRcPtrVecENS_19FixedFunctionOpData5StyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef 12, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.x

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr %4, align 8, !tbaa !25     ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.l) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i:              ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E9_M_invokeERKSt9_Any_dataOd", ptr %i.n, align 8, !tbaa !14
  store ptr @"_ZNSt17_Function_handlerIFfdEZN16OpenColorIO_v2_57DISPLAY3HLG22GenerateLinearToHLGOpsERNS1_10OpRcPtrVecEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.m, align 8, !tbaa !15
  invoke void @_ZN16OpenColorIO_v2_513CreateHalfLutERNS_10OpRcPtrVecESt8functionIFfdEE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 %2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.o unwind label %bb.k       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #19
  unreachable

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %.not.i2.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i2.i.i.i.i, label %.body19.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %.body19.i.i.i unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #19
  unreachable

bb.o:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35   ; 8 uses
  %.not.i.i21.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i21.i.i.i, label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.z, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !30
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #20, !inline_history !84
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #20, !inline_history !84
  br label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

bb.r:                                             ; preds = %bb.p
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i22.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i22.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.s ], [ %i.am, %bb.t ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.u, label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit", !prof !40

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #20
  br label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit"

bb.v:                                             ; preds = %bb.b, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body19.i.i.i

bb.w:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.body19.i.i.i

bb.x:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i23.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i23.i.i.i, label %.body.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #22
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.y, %bb.x, %bb.e
  %.pn.i.i.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.aq, %bb.y ], [ %i.aq, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body19.i.i.i

.body19.i.i.i:                                    ; preds = %.body.i.i.i, %bb.w, %bb.v, %bb.m, %bb.l
  %.pn15.pn.i.i.i = phi { ptr, i32 } [ %i.ap, %bb.w ], [ %.pn.i.i.i, %.body.i.i.i ], [ %i.ao, %bb.v ], [ %i.s, %bb.m ], [ %i.s, %bb.l ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn15.pn.i.i.i

"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES9_E4typeEOSA_DpOSB_.exit": ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_7DISPLAY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS_28BuiltinTransformRegistryImplEE4$_21", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !18
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_57DISPLAY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE4$_21E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

declare void @_ZN16OpenColorIO_v2_521CreateFixedFunctionOpERNS_10OpRcPtrVecENS_19FixedFunctionOpData5StyleERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(144), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{null, null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"_ZTSSt14_Function_base", !7, i64 0, !11, i64 16}
!13 = !{!"_ZTSSt8functionIFfdEE", !12, i64 0, !11, i64 24}
!14 = !{!13, !11, i64 24}
!15 = !{!12, !11, i64 16}
!16 = !{!"double", !7, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!"p1 _ZTSSt9type_info", !11, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"_ZTSN16OpenColorIO_v2_511GammaOpData5StyleE", !7, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 double", !11, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!24, !23, i64 0}
!26 = !{!24, !23, i64 16}
!27 = !{!24, !23, i64 8}
!28 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!29 = !{!28, !8, i64 8}
!30 = !{!28, !8, i64 12}
!31 = !{!"vtable pointer", !6, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!34 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{!"p1 _ZTSN16OpenColorIO_v2_511GammaOpDataE", !11, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!7, !7, i64 0}
!39 = !{!8, !8, i64 0}
!40 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!41 = !{!"_ZTSSt8functionIFvRN16OpenColorIO_v2_510OpRcPtrVecEEE", !12, i64 0, !11, i64 24}
!42 = !{!41, !11, i64 24}
!43 = distinct !{!43, i1 true, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!44 = distinct !{!44, !43, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!45 = !{!44}
!46 = distinct !{null}
!47 = !{!"p1 omnipotent char", !11, i64 0}
!48 = !{!"_ZTSSt9type_info", !47, i64 8}
!49 = !{!48, !47, i64 8}
!50 = distinct !{null}
!51 = distinct !{!51, i1 true, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!52 = distinct !{!52, !51, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!53 = !{!52}
!54 = distinct !{!54, i1 true, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!55 = distinct !{!55, !54, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!56 = !{!55}
!57 = distinct !{!57, i1 true, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!58 = distinct !{!58, !57, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!59 = !{!58}
!60 = distinct !{!60, i1 true, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!61 = distinct !{!61, !60, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!62 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!63 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!64 = !{!61}
!65 = distinct !{!65, i1 true, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!66 = distinct !{!66, !65, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJRNS1_5StyleERKSt6vectorIdSaIdEES8_S8_S8_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!67 = !{!66}
!68 = distinct !{!68, i1 true, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!69 = distinct !{!69, !68, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!70 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!71 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!72 = !{!69}
!73 = distinct !{!73, i1 true, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!74 = distinct !{!74, !73, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!75 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!76 = !{!74}
!77 = distinct !{!77, i1 true, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!78 = distinct !{!78, !77, !"_ZSt11make_sharedIN16OpenColorIO_v2_511GammaOpDataEJNS1_5StyleERKSt6vectorIdSaIdEES7_S7_S7_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!79 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511GammaOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!80 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!81 = !{!78}
!82 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!83 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!84 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
end_hunk_0
