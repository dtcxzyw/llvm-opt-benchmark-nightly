Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_foreign?download=true
inline.NumInlined: 60
inline.NumDeleted: 39
begin_hunk_0_@_ZNKR8nanobind6handle7dec_refEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZL10Py_XDECREFP7_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = and i64 %i.b, 2147483648
  %.not2.i = icmp eq i64 %i.c, 0
  br i1 %.not2.i, label %bb.c, label %_ZL10Py_XDECREFP7_object.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !11
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZL10Py_XDECREFP7_object.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.a) #12
          to label %_ZL10Py_XDECREFP7_object.exit unwind label %bb.e

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  ret ptr %0

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #13
  unreachable
}

; Function Attrs: optsize
declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_I7ForeignJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS6_EEiE_vJSF_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSL_jPNS0_12cleanup_listEE_8__invokeESZ_S10_jS12_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #7 comdat align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = and i32 %2, -2
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_18pointer_and_handleI7ForeignEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr %i.c, i32 noundef %i.d, ptr noundef %3) #14
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_I7ForeignJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS6_EEiE_vJSF_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = and i32 %2, -35
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !10
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  br i1 %i.j, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_I7ForeignJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS6_EEiE_vJSF_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  %i.k = load i32, ptr %4, align 8, !tbaa !14
  store i32 %i.k, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !50
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_I7ForeignJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS6_EEiE_vJSF_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJiEE7executeINS_6class_I7ForeignJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS6_EEiE_vJSF_iEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_18pointer_and_handleI7ForeignEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::type_caster.9", align 8 ; 4 uses
  %i.a = and i32 %2, 32
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = ptrtoint ptr %1 to i64
  store i64 %i.c, ptr %i.b, align 8
  %i.d = tail call noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %1) #14
  store ptr %i.d, ptr %0, align 8, !tbaa !53
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.e = and i32 %2, 16
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = and i32 %2, -34
  %spec.select.i = select i1 %.not.i, i32 %2, i32 %i.f
  %i.g = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !10
  %i.h = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.g, ptr noundef nonnull @_ZTI7Foreign, ptr noundef %1, i32 noundef %spec.select.i, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #14 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = ptrtoint ptr %1 to i64
  store i64 %i.j, ptr %i.i, align 8
  %i.k = load ptr, ptr %4, align 8, !tbaa !20
  store ptr %i.k, ptr %0, align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i1 [ true, %bb.b ], [ %i.h, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN8nanobind6detail16property_installEPNS0_12nb_internalsEP7_objectPKcS4_S4_b(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_I7ForeignJEE6def_rwIS3_iJEEERS4_PKcMT_T0_DpRKT1_EUlRKS3_E_RKiJSH_EJLm0EEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSN_5valueE6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSS_jPNS0_12cleanup_listEE_8__invokeES16_S17_jS19_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.17", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !10
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTI7Foreign, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_I7ForeignJEE6def_rwIS3_iJEEERS4_PKcMT_T0_DpRKT1_EUlRKS3_E_RKiJSH_EJLm0EEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSN_5valueE6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !20
  %i.f = load i64, ptr %0, align 8, !tbaa !55
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14
  %i.i = sext i32 %i.h to i64
  %i.j = invoke ptr @PyLong_FromLong(i64 noundef %i.i) #12
          to label %_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_I7ForeignJEE6def_rwIS3_iJEEERS4_PKcMT_T0_DpRKT1_EUlRKS3_E_RKiJSH_EJLm0EEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSN_5valueE6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #13
  unreachable

_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_I7ForeignJEE6def_rwIS3_iJEEERS4_PKcMT_T0_DpRKT1_EUlRKS3_E_RKiJSH_EJLm0EEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNSN_5valueE6EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES16_S17_jS19_.exit: ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret ptr %.0.i
}

; Function Attrs: optsize
declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_I7ForeignJEE6def_rwIS3_iJEEERS4_PKcMT_T0_DpRKT1_EUlRS3_OiE_vJSG_SH_EJLm0ELm1EEJNS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSL_jPNS0_12cleanup_listEE_8__invokeESZ_S10_jS12_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #7 comdat align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.22", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !17
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !10
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTI7Foreign, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #14
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_I7ForeignJEE6def_rwIS3_iJEEERS4_PKcMT_T0_DpRKT1_EUlRS3_OiE_vJSG_SH_EJLm0ELm1EEJNS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = and i32 %2, -35
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !10
  %i.j = call noundef zeroext i1 @_ZN8nanobind6detail8load_i32EPNS0_12nb_internalsEP7_objectjPi(ptr noundef %i.i, ptr noundef %i.g, i32 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  br i1 %i.j, label %bb.c, label %_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_I7ForeignJEE6def_rwIS3_iJEEERS4_PKcMT_T0_DpRKT1_EUlRS3_OiE_vJSG_SH_EJLm0ELm1EEJNS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.l = load i32, ptr %4, align 8, !tbaa !14
  %i.m = load i64, ptr %0, align 8, !tbaa !57
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  store i32 %i.l, ptr %i.n, align 4, !tbaa !14
  br label %_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_I7ForeignJEE6def_rwIS3_iJEEERS4_PKcMT_T0_DpRKT1_EUlRS3_OiE_vJSG_SH_EJLm0ELm1EEJNS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit

_ZZN8nanobind6detail11func_createILb1ELb1EZNS_6class_I7ForeignJEE6def_rwIS3_iJEEERS4_PKcMT_T0_DpRKT1_EUlRS3_OiE_vJSG_SH_EJLm0ELm1EEJNS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL4execP7_objectE3$_0NS_3strEJRK7ForeignEJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEES3_OT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS3_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::str", align 8     ; 7 uses
  %5 = alloca %"struct.nanobind::detail::tuple.17", align 8 ; 4 uses
  %6 = alloca %"class.nanobind::str", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !10
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTI7Foreign, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  br i1 %i.d, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL4execP7_objectE3$_0NS_3strEJRK7ForeignEJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEES3_OT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS3_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.e = load ptr, ptr %5, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !60
  call void @_ZN8nanobind3strC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.7) #12, !noalias !60
  invoke void @_ZNK8nanobind3str6formatIJRKiEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::str") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.e) #12
          to label %"_ZZL4execP7_objectENK3$_0clERK7Foreign.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !60
  resume { ptr, i32 } %i.f

"_ZZL4execP7_objectENK3$_0clERK7Foreign.exit":    ; preds = %bb.b
  %i.h = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !60
  %i.i = load ptr, ptr %6, align 8, !tbaa !16
  store ptr null, ptr %6, align 8, !tbaa !16
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL4execP7_objectE3$_0NS_3strEJRK7ForeignEJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEES3_OT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS3_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL4execP7_objectE3$_0NS_3strEJRK7ForeignEJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEES3_OT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS3_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit": ; preds = %bb.a, %"_ZZL4execP7_objectENK3$_0clERK7Foreign.exit"
  %.0.i = phi ptr [ %i.i, %"_ZZL4execP7_objectENK3$_0clERK7Foreign.exit" ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind3strC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @PyUnicode_FromString(ptr noundef %1) #12 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZN8nanobind6detail5raiseEPKcz(ptr noundef nonnull @.str.8) #16
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #14 ; 0 uses
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZNK8nanobind3str6formatIJRKiEEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.nanobind::str") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.nanobind::object", align 8  ; 7 uses
  %4 = alloca %"class.nanobind::detail::accessor", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !noalias !63
  store ptr %.sroa.0.0.copyload.i, ptr %4, align 8, !tbaa !24, !alias.scope !63
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !25, !alias.scope !63
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.9, ptr %i.b, align 8, !tbaa !26, !alias.scope !63
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 7, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !27, !alias.scope !63
  invoke void @_ZNK8nanobind6detail3apiINS0_8accessorINS0_8str_attrEEEEclILNS_9rv_policy5valueE1EJRKiEEENS_6objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::object") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 4 dereferenceable(4) %2) #12
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !16
  store ptr null, ptr %3, align 8, !tbaa !16
  store ptr %i.c, ptr %0, align 8
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #14 ; 0 uses
  call void @_ZN8nanobind6detail8accessorINS0_8str_attrEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nanobind6detail8accessorINS0_8str_attrEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.d
}

; Function Attrs: optsize
declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail5raiseEPKcz(ptr noundef %0, ...) local_unnamed_addr #8 comdat {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @_ZN8nanobind6detail7raise_vENS_14exception_typeEPKcP13__va_list_tag(i32 noundef 0, ptr noundef %0, ptr noundef nonnull %1) #12
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: optsize
declare void @_ZN8nanobind6detail7raise_vENS_14exception_typeEPKcP13__va_list_tag(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZNK8nanobind6detail3apiINS0_8accessorINS0_8str_attrEEEEclILNS_9rv_policy5valueE1EJRKiEEENS_6objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.nanobind::object") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [3 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !27
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !10
  %i.e = call noundef ptr @_ZN8nanobind6detail13cached_stringEPNS0_12nb_internalsEPKcmPb(ptr noundef %i.d, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #14
  %i.f = load i8, ptr %i.a, align 1, !tbaa !65, !range !66, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 16, !tbaa !17
  %i.g = load ptr, ptr %1, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !17
  %i.i = load i32, ptr %2, align 4, !tbaa !14
  %i.j = sext i32 %i.i to i64
  %i.k = invoke ptr @PyLong_FromLong(i64 noundef %i.j) #12
          to label %_ZN8nanobind6detail14call_arg_valueILNS_9rv_policy5valueE1ERKiEEP7_objectOT0_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #13
  unreachable

_ZN8nanobind6detail14call_arg_valueILNS_9rv_policy5valueE1ERKiEEP7_objectOT0_.exit: ; preds = %bb.a
  %i.n = shl nuw nsw i8 %i.f, 1
  %i.o = or disjoint i8 %i.n, 1
  %i.p = zext nneg i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %i.q, align 16, !tbaa !17
  %i.r = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !10
  %i.s = call noundef ptr @_ZN8nanobind6detail14obj_vectorcallEPNS0_12nb_internalsEP7_objectPKS4_mmj(ptr noundef %i.r, ptr noundef %i.e, ptr noundef nonnull %i.h, i64 noundef -9223372036854775806, i64 noundef 2, i32 noundef %i.p) #12
  store ptr %i.s, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail8accessorINS0_8str_attrEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZL10Py_XDECREFP7_object.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = and i64 %i.c, 2147483648
  %.not2.i = icmp eq i64 %i.d, 0
  br i1 %.not2.i, label %bb.c, label %_ZL10Py_XDECREFP7_object.exit

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %i.c, -1                     ; 2 uses
  store i64 %i.e, ptr %i.b, align 8, !tbaa !11
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZL10Py_XDECREFP7_object.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.b) #12
          to label %_ZL10Py_XDECREFP7_object.exit unwind label %bb.e

_ZL10Py_XDECREFP7_object.exit:                    ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  ret void

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #13
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN8nanobind6detail14obj_vectorcallEPNS0_12nb_internalsEP7_objectPKS4_mmj(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail13cached_stringEPNS0_12nb_internalsEPKcmPb(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL4execP7_objectE3$_1iJ7ForeignEJLm0EEJNS_5scopeENS_4nameEEEES3_OT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS3_jPNS0_12cleanup_listEE_8__invokeESL_SM_jSO_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.17", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = or i32 %2, 8
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !10
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTI7Foreign, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  br i1 %i.d, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL4execP7_objectE3$_1iJ7ForeignEJLm0EEJNS_5scopeENS_4nameEEEES3_OT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS3_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !20
  %.sroa.0.0.copyload.i = load i32, ptr %i.e, align 4, !tbaa !14
  %i.f = sext i32 %.sroa.0.0.copyload.i to i64
  %i.g = invoke ptr @PyLong_FromLong(i64 noundef %i.f) #12
          to label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL4execP7_objectE3$_1iJ7ForeignEJLm0EEJNS_5scopeENS_4nameEEEES3_OT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS3_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #13
  unreachable

"_ZZN8nanobind6detail11func_createILb0ELb1EZL4execP7_objectE3$_1iJ7ForeignEJLm0EEJNS_5scopeENS_4nameEEEES3_OT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS3_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit": ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret ptr %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { inlinehint mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { optsize }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { noreturn optsize }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTSN8nanobind6detail12nb_internalsE", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!4, !4, i64 0}
!12 = !{!"p1 omnipotent char", !8, i64 0}
!13 = !{!"p1 _ZTS7_object", !8, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!"_ZTSN8nanobind6handleE", !13, i64 0}
!16 = !{!15, !13, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!"p1 _ZTS7Foreign", !8, i64 0}
!19 = !{!"_ZTSN8nanobind6detail16type_caster_baseI7ForeignEE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"long", !4, i64 0}
!22 = !{!"_ZTSN8nanobind6detail7str_keyE", !12, i64 0, !21, i64 8}
!23 = !{!"_ZTSN8nanobind6detail8accessorINS0_8str_attrEEE", !13, i64 0, !13, i64 8, !22, i64 16}
!24 = !{!23, !13, i64 0}
!25 = !{!23, !13, i64 8}
end_hunk_0
