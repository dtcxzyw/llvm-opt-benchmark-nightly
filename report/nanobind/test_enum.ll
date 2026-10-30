Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_enum?download=true
inline.NumInlined: 370
inline.NumDeleted: 199
begin_hunk_0_@_ZZN8nanobind6detail11func_createILb1ELb1EZNS_12cpp_functionI12EnumProperty4EnumS3_JEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNS7_5valueE6EEEEEENS_6objectEMT1_FT0_DpT2_EDpRKT3_EUlPS3_E_S4_JSM_EJLm0EEJS5_S6_SA_EEEP7_objectOSC_PFT2_DpSI_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSP_jPNS0_12cleanup_listEE_8__invokeES11_S12_jS14_:bb.a
  %i.l = inttoptr i64 %.unpack.i to ptr
  br label %_ZZN8nanobind12cpp_functionI12EnumProperty4EnumS1_JEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNS5_5valueE6EEEEEENS_6objectEMT1_FT0_DpT2_EDpRKT3_ENKUlPS1_E_clESK_.exit

_ZZN8nanobind12cpp_functionI12EnumProperty4EnumS1_JEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNS5_5valueE6EEEEEENS_6objectEMT1_FT0_DpT2_EDpRKT3_ENKUlPS1_E_clESK_.exit: ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %i.k, %bb.c ], [ %i.l, %bb.d ]
  %i.n = call noundef i32 %i.m(ptr noundef nonnull align 1 dereferenceable(1) %i.f) #18, !inline_history !109
  %i.o = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !12
  %i.p = zext i32 %i.n to i64
  %i.q = call noundef ptr @_ZN8nanobind6detail13enum_from_cppEPNS0_12nb_internalsEPKSt9type_infol(ptr noundef %i.o, ptr noundef nonnull @_ZTI4Enum, i64 noundef %i.p) #16
  br label %_ZZN8nanobind6detail11func_createILb1ELb1EZNS_12cpp_functionI12EnumProperty4EnumS3_JEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNS7_5valueE6EEEEEENS_6objectEMT1_FT0_DpT2_EDpRKT3_EUlPS3_E_S4_JSM_EJLm0EEJS5_S6_SA_EEEP7_objectOSC_PFT2_DpSI_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSP_jPNS0_12cleanup_listEE_clES11_S12_jS14_.exit

_ZZN8nanobind6detail11func_createILb1ELb1EZNS_12cpp_functionI12EnumProperty4EnumS3_JEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNS7_5valueE6EEEEEENS_6objectEMT1_FT0_DpT2_EDpRKT3_EUlPS3_E_S4_JSM_EJLm0EEJS5_S6_SA_EEEP7_objectOSC_PFT2_DpSI_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSP_jPNS0_12cleanup_listEE_clES11_S12_jS14_.exit: ; preds = %bb.a, %_ZZN8nanobind12cpp_functionI12EnumProperty4EnumS1_JEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNS5_5valueE6EEEEEENS_6objectEMT1_FT0_DpT2_EDpRKT3_ENKUlPS1_E_clESK_.exit
  %.0.i = phi ptr [ %i.q, %_ZZN8nanobind12cpp_functionI12EnumProperty4EnumS1_JEJNS_9is_methodENS_9is_getterENS_9rv_policy10policy_tagILNS5_5valueE6EEEEEENS_6objectEMT1_FT0_DpT2_EDpRKT3_ENKUlPS1_E_clESK_.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb1ELb1ERZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_1610OpaqueEnumJRNS_6objectEEJLm0EEJNS_9is_getterENS_9rv_policy10policy_tagILNS9_5valueE5EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.161", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !10
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_6objectEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr %i.b, i32 noundef %2, ptr noundef %3) #16
  br i1 %i.c, label %_ZN8nanobind6detail12infer_policyI10OpaqueEnumEENS_9rv_policyES3_.exit, label %"_ZZN8nanobind6detail11func_createILb1ELb1ERZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_1610OpaqueEnumJRNS_6objectEEJLm0EEJNS_9is_getterENS_9rv_policy10policy_tagILNS9_5valueE5EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit"

_ZN8nanobind6detail12infer_policyI10OpaqueEnumEENS_9rv_policyES3_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !44
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !12
  %i.e = call noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef %i.d, ptr noundef nonnull @_ZTI10OpaqueEnum, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i8 4, ptr noundef %3, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %"_ZZN8nanobind6detail11func_createILb1ELb1ERZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_1610OpaqueEnumJRNS_6objectEEJLm0EEJNS_9is_getterENS_9rv_policy10policy_tagILNS9_5valueE5EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit"

"_ZZN8nanobind6detail11func_createILb1ELb1ERZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_1610OpaqueEnumJRNS_6objectEEJLm0EEJNS_9is_getterENS_9rv_policy10policy_tagILNS9_5valueE5EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit": ; preds = %bb.a, %_ZN8nanobind6detail12infer_policyI10OpaqueEnumEENS_9rv_policyES3_.exit
  %.0.i = phi ptr [ %i.e, %_ZN8nanobind6detail12infer_policyI10OpaqueEnumEENS_9rv_policyES3_.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_6objectEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::handle", align 8  ; 4 uses
  %5 = alloca %"class.nanobind::object", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !13
  %i.b = add i32 %i.a, 1                          ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.b, ptr %1, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.d = load ptr, ptr %0, align 8, !tbaa !17
  store ptr %i.d, ptr %4, align 8, !tbaa !17
  store ptr %1, ptr %0, align 8, !tbaa !17
  store ptr null, ptr %5, align 8, !tbaa !17
  %i.e = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i1 true
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb1ELb1ERZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_1710OpaqueEnumJRNS_6objectEEJLm0EEJNS_9is_getterENS_9rv_policy10policy_tagILNS9_5valueE5EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.161", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !10
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_6objectEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr %i.b, i32 noundef %2, ptr noundef %3) #16
  br i1 %i.c, label %_ZN8nanobind6detail12infer_policyI10OpaqueEnumEENS_9rv_policyES3_.exit.i, label %"_ZZN8nanobind6detail11func_createILb1ELb1ERZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_1710OpaqueEnumJRNS_6objectEEJLm0EEJNS_9is_getterENS_9rv_policy10policy_tagILNS9_5valueE5EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit"

_ZN8nanobind6detail12infer_policyI10OpaqueEnumEENS_9rv_policyES3_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 1, ptr %i.a, align 4, !tbaa !44
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !12
  %i.e = call noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef %i.d, ptr noundef nonnull @_ZTI10OpaqueEnum, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i8 4, ptr noundef %3, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %"_ZZN8nanobind6detail11func_createILb1ELb1ERZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_1710OpaqueEnumJRNS_6objectEEJLm0EEJNS_9is_getterENS_9rv_policy10policy_tagILNS9_5valueE5EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit"

"_ZZN8nanobind6detail11func_createILb1ELb1ERZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_1710OpaqueEnumJRNS_6objectEEJLm0EEJNS_9is_getterENS_9rv_policy10policy_tagILNS9_5valueE5EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit": ; preds = %bb.a, %_ZN8nanobind6detail12infer_policyI10OpaqueEnumEENS_9rv_policyES3_.exit.i
  %.0.i = phi ptr [ %i.e, %_ZN8nanobind6detail12infer_policyI10OpaqueEnumEENS_9rv_policyES3_.exit.i ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_I10OpaqueEnumJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS6_EEE_vJSF_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSL_jPNS0_12cleanup_listEE_8__invokeESZ_S10_jS12_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #13 comdat align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.175", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !17
  %i.b = load ptr, ptr %1, align 8, !tbaa !10
  %i.c = and i32 %2, -2
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_18pointer_and_handleI10OpaqueEnumEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %i.b, i32 noundef %i.c, ptr noundef %3) #16
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_I10OpaqueEnumJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS6_EEE_vJSF_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %4, align 8
  store i32 0, ptr %.sroa.0.0.copyload.i, align 4, !tbaa !44
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_I10OpaqueEnumJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS6_EEE_vJSF_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJEE7executeINS_6class_I10OpaqueEnumJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleIS6_EEE_vJSF_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSL_jPNS0_12cleanup_listEE_clESZ_S10_jS12_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_18pointer_and_handleI10OpaqueEnumEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::detail::type_caster", align 8 ; 4 uses
  %i.a = and i32 %2, 32
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = ptrtoint ptr %1 to i64
  store i64 %i.c, ptr %i.b, align 8
  %i.d = tail call noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %1) #16
  store ptr %i.d, ptr %0, align 8, !tbaa !114
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.e = and i32 %2, 16
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = and i32 %2, -34
  %spec.select.i = select i1 %.not.i, i32 %2, i32 %i.f
  %i.g = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !12
  %i.h = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.g, ptr noundef nonnull @_ZTI10OpaqueEnum, ptr noundef %1, i32 noundef %spec.select.i, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #16 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = ptrtoint ptr %1 to i64
  store i64 %i.j, ptr %i.i, align 8
  %i.k = load ptr, ptr %4, align 8, !tbaa !46
  store ptr %i.k, ptr %0, align 8, !tbaa !114
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1 = phi i1 [ true, %bb.b ], [ %i.h, %bb.e ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_18vJP10OpaqueEnumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSG_jPNS0_12cleanup_listEE_8__invokeESU_SV_jSX_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.185", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !50
  store i8 0, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !10
  %i.e = and i32 %2, -2
  %i.f = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !12
  %i.g = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.f, ptr noundef nonnull @_ZTI10OpaqueEnum, ptr noundef %i.d, i32 noundef %i.e, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #16
  br i1 %i.g, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_18vJP10OpaqueEnumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit"

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.j = and i32 %2, -35
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %i.i, i32 noundef %i.j, ptr noundef %3) #16
  br i1 %i.k, label %bb.c, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_18vJP10OpaqueEnumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit"

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !48
  %i.n = load ptr, ptr %4, align 8, !tbaa !51     ; 3 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !50   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.c
  store ptr %i.n, ptr %5, align 8, !tbaa !51
  %i.s = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.s, ptr %i.m, align 8, !tbaa !13
  %.pr = load i64, ptr %i.b, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = phi ptr [ %i.m, %bb.d ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.u = phi i64 [ %i.p, %bb.d ], [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !50
  store ptr %i.a, ptr %4, align 8, !tbaa !51
  store i64 0, ptr %i.b, align 8, !tbaa !50
  store i8 0, ptr %i.a, align 8, !tbaa !13
  %cond.i = icmp eq i64 %i.u, 1
  br i1 %cond.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4.thread2.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %lhsc.i = load i8, ptr %i.t, align 1
  switch i8 %lhsc.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4.thread2.i [
    i8 88, label %bb.g
    i8 89, label %.fold.split
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4.thread2.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.w = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4.thread2.i
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #21
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit4.thread2.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.w) #17
  br label %.body

.fold.split:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  br label %bb.g

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.fold.split
  %storemerge.i = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ], [ 1, %.fold.split ]
  store i32 %storemerge.i, ptr %i.l, align 4, !tbaa !44
  %6 = icmp eq ptr %i.t, %i.m
  br i1 %6, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_18vJP10OpaqueEnumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.y = load i64, ptr %i.m, align 8, !tbaa !13
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.z) #22
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_18vJP10OpaqueEnumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit"

bb.h:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.x, %bb.f ]
  %i.ab = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.m
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %.body
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !13
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  %i.af = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #22
  br label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit

_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %eh.lpad-body

"_ZZN8nanobind6detail11func_createILb0ELb1EZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_18vJP10OpaqueEnumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit": ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.a, %bb.b
  %.013.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ], [ @_Py_NoneStruct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ @_Py_NoneStruct, %bb.g ]
  %i.aj = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6: ; preds = %"_ZZN8nanobind6detail11func_createILb0ELb1EZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_18vJP10OpaqueEnumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit"
  %i.al = load i64, ptr %i.a, align 8, !tbaa !13
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #22
  br label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit8

_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEEEED2Ev.exit8: ; preds = %"_ZZN8nanobind6detail11func_createILb0ELb1EZL32nanobind_test_enum_ext_exec_implNS_7module_EE4$_18vJP10OpaqueEnumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret ptr %.013.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val5 = load i64, ptr %i.c, align 8, !tbaa !122
  %i.d = and i64 %.val5, 268435456
  %.not9 = icmp eq i64 %i.d, 0
  br i1 %.not9, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.e = invoke ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18
          to label %bb.c unwind label %bb.h       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %.not = icmp ne ptr %i.e, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @PyErr_Clear() #18
          to label %bb.f unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.f = load i64, ptr %i.a, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h) #18
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %bb.e
  %i.i = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #16 ; 0 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit
  %i.l = load i64, ptr %i.g, align 8, !tbaa !13
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.1 = phi i1 [ %.not, %bb.f ], [ false, %bb.a ]
  ret i1 %.1

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #20
  unreachable
}

; Function Attrs: optsize
declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @PyErr_Clear() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !38
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !51
  %i.g = load i64, ptr %i.a, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.h, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.i = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %1, align 1, !tbaa !13
  store i8 %i.j, ptr %i.i, align 1, !tbaa !13
  br label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.d, i1 false)
  br label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.k = load i64, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !50
  %i.m = load ptr, ptr %0, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZNK8nanobind6detail3op_ILNS0_5op_idE25ELNS0_7op_typeE0ENS0_6self_tES4_E7executeINS_6class_I10OpaqueEnumJEEEJEEEvRT_DpRKT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %2 = alloca %"struct.nanobind::detail::func_data_init", align 8 ; 11 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
end_hunk_0
