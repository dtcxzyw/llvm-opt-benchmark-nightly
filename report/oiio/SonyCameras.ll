begin_hunk_0_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_0E9_M_invokeERKSt9_Any_dataS2_":bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_0E9_M_invokeERKSt9_Any_dataS2_":bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.h ], [ %i.p, %bb.i ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.j, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !25

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_0E9_M_invokeERKSt9_Any_dataS2_":bb.a
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17
  br label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_0JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.m:                                             ; preds = %bb.k
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i8.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i8.i.i.i, label %bb.o, label %bb.n

end_hunk_2
begin_hunk_3_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_0E9_M_invokeERKSt9_Any_dataS2_":bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i10.i.i.i = phi i32 [ %i.w, %bb.n ], [ %i.ag, %bb.o ]
  %i.ah = icmp eq i32 %.0.i.i.i.i10.i.i.i, 1
  br i1 %i.ah, label %bb.p, label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_0JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", !prof !25

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17
end_hunk_3
begin_hunk_4_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation":bb.a

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS_28BuiltinTransformRegistryImplEE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !26
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split", %bb.a
end_hunk_4
begin_hunk_5_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

end_hunk_5
begin_hunk_6_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !25

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
end_hunk_6
begin_hunk_7_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

end_hunk_7
begin_hunk_8_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_59LogOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !25

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
end_hunk_8
begin_hunk_9_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

end_hunk_9
begin_hunk_10_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_10
begin_hunk_11_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1E9_M_invokeERKSt9_Any_dataS2_":bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

end_hunk_11
begin_hunk_12_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1E9_M_invokeERKSt9_Any_dataS2_":bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.h ], [ %i.p, %bb.i ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.j, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !25

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
end_hunk_12
begin_hunk_13_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1E9_M_invokeERKSt9_Any_dataS2_":bb.a
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17
  br label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.m:                                             ; preds = %bb.k
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i8.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i8.i.i.i, label %bb.o, label %bb.n

end_hunk_13
begin_hunk_14_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1E9_M_invokeERKSt9_Any_dataS2_":bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i10.i.i.i = phi i32 [ %i.w, %bb.n ], [ %i.ag, %bb.o ]
  %i.ah = icmp eq i32 %.0.i.i.i.i10.i.i.i, 1
  br i1 %i.ah, label %bb.p, label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", !prof !25

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #17
end_hunk_14
begin_hunk_15_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_1E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation":bb.a

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS_28BuiltinTransformRegistryImplEE3$_1", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !26
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split", %bb.a
end_hunk_15
begin_hunk_16_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_2E9_M_invokeERKSt9_Any_dataS2_":bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_2JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.f:                                             ; preds = %bb.d
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

end_hunk_16
begin_hunk_17_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_2E9_M_invokeERKSt9_Any_dataS2_":bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.g ], [ %i.p, %bb.h ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.i, label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_2JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", !prof !25

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
end_hunk_17
begin_hunk_18_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_2E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation":bb.a

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_2E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS_28BuiltinTransformRegistryImplEE3$_2", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !26
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_2E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_2E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_2E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split", %bb.a
end_hunk_18
begin_hunk_19_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_3E9_M_invokeERKSt9_Any_dataS2_":bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_3JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.f:                                             ; preds = %bb.d
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

end_hunk_19
begin_hunk_20_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_3E9_M_invokeERKSt9_Any_dataS2_":bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.g ], [ %i.p, %bb.h ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.i, label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_3JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", !prof !25

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
end_hunk_20
begin_hunk_21_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_3E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation":bb.a

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_3E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS_28BuiltinTransformRegistryImplEE3$_3", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !26
  br label %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_3E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_3E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN16OpenColorIO_v2_56CAMERA4SONY11RegisterAllERNS1_28BuiltinTransformRegistryImplEE3$_3E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split", %bb.a
end_hunk_21
begin_hunk_22_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA4SONY11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_3E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation":bb.a
; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SonyCameras.cpp() #14 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store <2 x double> <double 7.300000e-01, double 2.800000e-01>, ptr @_ZN16OpenColorIO_v2_512SONY_SGAMUT3L6red_xyE, align 16, !tbaa !27
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN16OpenColorIO_v2_512SONY_SGAMUT3L6red_xyE) ; 0 uses
  store <2 x double> <double 1.400000e-01, double 0x3FEB5C28F5C28F5C>, ptr @_ZN16OpenColorIO_v2_512SONY_SGAMUT3L6grn_xyE, align 16, !tbaa !27
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN16OpenColorIO_v2_512SONY_SGAMUT3L6grn_xyE) ; 0 uses
  store <2 x double> <double 1.000000e-01, double -5.000000e-02>, ptr @_ZN16OpenColorIO_v2_512SONY_SGAMUT3L6blu_xyE, align 16, !tbaa !27
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN16OpenColorIO_v2_512SONY_SGAMUT3L6blu_xyE) ; 0 uses
  store <2 x double> <double 3.127000e-01, double 3.290000e-01>, ptr @_ZN16OpenColorIO_v2_512SONY_SGAMUT3L6wht_xyE, align 16, !tbaa !27
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN16OpenColorIO_v2_512SONY_SGAMUT3L6wht_xyE) ; 0 uses
  store <2 x double> <double 7.300000e-01, double 2.800000e-01>, ptr @_ZN16OpenColorIO_v2_512SONY_SGAMUT3L9primariesE, align 16, !tbaa !27
  store <2 x double> <double 1.400000e-01, double 0x3FEB5C28F5C28F5C>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512SONY_SGAMUT3L9primariesE, i64 16), align 16, !tbaa !27
  store <2 x double> <double 1.000000e-01, double -5.000000e-02>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512SONY_SGAMUT3L9primariesE, i64 32), align 16, !tbaa !27
  store <2 x double> <double 3.127000e-01, double 3.290000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_512SONY_SGAMUT3L9primariesE, i64 48), align 16, !tbaa !27
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZN16OpenColorIO_v2_512SONY_SGAMUT3L9primariesE) ; 0 uses
  store <2 x double> <double 7.660000e-01, double 2.750000e-01>, ptr @_ZN16OpenColorIO_v2_517SONY_SGAMUT3_CINEL6red_xyE, align 16, !tbaa !27
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN16OpenColorIO_v2_517SONY_SGAMUT3_CINEL6red_xyE) ; 0 uses
  store <2 x double> <double 2.250000e-01, double 8.000000e-01>, ptr @_ZN16OpenColorIO_v2_517SONY_SGAMUT3_CINEL6grn_xyE, align 16, !tbaa !27
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN16OpenColorIO_v2_517SONY_SGAMUT3_CINEL6grn_xyE) ; 0 uses
  store <2 x double> <double 0x3FB6C8B439581062, double 0xBFB645A1CAC08312>, ptr @_ZN16OpenColorIO_v2_517SONY_SGAMUT3_CINEL6blu_xyE, align 16, !tbaa !27
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN16OpenColorIO_v2_517SONY_SGAMUT3_CINEL6blu_xyE) ; 0 uses
  store <2 x double> <double 3.127000e-01, double 3.290000e-01>, ptr @_ZN16OpenColorIO_v2_517SONY_SGAMUT3_CINEL6wht_xyE, align 16, !tbaa !27
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN16OpenColorIO_v2_517SONY_SGAMUT3_CINEL6wht_xyE) ; 0 uses
  store <2 x double> <double 7.660000e-01, double 2.750000e-01>, ptr @_ZN16OpenColorIO_v2_517SONY_SGAMUT3_CINEL9primariesE, align 16, !tbaa !27
  store <2 x double> <double 2.250000e-01, double 8.000000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_517SONY_SGAMUT3_CINEL9primariesE, i64 16), align 16, !tbaa !27
  store <2 x double> <double 0x3FB6C8B439581062, double 0xBFB645A1CAC08312>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_517SONY_SGAMUT3_CINEL9primariesE, i64 32), align 16, !tbaa !27
  store <2 x double> <double 3.127000e-01, double 3.290000e-01>, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_517SONY_SGAMUT3_CINEL9primariesE, i64 48), align 16, !tbaa !27
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 64, ptr nonnull @_ZN16OpenColorIO_v2_517SONY_SGAMUT3_CINEL9primariesE) ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_520SONY_SLOG3_to_LINEARL6paramsE, i8 0, i64 24, i1 false)
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 3 uses
end_hunk_22
begin_hunk_23_@_GLOBAL__sub_I_SonyCameras.cpp:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_520SONY_SLOG3_to_LINEARL6paramsE, i64 16), align 8, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) @constinit, i64 48, i1 false)
  store ptr %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_520SONY_SLOG3_to_LINEARL6paramsE, i64 8), align 8, !tbaa !29
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIdSaIdEED2Ev, ptr nonnull @_ZN16OpenColorIO_v2_520SONY_SLOG3_to_LINEARL6paramsE, ptr nonnull @__dso_handle) #17 ; 0 uses
  tail call void @_ZN16OpenColorIO_v2_59LogOpDataC1EdRKSt6vectorIdSaIdEES5_S5_NS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(252) @_ZN16OpenColorIO_v2_520SONY_SLOG3_to_LINEARL3logE, double noundef 1.000000e+01, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_520SONY_SLOG3_to_LINEARL6paramsE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_520SONY_SLOG3_to_LINEARL6paramsE, ptr noundef nonnull align 8 dereferenceable(24) @_ZN16OpenColorIO_v2_520SONY_SLOG3_to_LINEARL6paramsE, i32 noundef 1)
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16OpenColorIO_v2_59LogOpDataD1Ev, ptr nonnull @_ZN16OpenColorIO_v2_520SONY_SLOG3_to_LINEARL3logE, ptr nonnull @__dso_handle) #17 ; 0 uses
end_hunk_23
begin_hunk_24_@_GLOBAL__sub_I_SonyCameras.cpp:bb.a
!21 = !{!20, !4, i64 12}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !6, i64 0}
!24 = !{!5, !5, i64 0}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!10, !10, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"double", !5, i64 0}
!29 = !{!8, !9, i64 8}
end_hunk_24
