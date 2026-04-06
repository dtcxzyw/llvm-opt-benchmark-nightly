begin_hunk_0_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA5APPLE11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_0E9_M_invokeERKSt9_Any_dataS2_":bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11
  br label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA5APPLE11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_0JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRN16OpenColorIO_v2_510OpRcPtrVecEEZNS0_6CAMERA5APPLE11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_0E9_M_invokeERKSt9_Any_dataS2_":bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %"_ZSt10__invoke_rIvRZN16OpenColorIO_v2_56CAMERA5APPLE11RegisterAllERNS0_28BuiltinTransformRegistryImplEE3$_0JRNS0_10OpRcPtrVecEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", !prof !27

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11
end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

end_hunk_2
begin_hunk_3_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_512MatrixOpData11MatrixArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !27

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11
end_hunk_3
begin_hunk_4_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

end_hunk_4
begin_hunk_5_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_5
begin_hunk_6_@exp2
!23 = !{!22, !4, i64 12}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !6, i64 0}
!26 = !{!5, !5, i64 0}
!27 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_6
