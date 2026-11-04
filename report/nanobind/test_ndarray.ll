Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_ndarray?download=true
inline.NumInlined: 2079
inline.NumDeleted: 1057
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8nanobind7ndarrayIJNS_5numpyEfEEC2EPvSt16initializer_listImENS_6handleES4_IlENS_6dlpack5dtypeEiicm:bb.a
  store ptr %i.l, ptr %i.n, align 8, !tbaa !120
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %4, ptr %i.o, align 8, !tbaa !121
  %i.p = trunc i64 %3 to i32
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 %i.p, ptr %i.q, align 8, !tbaa !133
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %10, ptr %i.r, align 8, !tbaa !122
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 %7, ptr %i.s, align 8, !tbaa !134
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 52
  store i32 %8, ptr %i.t, align 4, !tbaa !135
  store i32 %6, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 60
  store i8 %9, ptr %i.u, align 4, !tbaa !123
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 61
  store i8 0, ptr %i.v, align 1, !tbaa !124
  %i.w = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.x = call noundef ptr @_ZN8nanobind6detail14ndarray_createEPNS0_12nb_internalsEPKNS0_19ndarray_create_argsE(ptr noundef %i.w, ptr noundef nonnull %11) #27 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !159
  %i.y = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef %i.x) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  ret void
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZN8nanobind6detail11nb_type_putEPNS0_12nb_internalsEPKSt9type_infoS5_PvNS_9rv_policyEPNS0_12cleanup_listEPb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSB_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_E_S7_JSP_EJLm0EEJS8_S9_SA_SE_EEEP7_objectOSF_PFT2_DpSL_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSS_jPNS0_12cleanup_listEE_8__invokeES14_S15_jS17_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.729", align 8 ; 4 uses
  %5 = alloca %"class.nanobind::ndarray", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EE3Cls, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSB_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_E_S7_JSP_EJLm0EEJS8_S9_SA_SE_EEEP7_objectOSF_PFT2_DpSL_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.val = load ptr, ptr %4, align 8, !tbaa !157
  %.unpack.i = load i64, ptr %0, align 8, !tbaa !431, !noalias !432 ; 3 uses
  %.elt2.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.unpack3.i = load i64, ptr %.elt2.i, align 8, !tbaa !431, !noalias !432
  %i.e = getelementptr inbounds i8, ptr %.val, i64 %.unpack3.i ; 2 uses
  %i.f = and i64 %.unpack.i, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !56, !noalias !432
  %i.h = getelementptr i8, ptr %i.g, i64 %.unpack.i
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load ptr, ptr %i.i, align 8, !noalias !432, !nosanitize !104
  br label %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNS9_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_E_clESN_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = inttoptr i64 %.unpack.i to ptr
  br label %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNS9_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_E_clESN_.exit

_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNS9_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_E_clESN_.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::ndarray") align 8 %5, ptr noundef nonnull align 4 dereferenceable(40) %i.e) #27, !inline_history !429
  %i.m = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.n = load ptr, ptr %5, align 8, !tbaa !159
  %i.o = call noundef ptr @_ZN8nanobind6detail14ndarray_exportEPNS0_12nb_internalsEPNS0_14ndarray_handleEiNS_9rv_policyEPNS0_12cleanup_listE(ptr noundef %i.m, ptr noundef %i.n, i32 noundef 1, i8 6, ptr noundef %3) #24
  %i.p = load ptr, ptr %5, align 8, !tbaa !159
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSB_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_E_S7_JSP_EJLm0EEJS8_S9_SA_SE_EEEP7_objectOSF_PFT2_DpSL_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSB_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_E_S7_JSP_EJLm0EEJS8_S9_SA_SE_EEEP7_objectOSF_PFT2_DpSL_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSS_jPNS0_12cleanup_listEE_clES14_S15_jS17_.exit: ; preds = %bb.a, %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNS9_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_E_clESN_.exit
  %.0.i = phi ptr [ %i.o, %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNS9_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_E_clESN_.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSC_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_S8_E_S7_JSQ_S8_EJLm0ELm1EEJS9_SA_SB_SF_EEEP7_objectOSG_PFT2_DpSM_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPST_jPNS0_12cleanup_listEE_8__invokeES15_S16_jS18_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.743", align 8 ; 5 uses
  %5 = alloca %"class.nanobind::ndarray", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !13
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTIZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EE3Cls, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSC_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_S8_E_S7_JSQ_S8_EJLm0ELm1EEJS9_SA_SB_SF_EEEP7_objectOSG_PFT2_DpSM_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  store ptr %i.g, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %.val = load ptr, ptr %i.a, align 8, !tbaa !157
  %.unpack.i = load i64, ptr %0, align 8, !tbaa !437, !noalias !438 ; 3 uses
  %.elt3.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.unpack4.i = load i64, ptr %.elt3.i, align 8, !tbaa !437, !noalias !438
  %i.h = getelementptr inbounds i8, ptr %.val, i64 %.unpack4.i ; 2 uses
  %i.i = and i64 %.unpack.i, 1
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !56, !noalias !438
  %i.k = getelementptr i8, ptr %i.j, i64 %.unpack.i
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load ptr, ptr %i.l, align 8, !noalias !438, !nosanitize !104
  br label %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSA_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_S6_E_clESO_S6_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = inttoptr i64 %.unpack.i to ptr
  br label %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSA_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_S6_E_clESO_S6_.exit

_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSA_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_S6_E_clESO_S6_.exit: ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.m, %bb.c ], [ %i.n, %bb.d ]
  call void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::ndarray") align 8 %5, ptr noundef nonnull align 4 dereferenceable(40) %i.h, ptr %i.g) #27, !inline_history !435
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.q = load ptr, ptr %5, align 8, !tbaa !159
  %i.r = call noundef ptr @_ZN8nanobind6detail14ndarray_exportEPNS0_12nb_internalsEPNS0_14ndarray_handleEiNS_9rv_policyEPNS0_12cleanup_listE(ptr noundef %i.p, ptr noundef %i.q, i32 noundef 1, i8 6, ptr noundef %3) #24
  %i.s = load ptr, ptr %5, align 8, !tbaa !159
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.s) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSC_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_S8_E_S7_JSQ_S8_EJLm0ELm1EEJS9_SA_SB_SF_EEEP7_objectOSG_PFT2_DpSM_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES4_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSC_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_EUlPS4_S8_E_S7_JSQ_S8_EJLm0ELm1EEJS9_SA_SB_SF_EEEP7_objectOSG_PFT2_DpSM_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPST_jPNS0_12cleanup_listEE_clES15_S16_jS18_.exit: ; preds = %bb.a, %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSA_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_S6_E_clESO_S6_.exit
  %.0.i = phi ptr [ %i.r, %_ZZN8nanobind16cpp_function_defIZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE3ClsNS_7ndarrayIJNS_5numpyEfEEES2_JNS_6handleEEJNS_5scopeENS_4nameENS_9is_methodENS_9rv_policy10policy_tagILNSA_5valueE6EEEEEEvMT1_FT0_DpT2_EDpRKT3_ENKUlPS2_S6_E_clESO_S6_.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_77vJNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::ndarray_view.749", align 8 ; 3 uses
  %5 = alloca %"struct.nanobind::detail::tuple.220", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #24
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_77vJNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.e, align 8, !tbaa !25
  %.sroa.74.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.74.8.copyload = load i32, ptr %.sroa.74.8..sroa_idx, align 8, !tbaa !24
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 28
  %.sroa.8.8.copyload = load i32, ptr %.sroa.8.8..sroa_idx, align 4
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !tbaa !53 ; 2 uses
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10.8.copyload = load ptr, ptr %.sroa.10.8..sroa_idx, align 8, !tbaa !53
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.11.8.copyload = load i64, ptr %.sroa.11.8..sroa_idx, align 8, !tbaa !27
  store ptr null, ptr %5, align 8, !tbaa !58
  %i.f = icmp eq i32 %.sroa.74.8.copyload, 2
  %or.cond4.i = icmp eq i32 %.sroa.8.8.copyload, 73730
  %or.cond.i = select i1 %i.f, i1 %or.cond4.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_77clENS_7ndarrayIJEEE.exit"

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.5.8.copyload, i64 %.sroa.11.8.copyload
  %scevgep13.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.h = load i64, ptr %.sroa.9.8.copyload, align 8, !tbaa !27 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.8.copyload, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = load <2 x i64>, ptr %.sroa.10.8.copyload, align 8, !tbaa !27
  store <2 x i64> %i.k, ptr %scevgep13.i.i, align 8, !tbaa !27
  %.not.i = icmp eq i64 %i.h, 0
  %.not10.i = icmp eq i64 %i.j, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %.not10.i
  br i1 %or.cond, label %._crit_edge9.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %._crit_edge.i
  %.068.i = phi i64 [ %i.l, %._crit_edge.i ], [ 0, %bb.c ] ; 2 uses
  br label %bb.d

._crit_edge9.split.i:                             ; preds = %._crit_edge.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_77clENS_7ndarrayIJEEE.exit"

._crit_edge.i:                                    ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i
  %i.l = add nuw i64 %.068.i, 1                   ; 2 uses
  %exitcond11.not.i = icmp eq i64 %i.l, %i.h
  br i1 %exitcond11.not.i, label %._crit_edge9.split.i, label %.preheader.i, !llvm.loop !439

bb.d:                                             ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i, %.preheader.i
  %.07.i = phi i64 [ 0, %.preheader.i ], [ %i.t, %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %6 = phi i1 [ true, %bb.d ], [ false, %bb.e ]
  %.0.i6.i.sroa.phi.sroa.speculated = phi i64 [ %.068.i, %bb.d ], [ %.07.i, %bb.e ]
  %.0.i6.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ]
  %.08.i5.i = phi i64 [ 0, %bb.d ], [ %i.p, %bb.e ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %scevgep13.i.i, i64 %.0.i6.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = mul nsw i64 %i.n, %.0.i6.i.sroa.phi.sroa.speculated
  %i.p = add nsw i64 %i.o, %.08.i5.i              ; 2 uses
  br i1 %6, label %bb.e, label %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i, !llvm.loop !1

_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i: ; preds = %bb.e
  %i.q = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.p ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !109
  %i.s = fmul float %i.r, 2.000000e+00
  store float %i.s, ptr %i.q, align 4, !tbaa !109
  %i.t = add nuw i64 %.07.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.j
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !440

"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_77clENS_7ndarrayIJEEE.exit": ; preds = %._crit_edge9.split.i, %bb.b
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_77vJNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_77vJNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit": ; preds = %bb.a, %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_77clENS_7ndarrayIJEEE.exit"
  %.0.i = phi ptr [ @_Py_NoneStruct, %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_77clENS_7ndarrayIJEEE.exit" ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.u = load ptr, ptr %5, align 8, !tbaa !58
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.u) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_78vJNS_7ndarrayIJfNS0_5shapeIJLln1ELln1EEEENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSF_jPNS0_12cleanup_listEE_8__invokeEST_SU_jSW_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::ndarray_view.749", align 8 ; 3 uses
  %5 = alloca %"struct.nanobind::detail::tuple.755", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS0_5shapeIJLln1ELln1EEEENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #24
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_78vJNS_7ndarrayIJfNS0_5shapeIJLln1ELln1EEEENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSF_jPNS0_12cleanup_listEE_clEST_SU_jSW_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !161
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.e, align 8, !tbaa !25
  %.sroa.74.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.74.8.copyload = load ptr, ptr %.sroa.74.8..sroa_idx, align 8, !tbaa !53 ; 2 uses
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.8.8.copyload = load ptr, ptr %.sroa.8.8..sroa_idx, align 8, !tbaa !53
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.9.8.copyload = load i64, ptr %.sroa.9.8..sroa_idx, align 8, !tbaa !27
  store ptr null, ptr %5, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.5.8.copyload, i64 %.sroa.9.8.copyload
  %scevgep13.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.g = load i64, ptr %.sroa.74.8.copyload, align 8, !tbaa !27 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.74.8.copyload, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = load <2 x i64>, ptr %.sroa.8.8.copyload, align 8, !tbaa !27
  store <2 x i64> %i.j, ptr %scevgep13.i.i, align 8, !tbaa !27
  %.not.i = icmp eq i64 %i.g, 0
  %.not6.i = icmp eq i64 %i.i, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %.not6.i
  br i1 %or.cond, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %._crit_edge.i
  %.084.i = phi i64 [ %i.l, %._crit_edge.i ], [ 0, %bb.b ] ; 3 uses
  %i.k = mul i64 %.084.i, 10
  br label %bb.c

._crit_edge.i:                                    ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i
  %i.l = add nuw i64 %.084.i, 1                   ; 2 uses
  %exitcond7.not.i = icmp eq i64 %i.l, %i.g
  br i1 %exitcond7.not.i, label %.loopexit, label %.preheader.i, !llvm.loop !441

bb.c:                                             ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i, %.preheader.i
  %.03.i = phi i64 [ 0, %.preheader.i ], [ %i.t, %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %6 = phi i1 [ true, %bb.c ], [ false, %bb.d ]
  %.0.i2.i.sroa.phi.sroa.speculated = phi i64 [ %.084.i, %bb.c ], [ %.03.i, %bb.d ]
  %.0.i2.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ]
  %.08.i1.i = phi i64 [ 0, %bb.c ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %scevgep13.i.i, i64 %.0.i2.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = mul nsw i64 %i.n, %.0.i2.i.sroa.phi.sroa.speculated
  %i.p = add nsw i64 %i.o, %.08.i1.i              ; 2 uses
  br i1 %6, label %bb.d, label %_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i, !llvm.loop !1

_ZNK8nanobind12ndarray_viewIfLm2ELc0EEclIJmmEEERfDpT_.exit.i: ; preds = %bb.d
  %i.q = add i64 %.03.i, %i.k
  %i.r = uitofp i64 %i.q to float
  %i.s = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p
  store float %i.r, ptr %i.s, align 4, !tbaa !109
  %i.t = add nuw i64 %.03.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.c, !llvm.loop !442

.loopexit:                                        ; preds = %._crit_edge.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_78vJNS_7ndarrayIJfNS0_5shapeIJLln1ELln1EEEENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSF_jPNS0_12cleanup_listEE_clEST_SU_jSW_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_78vJNS_7ndarrayIJfNS0_5shapeIJLln1ELln1EEEENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSF_jPNS0_12cleanup_listEE_clEST_SU_jSW_.exit": ; preds = %bb.a, %.loopexit
  %.0.i = phi ptr [ @_Py_NoneStruct, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.u = load ptr, ptr %5, align 8, !tbaa !161
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.u) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS0_5shapeIJLln1ELln1EEEENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 4 uses
  %4 = alloca %"struct.nanobind::detail::ndarray_config", align 16 ; 7 uses
  %i.b = icmp ne ptr %1, @_Py_NoneStruct
  %i.c = and i32 %2, 4
  %.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !161
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef null) #24
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store <4 x i32> <i32 0, i32 1, i32 2, i32 73730>, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 0, ptr %i.e, align 16, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 -1, i64 16, i1 false)
  store ptr %i.a, ptr %i.g, align 8, !tbaa !51
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.i = trunc i32 %2 to i1
  %i.j = call noundef ptr @_ZN8nanobind6detail14ndarray_importEPNS0_12nb_internalsEP7_objectPKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %i.i, ptr noundef %3) #24 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !444    ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.e, label %bb.d, !prof !52

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.k) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp ne ptr %i.j, null                   ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !prof !52

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.j) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !444
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.l, %bb.g ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_79vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSG_jPNS0_12cleanup_listEE_8__invokeESU_SV_jSX_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::ndarray_view.770", align 8 ; 3 uses
  %5 = alloca %"struct.nanobind::detail::tuple.765", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8c_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #24
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_79vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !163
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.e, align 8, !tbaa !25
  %.sroa.74.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.74.8.copyload = load i64, ptr %.sroa.74.8..sroa_idx, align 8, !tbaa !27
  store ptr null, ptr %5, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.5.8.copyload, i64 %.sroa.74.8.copyload
  %scevgep15.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store <2 x i64> <i64 4, i64 1>, ptr %scevgep15.i.i, align 8, !tbaa !27
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.b
  %.084.i = phi i64 [ 0, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.g = mul nuw nsw i64 %.084.i, 10
  br label %bb.d

bb.c:                                             ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc67EEclIJmmEEERfDpT_.exit.i
  %i.h = add nuw nsw i64 %.084.i, 1               ; 2 uses
  %exitcond5.not.i = icmp eq i64 %i.h, 3
  br i1 %exitcond5.not.i, label %bb.f, label %.preheader.i, !llvm.loop !445

bb.d:                                             ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc67EEclIJmmEEERfDpT_.exit.i, %.preheader.i
  %.03.i = phi i64 [ 0, %.preheader.i ], [ %i.p, %_ZNK8nanobind12ndarray_viewIfLm2ELc67EEclIJmmEEERfDpT_.exit.i ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %6 = phi i1 [ true, %bb.d ], [ false, %bb.e ]
  %.0.i2.i.sroa.phi.sroa.speculated = phi i64 [ %.084.i, %bb.d ], [ %.03.i, %bb.e ]
  %.0.i2.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ]
  %.08.i1.i = phi i64 [ 0, %bb.d ], [ %i.l, %bb.e ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %scevgep15.i.i, i64 %.0.i2.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = mul nsw i64 %i.j, %.0.i2.i.sroa.phi.sroa.speculated
  %i.l = add nsw i64 %i.k, %.08.i1.i              ; 2 uses
  br i1 %6, label %bb.e, label %_ZNK8nanobind12ndarray_viewIfLm2ELc67EEclIJmmEEERfDpT_.exit.i, !llvm.loop !446

_ZNK8nanobind12ndarray_viewIfLm2ELc67EEclIJmmEEERfDpT_.exit.i: ; preds = %bb.e
  %i.m = add nuw nsw i64 %.03.i, %i.g
  %i.n = uitofp nneg i64 %i.m to float
  %i.o = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.l
  store float %i.n, ptr %i.o, align 4, !tbaa !109
  %i.p = add nuw nsw i64 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, 4
  br i1 %exitcond.not.i, label %bb.c, label %bb.d, !llvm.loop !447

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_79vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_79vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit": ; preds = %bb.a, %bb.f
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.q = load ptr, ptr %5, align 8, !tbaa !163
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8c_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 4 uses
  %4 = alloca %"struct.nanobind::detail::ndarray_config", align 16 ; 7 uses
  %i.b = icmp ne ptr %1, @_Py_NoneStruct
  %i.c = and i32 %2, 4
  %.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !163
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef null) #24
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store <4 x i32> <i32 0, i32 1, i32 2, i32 73730>, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 67, ptr %i.e, align 16, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x i64> <i64 3, i64 4>, ptr %i.a, align 16, !tbaa !27
  store ptr %i.a, ptr %i.g, align 8, !tbaa !51
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.i = trunc i32 %2 to i1
  %i.j = call noundef ptr @_ZN8nanobind6detail14ndarray_importEPNS0_12nb_internalsEP7_objectPKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %i.i, ptr noundef %3) #24 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !449    ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.e, label %bb.d, !prof !52

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.k) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp ne ptr %i.j, null                   ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !prof !52

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.j) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !449
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.l, %bb.g ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_80vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8f_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSG_jPNS0_12cleanup_listEE_8__invokeESU_SV_jSX_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::ndarray_view.782", align 8 ; 3 uses
  %5 = alloca %"struct.nanobind::detail::tuple.776", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8f_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #24
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_80vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8f_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !165
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.e, align 8, !tbaa !25
  %.sroa.74.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.74.8.copyload = load i64, ptr %.sroa.74.8..sroa_idx, align 8, !tbaa !27
  store ptr null, ptr %5, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.5.8.copyload, i64 %.sroa.74.8.copyload
  %scevgep15.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store <2 x i64> <i64 1, i64 3>, ptr %scevgep15.i.i, align 8, !tbaa !27
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.b
  %.084.i = phi i64 [ 0, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.g = mul nuw nsw i64 %.084.i, 10
  br label %bb.d

bb.c:                                             ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc70EEclIJmmEEERfDpT_.exit.i
  %i.h = add nuw nsw i64 %.084.i, 1               ; 2 uses
  %exitcond5.not.i = icmp eq i64 %i.h, 3
  br i1 %exitcond5.not.i, label %bb.f, label %.preheader.i, !llvm.loop !450

bb.d:                                             ; preds = %_ZNK8nanobind12ndarray_viewIfLm2ELc70EEclIJmmEEERfDpT_.exit.i, %.preheader.i
  %.03.i = phi i64 [ 0, %.preheader.i ], [ %i.p, %_ZNK8nanobind12ndarray_viewIfLm2ELc70EEclIJmmEEERfDpT_.exit.i ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %6 = phi i1 [ true, %bb.d ], [ false, %bb.e ]
  %.0.i2.i.sroa.phi.sroa.speculated = phi i64 [ %.084.i, %bb.d ], [ %.03.i, %bb.e ]
  %.0.i2.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ]
  %.08.i1.i = phi i64 [ 0, %bb.d ], [ %i.l, %bb.e ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %scevgep15.i.i, i64 %.0.i2.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = mul nsw i64 %i.j, %.0.i2.i.sroa.phi.sroa.speculated
  %i.l = add nsw i64 %i.k, %.08.i1.i              ; 2 uses
  br i1 %6, label %bb.e, label %_ZNK8nanobind12ndarray_viewIfLm2ELc70EEclIJmmEEERfDpT_.exit.i, !llvm.loop !451

_ZNK8nanobind12ndarray_viewIfLm2ELc70EEclIJmmEEERfDpT_.exit.i: ; preds = %bb.e
  %i.m = add nuw nsw i64 %.03.i, %i.g
  %i.n = uitofp nneg i64 %i.m to float
  %i.o = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.l
  store float %i.n, ptr %i.o, align 4, !tbaa !109
  %i.p = add nuw nsw i64 %.03.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.p, 4
  br i1 %exitcond.not.i, label %bb.c, label %bb.d, !llvm.loop !452

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_80vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8f_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_80vJNS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8f_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSG_jPNS0_12cleanup_listEE_clESU_SV_jSX_.exit": ; preds = %bb.a, %bb.f
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.q = load ptr, ptr %5, align 8, !tbaa !165
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.q) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS0_5shapeIJLl3ELl4EEEENS_8f_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 4 uses
  %4 = alloca %"struct.nanobind::detail::ndarray_config", align 16 ; 7 uses
  %i.b = icmp ne ptr %1, @_Py_NoneStruct
  %i.c = and i32 %2, 4
  %.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !165
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef null) #24
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store <4 x i32> <i32 0, i32 1, i32 2, i32 73730>, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 70, ptr %i.e, align 16, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x i64> <i64 3, i64 4>, ptr %i.a, align 16, !tbaa !27
  store ptr %i.a, ptr %i.g, align 8, !tbaa !51
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.i = trunc i32 %2 to i1
  %i.j = call noundef ptr @_ZN8nanobind6detail14ndarray_importEPNS0_12nb_internalsEP7_objectPKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %i.i, ptr noundef %3) #24 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !454    ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.e, label %bb.d, !prof !52

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.k) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp ne ptr %i.j, null                   ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !prof !52

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.j) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !454
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.l, %bb.g ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_81vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSI_jPNS0_12cleanup_listEE_8__invokeESW_SX_jSZ_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::ndarray_view.792", align 8 ; 3 uses
  %5 = alloca %"struct.nanobind::detail::tuple.787", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #24
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_81vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSI_jPNS0_12cleanup_listEE_clESW_SX_jSZ_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !167
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.e, align 8, !tbaa !25
  %.sroa.74.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.74.8.copyload = load i64, ptr %.sroa.74.8..sroa_idx, align 8, !tbaa !27
  store ptr null, ptr %5, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.5.8.copyload, i64 %.sroa.74.8.copyload
  %scevgep15.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store <2 x i64> <i64 2, i64 1>, ptr %scevgep15.i.i, align 8, !tbaa !27
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.b
  %i.g = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %.064.i = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i
  br i1 %i.g, label %.preheader.i, label %bb.h, !llvm.loop !455

bb.d:                                             ; preds = %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i, %.preheader.i
  %i.h = phi i1 [ true, %.preheader.i ], [ false, %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i ]
  %.03.i = phi i64 [ 0, %.preheader.i ], [ 1, %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %6 = phi i1 [ true, %bb.d ], [ false, %bb.e ]
  %.0.i2.i.sroa.phi.sroa.speculated = phi i64 [ %.064.i, %bb.d ], [ %.03.i, %bb.e ]
  %.0.i2.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ]
  %.08.i1.i = phi i64 [ 0, %bb.d ], [ %i.l, %bb.e ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %scevgep15.i.i, i64 %.0.i2.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = mul nuw nsw i64 %i.j, %.0.i2.i.sroa.phi.sroa.speculated
  %i.l = add nsw i64 %i.k, %.08.i1.i              ; 2 uses
  br i1 %6, label %bb.e, label %_ZNK8nanobind12ndarray_viewISt7complexIfELm2ELc67EEclIJmmEEERS2_DpT_.exit.i, !llvm.loop !456

_ZNK8nanobind12ndarray_viewISt7complexIfELm2ELc67EEclIJmmEEERS2_DpT_.exit.i: ; preds = %bb.e
  %i.m = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.l ; 3 uses
  %i.n = load float, ptr %i.m, align 4            ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load float, ptr %i.o, align 4            ; 3 uses
  %i.q = fneg float %i.n
  %i.r = fmul float %i.p, 2.000000e+00
  %i.s = fmul float %i.n, 2.000000e+00
  %i.t = insertelement <2 x float> poison, float %i.q, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.s, i64 1
  %i.v = insertelement <2 x float> poison, float %i.r, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.p, i64 1
  %i.x = fsub <2 x float> %i.u, %i.w              ; 4 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  %i.z = fcmp uno float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.f, label %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i, !prof !458

bb.f:                                             ; preds = %_ZNK8nanobind12ndarray_viewISt7complexIfELm2ELc67EEclIJmmEEERS2_DpT_.exit.i
  %i.aa = extractelement <2 x float> %i.x, i64 1
  %i.ab = fcmp uno float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.g, label %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i, !prof !458

bb.g:                                             ; preds = %bb.f
  %i.ac = call noundef <2 x float> @__mulsc3(float noundef %i.n, float noundef %i.p, float noundef -1.000000e+00, float noundef 2.000000e+00) #24
  br label %_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i

_ZNSt7complexIfEmLIfEERS0_RKS_IT_E.exit.i:        ; preds = %bb.g, %bb.f, %_ZNK8nanobind12ndarray_viewISt7complexIfELm2ELc67EEclIJmmEEERS2_DpT_.exit.i
  %i.ad = phi <2 x float> [ %i.x, %_ZNK8nanobind12ndarray_viewISt7complexIfELm2ELc67EEclIJmmEEERS2_DpT_.exit.i ], [ %i.x, %bb.f ], [ %i.ac, %bb.g ]
  store <2 x float> %i.ad, ptr %i.m, align 4
  br i1 %i.h, label %bb.d, label %bb.c, !llvm.loop !457

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_81vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSI_jPNS0_12cleanup_listEE_clESW_SX_jSZ_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_81vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSI_jPNS0_12cleanup_listEE_clESW_SX_jSZ_.exit": ; preds = %bb.a, %bb.h
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.ae = load ptr, ptr %5, align 8, !tbaa !167
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.ae) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 4 uses
  %4 = alloca %"struct.nanobind::detail::ndarray_config", align 16 ; 7 uses
  %i.b = icmp ne ptr %1, @_Py_NoneStruct
  %i.c = and i32 %2, 4
  %.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !167
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef null) #24
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store <4 x i32> <i32 0, i32 1, i32 2, i32 81925>, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 67, ptr %i.e, align 16, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x i64> splat (i64 2), ptr %i.a, align 16, !tbaa !27
  store ptr %i.a, ptr %i.g, align 8, !tbaa !51
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.i = trunc i32 %2 to i1
  %i.j = call noundef ptr @_ZN8nanobind6detail14ndarray_importEPNS0_12nb_internalsEP7_objectPKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %i.i, ptr noundef %3) #24 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !460    ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.e, label %bb.d, !prof !52

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.k) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp ne ptr %i.j, null                   ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !prof !52

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.j) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !460
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.l, %bb.g ]
  ret i1 %.0
}

declare <2 x float> @__mulsc3(float, float, float, float) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_82vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSI_jPNS0_12cleanup_listEE_8__invokeESW_SX_jSZ_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.787", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #24
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_82vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSI_jPNS0_12cleanup_listEE_clESW_SX_jSZ_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !167
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.e, align 8, !tbaa !25
  %.sroa.74.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.74.8.copyload = load i64, ptr %.sroa.74.8..sroa_idx, align 8, !tbaa !27
  store ptr null, ptr %4, align 8, !tbaa !167
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.5.8.copyload, i64 %.sroa.74.8.copyload
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.b
  %.05.i = phi i64 [ 0, %bb.b ], [ %i.j, %.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i ; 2 uses
  %i.h = load <2 x float>, ptr %i.g, align 4, !tbaa !109
  %i.i = fneg <2 x float> %i.h
  store <2 x float> %i.i, ptr %i.g, align 4, !tbaa !16
  %i.j = add nuw nsw i64 %.05.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, 4
  br i1 %exitcond.not.i, label %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_82clENS_7ndarrayIJSt7complexIfENS_6detail5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEE.exit", label %.preheader.i, !llvm.loop !461

"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_82clENS_7ndarrayIJSt7complexIfENS_6detail5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEE.exit": ; preds = %.preheader.i
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_82vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSI_jPNS0_12cleanup_listEE_clESW_SX_jSZ_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_82vJNS_7ndarrayIJSt7complexIfENS0_5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSI_jPNS0_12cleanup_listEE_clESW_SX_jSZ_.exit": ; preds = %bb.a, %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_82clENS_7ndarrayIJSt7complexIfENS_6detail5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEE.exit"
  %.0.i = phi ptr [ @_Py_NoneStruct, %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_82clENS_7ndarrayIJSt7complexIfENS_6detail5shapeIJLl2ELl2EEEENS_8c_contigENS_6device3cpuEEEE.exit" ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.k = load ptr, ptr %4, align 8, !tbaa !167
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.k) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_83NS_7ndarrayIJNS_5numpyEEEEJbEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSA_jPNS0_12cleanup_listEE_8__invokeESO_SP_jSR_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::ndarray_create_args", align 8 ; 8 uses
  %5 = alloca %"struct.nanobind::detail::ndarray_create_args", align 8 ; 8 uses
  %6 = alloca %"class.nanobind::ndarray.805", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.b = icmp eq ptr %i.a, @_Py_TrueStruct
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.a, @_Py_FalseStruct
  br i1 %i.c, label %bb.d, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_83NS_7ndarrayIJNS_5numpyEEEEJbEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSA_jPNS0_12cleanup_listEE_clESO_SP_jSR_.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !464
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 44
  store ptr @_ZL8f_global, ptr %5, align 8, !tbaa !118, !noalias !464
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.e, i8 0, i64 36, i1 false), !noalias !464
  store <4 x i32> <i32 0, i32 0, i32 0, i32 73730>, ptr %i.d, align 4, !noalias !464
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 60
  store i8 0, ptr %i.f, align 4, !tbaa !123, !noalias !464
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 61
  store i8 0, ptr %i.g, align 1, !tbaa !124, !noalias !464
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15, !noalias !464
  %i.i = call noundef ptr @_ZN8nanobind6detail14ndarray_createEPNS0_12nb_internalsEPKNS0_19ndarray_create_argsE(ptr noundef %i.h, ptr noundef nonnull %5) #27, !noalias !464 ; 4 uses
  %i.j = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef %i.i) #24, !noalias !464 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !464
  store ptr %i.i, ptr %6, align 8, !tbaa !466, !alias.scope !464
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_83clEb.exit", label %_ZN8nanobind7ndarrayIJNS_5numpyEEEC2IJS1_fNS_6detail5shapeIJEEEEEERKNS0_IJDpT_EEE.exit.sink.split.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !464
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  store ptr @_ZL8i_global, ptr %4, align 8, !tbaa !118, !noalias !464
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.m, i8 0, i64 36, i1 false), !noalias !464
  store <4 x i32> <i32 0, i32 0, i32 0, i32 73728>, ptr %i.l, align 4, !noalias !464
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 60
  store i8 0, ptr %i.n, align 4, !tbaa !123, !noalias !464
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 61
end_hunk_0
